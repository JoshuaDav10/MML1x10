#!/usr/bin/env python3
"""
Player Function Name Fixer for Mega Man Legends Decompilation

This script fixes all player function names from 0x8001XXXX to 0x8003XXXX
to match the actual assembly files in the player directory.
"""

import re
import argparse
from pathlib import Path

def fix_player_functions(player_c_path: str, dry_run: bool = True):
    """Fix all player function names in player.c"""
    
    try:
        with open(player_c_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Find all function names in the 0x8001XXXX range
        pattern = r'func_8001([0-9A-F]{4})'
        matches = re.findall(pattern, content)
        
        if not matches:
            print("✅ No player functions found to fix")
            return
        
        print(f"🔍 Found {len(matches)} player functions to fix:")
        
        # Create the replacement mapping
        replacements = {}
        for match in matches:
            old_name = f"func_8001{match}"
            new_name = f"func_8003{match}"
            replacements[old_name] = new_name
            print(f"   {old_name} → {new_name}")
        
        # Apply replacements
        new_content = content
        for old_name, new_name in replacements.items():
            new_content = new_content.replace(old_name, new_name)
        
        if not dry_run:
            # Write the fixed content back
            with open(player_c_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f"\n✅ Fixed {len(replacements)} player function names")
        else:
            print(f"\n🔍 Would fix {len(replacements)} player function names (dry run)")
            
    except Exception as e:
        print(f"❌ Error fixing player functions: {e}")

def main():
    parser = argparse.ArgumentParser(
        description="Player Function Name Fixer for Mega Man Legends Decompilation"
    )
    parser.add_argument(
        "--dry-run", 
        action="store_true", 
        default=True,
        help="Show what would be fixed without making changes (default: True)"
    )
    parser.add_argument(
        "--execute", 
        action="store_true", 
        help="Actually apply the fixes (use with caution!)"
    )
    parser.add_argument(
        "--player-c", 
        default="src/rock_neo/player.c",
        help="Path to player.c file (default: src/rock_neo/player.c)"
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
    
    # Fix player functions
    fix_player_functions(args.player_c, dry_run)
    
    if dry_run:
        print(f"\n💡 To apply these fixes, run: python3 tools/fix_player_functions.py --execute")

if __name__ == "__main__":
    main()
