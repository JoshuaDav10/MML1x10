#!/usr/bin/env python3
"""
Script to fix address ordering issues in YAML by moving out-of-order functions
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
    
    # Sort function entries by address
    function_entries.sort(key=lambda x: x[1])
    
    # Create new lines array
    new_lines = lines[:]
    
    # Replace function entries in sorted order
    for i, (orig_line_num, address, full_line) in enumerate(function_entries):
        new_line_num = subsegments_start + i
        new_lines[new_line_num] = f'      {full_line}\n'
    
    # Write the fixed file
    print("Writing fixed file...")
    with open(input_file, 'w') as f:
        f.writelines(new_lines)
    
    print("Address ordering fix complete!")
    
    # Verify the ordering
    print("\nVerifying address ordering...")
    prev_address = 0
    violations = 0
    
    for orig_line_num, address, full_line in function_entries:
        if address < prev_address:
            print(f"VIOLATION: {full_line} (address 0x{address:x} < previous 0x{prev_address:x})")
            violations += 1
        prev_address = address
    
    if violations == 0:
        print("✅ All function entries are in correct address order!")
    else:
        print(f"❌ Found {violations} address ordering violations")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
