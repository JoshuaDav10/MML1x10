#!/usr/bin/env python3
"""
Simple script to fix YAML ordering violations by sorting segments by address.
"""

import re
import sys

def fix_yaml_ordering(yaml_file):
    print(f"Reading {yaml_file}...")
    
    with open(yaml_file, 'r') as f:
        lines = f.readlines()
    
    # Find the subsegments section
    subsegments_start = None
    subsegments_end = None
    
    for i, line in enumerate(lines):
        if 'subsegments:' in line:
            subsegments_start = i + 1
        elif subsegments_start and line.strip() and not line.startswith(' ') and not line.startswith('\t'):
            subsegments_end = i
            break
    
    if subsegments_start is None:
        print("Could not find subsegments section!")
        return False
    
    if subsegments_end is None:
        subsegments_end = len(lines)
    
    print(f"Found subsegments section: lines {subsegments_start} to {subsegments_end}")
    
    # Extract all segment lines
    segments = []
    for i in range(subsegments_start, subsegments_end):
        line = lines[i].strip()
        if line.startswith('- [0x') and ']' in line:
            # Extract address
            match = re.search(r'0x([0-9a-fA-F]+)', line)
            if match:
                addr = int(match.group(1), 16)
                segments.append((addr, i, line))
    
    print(f"Found {len(segments)} segments")
    
    # Sort by address
    segments.sort(key=lambda x: x[0])
    
    # Check for violations
    violations = []
    for i in range(1, len(segments)):
        if segments[i][0] < segments[i-1][0]:
            violations.append((segments[i-1], segments[i]))
    
    if violations:
        print(f"Found {len(violations)} ordering violations")
        for prev, curr in violations:
            print(f"  {prev[2].strip()} -> {curr[2].strip()}")
    else:
        print("No ordering violations found!")
        return True
    
    # Rebuild the file with sorted segments
    new_lines = lines[:subsegments_start]
    
    # Add sorted segments
    for addr, orig_line, line in segments:
        new_lines.append('      ' + line + '\n')
    
    # Add remaining lines
    new_lines.extend(lines[subsegments_end:])
    
    # Write back
    with open(yaml_file, 'w') as f:
        f.writelines(new_lines)
    
    print(f"Fixed ordering in {yaml_file}")
    return True

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 fix_ordering_simple.py <yaml_file>")
        sys.exit(1)
    
    yaml_file = sys.argv[1]
    fix_yaml_ordering(yaml_file)
