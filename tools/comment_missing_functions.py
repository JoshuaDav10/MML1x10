#!/usr/bin/env python3
"""
Missing Function Commenter for Mega Man Legends Decompilation

This script comments out INCLUDE_ASM directives for functions that don't have
corresponding assembly files, allowing the build to proceed.
"""

import re
import os
import argparse
from pathlib import Path

def comment_missing_functions(player_c_path: str, player_asm_dir: str, dry_run: bool = True):
    """Comment out INCLUDE_ASM directives for missing assembly files"""
    
    try:
        # Read player.c
        with open(player_c_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Get list of existing assembly files
        asm_files = []
        if os.path.exists(player_asm_dir):
            for file in os.listdir(player_asm_dir):
                if file.endswith('.s'):
                    asm_files.append(file)
        
        print(f"📁 Found {len(asm_files)} assembly files in {player_asm_dir}")
        
        # Find all INCLUDE_ASM directives
        pattern = r'INCLUDE_ASM\("([^"]+)",\s*([^)]+)\);'
        matches = re.findall(pattern, content)
        
        print(f"🔍 Found {len(matches)} INCLUDE_ASM directives")
        
        # Identify missing functions
        missing_functions = []
        existing_functions = []
        
        for path, func_name in matches:
            # Extract function name from path (e.g., func_8003BE40)
            func_match = re.search(r'func_8003([0-9A-F]{4})', func_name)
            if func_match:
                func_num = func_match.group(1)
                expected_file = f"func_8003{func_num}.s"
                
                if expected_file in asm_files:
                    existing_functions.append(func_name)
                else:
                    missing_functions.append((func_name, expected_file))
        
        print(f"✅ Found {len(existing_functions)} existing functions")
        print(f"❌ Found {len(missing_functions)} missing functions:")
        
        for func_name, expected_file in missing_functions:
            print(f"   {func_name} (missing {expected_file})")
        
        if not dry_run:
            # Comment out missing functions
            new_content = content
            for func_name, expected_file in missing_functions:
                # Find the INCLUDE_ASM line and comment it out
                old_line = f'INCLUDE_ASM("asm/rock_neo/nonmatchings/player", {func_name});'
                new_line = f'// INCLUDE_ASM("asm/rock_neo/nonmatchings/player", {func_name}); // MISSING: {expected_file}'
                
                new_content = new_content.replace(old_line, new_line)
            
            # Write the modified content back
            with open(player_c_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"\n✅ Commented out {len(missing_functions)} missing functions")
        else:
            print(f"\n🔍 Would comment out {len(missing_functions)} missing functions (dry run)")
            
    except Exception as e:
        print(f"❌ Error processing missing functions: {e}")

def main():
    parser = argparse.ArgumentParser(
        description="Missing Function Commenter for Mega Man Legends Decompilation"
    )
    parser.add_argument(
        "--dry-run", 
        action="store_true", 
        default=True,
        help="Show what would be commented out without making changes (default: True)"
    )
    parser.add_argument(
        "--execute", 
        action="store_true", 
        help="Actually comment out missing functions (use with caution!)"
    )
    parser.add_argument(
        "--player-c", 
        default="src/rock_neo/player.c",
        help="Path to player.c file (default: src/rock_neo/player.c)"
    )
    parser.add_argument(
        "--player-asm-dir", 
        default="asm/rock_neo/nonmatchings/player",
        help="Path to player assembly directory (default: asm/rock_neo/nonmatchings/player)"
    )
    
    args = parser.parse_args()
    
    # Determine if this is a dry run
    dry_run = not args.execute
    
    if not dry_run:
        print("⚠️  WARNING: This will modify player.c! Are you sure? (Ctrl+C to cancel)")
        try:
            input("Press Enter to continue...")
        except KeyboardInterrupt:
            print("\n❌ Cancelled by user")
            return
    
    # Comment out missing functions
    comment_missing_functions(args.player_c, args.player_asm_dir, dry_run)
    
    if dry_run:
        print(f"\n💡 To comment out missing functions, run: python3 tools/comment_missing_functions.py --execute")

if __name__ == "__main__":
    main()
