#!/usr/bin/env python3
"""
Script to fix all address ordering violations in the YAML file
"""
import re
import sys

def parse_function_entry(line):
    """Parse a function entry line and return address and full line"""
    match = re.match(r'^(\s*-\s*\[0x([0-9A-Fa-f]+),\s*c,\s*FUN_800[0-9A-Fa-f]+,\s*0x[0-9A-Fa-f]+\])', line)
    if match:
        address = int(match.group(2), 16)
        return address, line.strip()
    return None, None

def main():
    input_file = 'config/splat.us.rock_neo.yaml'
    
    print("Reading YAML file...")
    with open(input_file, 'r') as f:
        lines = f.readlines()
    
    # Find the main segment and subsegments
    subsegments_start = None
    subsegments_end = None
    
    for i, line in enumerate(lines):
        if line.strip() == 'subsegments:':
            subsegments_start = i + 1
        elif subsegments_start and line.strip() and not line.startswith(' ') and not line.startswith('-'):
            subsegments_end = i
            break
    
    if subsegments_start is None:
        print("Error: Could not find subsegments section")
        return 1
    
    if subsegments_end is None:
        subsegments_end = len(lines)
    
    print(f"Found subsegments section: lines {subsegments_start} to {subsegments_end}")
    
    # Extract function entries with their line numbers
    function_entries = []
    for i in range(subsegments_start, subsegments_end):
        line = lines[i]
        address, full_line = parse_function_entry(line)
        if address is not None:
            function_entries.append((i, address, full_line))
    
    print(f"Found {len(function_entries)} function entries")
    
    # Check for ordering violations and collect them
    violations = []
    prev_address = 0
    prev_line = 0
    
    for line_num, address, full_line in function_entries:
        if address < prev_address:
            violations.append((prev_line, prev_addr, line_num, address, full_line))
        prev_address = address
        prev_line = line_num
    
    print(f"Found {len(violations)} violations to fix")
    
    # Fix violations by moving the out-of-order functions to their correct positions
    new_lines = lines[:]
    
    for prev_line, prev_addr, curr_line, curr_addr, curr_func in violations:
        print(f"Fixing: {curr_func} (0x{curr_addr:x}) should come before line {prev_line} (0x{prev_addr:x})")
        
        # Remove the out-of-order function from its current position
        new_lines[curr_line] = ""
        
        # Find the correct position (before the previous function)
        insert_pos = prev_line
        new_lines.insert(insert_pos, f'      {curr_func}\n')
        
        # Adjust line numbers for subsequent violations
        for i, (p_line, p_addr, c_line, c_addr, c_func) in enumerate(violations):
            if c_line > curr_line:
                violations[i] = (p_line, p_addr, c_line + 1, c_addr, c_func)
    
    # Write the fixed file
    print("Writing fixed file...")
    with open(input_file, 'w') as f:
        f.writelines(new_lines)
    
    print("All violations fixed!")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
