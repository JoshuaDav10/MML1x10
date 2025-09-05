#!/usr/bin/env python3
"""
Script to identify all address ordering issues in the YAML file
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
    
    # Check for ordering violations
    print("\nChecking for address ordering violations...")
    violations = []
    prev_address = 0
    prev_line = 0
    
    for line_num, address, full_line in function_entries:
        if address < prev_address:
            violations.append((prev_line, prev_address, line_num, address, full_line))
        prev_address = address
        prev_line = line_num
    
    if violations:
        print(f"Found {len(violations)} address ordering violations:")
        for prev_line, prev_addr, curr_line, curr_addr, curr_func in violations:
            print(f"  Line {curr_line}: {curr_func} (0x{curr_addr:x}) < Line {prev_line} (0x{prev_addr:x})")
    else:
        print("✅ No address ordering violations found!")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
