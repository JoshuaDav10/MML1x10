#!/usr/bin/env python3
"""
Final fix: Sort ALL entries by address, not just function entries
"""
import re
import sys

def parse_address(line):
    """Parse any entry line and return address"""
    # Match any entry with an address: - [0xXXXXX, ...]
    match = re.match(r'^(\s*-\s*\[0x([0-9A-Fa-f]+),', line)
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
    
    # Extract ALL entries in the subsegments section
    all_entries = []
    for i in range(subsegments_start, subsegments_end):
        line = lines[i]
        if line.strip():  # Skip empty lines
            all_entries.append((i, line))
    
    print(f"Found {len(all_entries)} total entries in subsegments")
    
    # Parse all entries and sort by address
    entries_with_addresses = []
    for orig_line_num, line in all_entries:
        address, full_line = parse_address(line)
        if address is not None:
            entries_with_addresses.append((address, full_line, orig_line_num))
        else:
            # For entries without addresses, use a very high address to put them at the end
            entries_with_addresses.append((0xFFFFFFFF, full_line, orig_line_num))
    
    print(f"Found {len(entries_with_addresses)} entries with addresses")
    
    # Sort ALL entries by address
    entries_with_addresses.sort(key=lambda x: x[0])
    
    # Create new lines array
    new_lines = lines[:]
    
    # Replace ALL entries in sorted order
    for i, (address, full_line, orig_line_num) in enumerate(entries_with_addresses):
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
    
    for address, full_line, orig_line_num in entries_with_addresses:
        if address < prev_address and address != 0xFFFFFFFF:
            print(f"VIOLATION: {full_line} (address 0x{address:x} < previous 0x{prev_address:x})")
            violations += 1
        prev_address = address
    
    if violations == 0:
        print("✅ All entries are in correct address order!")
    else:
        print(f"❌ Found {violations} address ordering violations")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
