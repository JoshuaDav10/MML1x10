#!/usr/bin/env python3
"""
Final script to properly reorder YAML function entries by address
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
    
    # Extract all entries in the subsegments section
    all_entries = []
    for i in range(subsegments_start, subsegments_end):
        line = lines[i]
        if line.strip():  # Skip empty lines
            all_entries.append((i, line))
    
    print(f"Found {len(all_entries)} total entries in subsegments")
    
    # Separate function entries from other entries
    function_entries = []
    other_entries = []
    
    for orig_line_num, line in all_entries:
        address, full_line = parse_function_entry(line)
        
        if address is not None:
            function_entries.append((address, full_line, orig_line_num))
        else:
            other_entries.append((orig_line_num, line))
    
    print(f"Found {len(function_entries)} function entries")
    print(f"Found {len(other_entries)} other entries")
    
    # Sort function entries by address
    function_entries.sort(key=lambda x: x[0])
    
    # Create a new list of all entries, maintaining relative positions
    # We'll place function entries in sorted order, but maintain the relative
    # positions of other entries
    
    # First, create a list of all entries with their types
    all_entries_with_types = []
    
    # Add function entries in sorted order
    for address, full_line, orig_line_num in function_entries:
        all_entries_with_types.append((full_line, 'function', address))
    
    # Add other entries in their original order
    for orig_line_num, line in other_entries:
        all_entries_with_types.append((line.strip(), 'other', 0))
    
    # Sort by original position to maintain relative order
    all_entries_with_types.sort(key=lambda x: x[1] == 'function')  # Functions first, then others
    
    # Rebuild the file
    new_lines = []
    
    # Copy everything before subsegments
    new_lines.extend(lines[:subsegments_start])
    
    # Add subsegments header
    new_lines.append('    subsegments:\n')
    
    # Add entries in the new order
    for line_content, entry_type, address in all_entries_with_types:
        new_lines.append(f'      {line_content}\n')
    
    # Copy everything after subsegments
    new_lines.extend(lines[subsegments_end:])
    
    # Write the reordered file
    print("Writing reordered file...")
    with open(input_file, 'w') as f:
        f.writelines(new_lines)
    
    print("Reordering complete!")
    
    # Verify the ordering
    print("\nVerifying address ordering...")
    prev_address = 0
    violations = 0
    
    for address, full_line, orig_line_num in function_entries:
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
