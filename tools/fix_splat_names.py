#!/usr/bin/env python3
"""
Fix Splat Symbol Names Script

This script fixes the mismatch between splat-generated symbol names (D_ prefix) 
and actual assembly file names (func_ prefix) that occurs when functions lack 
standard MIPS prologues.

Usage:
    python fix_splat_names.py --dry-run    # Show what would be changed
    python fix_splat_names.py              # Actually make the changes
"""

import os
import re
import argparse
import glob
from pathlib import Path
from typing import Dict, List, Tuple, Set


class SplatSymbolFixer:
    def __init__(self, project_root: str = "."):
        self.project_root = Path(project_root)
        self.asm_dir = self.project_root / "asm" / "rock_neo" / "nonmatchings"
        self.src_dir = self.project_root / "src" / "rock_neo"
        
        # Track all the changes we would make
        self.file_renames: List[Tuple[str, str]] = []
        self.c_file_changes: Dict[str, List[Tuple[str, str]]] = {}
        
    def find_assembly_files(self) -> Dict[str, str]:
        """
        Find all assembly files and map their actual names to their paths.
        Returns: {symbol_name: file_path}
        """
        assembly_files = {}
        
        if not self.asm_dir.exists():
            print(f"Warning: Assembly directory {self.asm_dir} does not exist")
            return assembly_files
            
        # Find all .s files in the nonmatchings directory
        for asm_file in self.asm_dir.rglob("*.s"):
            # Extract the symbol name from the filename
            symbol_name = asm_file.stem  # Remove .s extension
            
            # Check if this is a function file (starts with func_)
            if symbol_name.startswith("func_"):
                # Remove the func_ prefix to get the base symbol name
                base_name = symbol_name[5:]  # Remove "func_" prefix
                assembly_files[base_name] = str(asm_file)
                
        return assembly_files
    
    def find_c_files_with_includes(self) -> Dict[str, List[str]]:
        """
        Find all C files that contain INCLUDE_ASM directives.
        Returns: {c_file_path: [list_of_include_lines]}
        """
        c_files = {}
        
        if not self.src_dir.exists():
            print(f"Warning: Source directory {self.src_dir} does not exist")
            return c_files
            
        # Find all .c files
        for c_file in self.src_dir.glob("*.c"):
            includes = []
            
            try:
                with open(c_file, 'r', encoding='utf-8') as f:
                    for line_num, line in enumerate(f, 1):
                        if "INCLUDE_ASM" in line:
                            includes.append((line_num, line.strip()))
            except Exception as e:
                print(f"Warning: Could not read {c_file}: {e}")
                continue
                
            if includes:
                c_files[str(c_file)] = includes
                
        return c_files
    
    def analyze_symbol_mismatches(self) -> None:
        """
        Analyze the project to find symbol naming mismatches.
        """
        print("🔍 Analyzing project for symbol mismatches...")
        
        # Find all assembly files
        assembly_files = self.find_assembly_files()
        print(f"Found {len(assembly_files)} assembly files with func_ prefix")
        
        # Find all C files with INCLUDE_ASM directives
        c_files = self.find_c_files_with_includes()
        print(f"Found {len(c_files)} C files with INCLUDE_ASM directives")
        
        # Analyze each C file for mismatches
        for c_file_path, includes in c_files.items():
            c_file_changes = []
            
            for line_num, line in includes:
                # Extract the symbol name from INCLUDE_ASM directive
                match = re.search(r'INCLUDE_ASM\("[^"]+",\s*([^)]+)\)', line)
                if not match:
                    continue
                    
                symbol_name = match.group(1).strip()
                
                # Check if this is a D_ symbol that should be a func_ symbol
                if symbol_name.startswith("D_"):
                    base_name = symbol_name[2:]  # Remove "D_" prefix
                    
                    # Check if we have a corresponding assembly file
                    if base_name in assembly_files:
                        # Found a mismatch! D_8002ABE4 should be func_8002ABE4
                        old_symbol = symbol_name
                        new_symbol = f"func_{base_name}"
                        
                        c_file_changes.append((line_num, old_symbol, new_symbol))
                        
                        # Also need to rename the assembly file
                        old_asm_path = self.asm_dir / f"{old_symbol}.s"
                        new_asm_path = self.asm_dir / f"{new_symbol}.s"
                        
                        # Find the actual assembly file path
                        actual_asm_path = Path(assembly_files[base_name])
                        
                        # Determine the correct rename path
                        if actual_asm_path.exists():
                            # The file exists with the func_ name, so we need to update the C file
                            # to reference the correct path
                            pass
                        else:
                            # The file doesn't exist, so we need to rename it
                            if old_asm_path.exists():
                                self.file_renames.append((str(old_asm_path), str(new_asm_path)))
                            else:
                                print(f"Warning: Assembly file {old_asm_path} not found for {symbol_name}")
            
            if c_file_changes:
                self.c_file_changes[c_file_path] = c_file_changes
    
    def print_dry_run(self) -> None:
        """
        Print what changes would be made without actually making them.
        """
        print("\n" + "="*60)
        print("DRY RUN MODE: No files will be changed.")
        print("="*60)
        
        if not self.file_renames and not self.c_file_changes:
            print("✅ No symbol mismatches found! All symbols are correctly named.")
            return
            
        # Show file renames
        if self.file_renames:
            print(f"\n📁 Would rename {len(self.file_renames)} assembly files:")
            for old_path, new_path in self.file_renames:
                print(f"  [RENAME] {old_path} -> {new_path}")
        
        # Show C file changes
        if self.c_file_changes:
            print(f"\n📝 Would update {len(self.c_file_changes)} C files:")
            for c_file_path, changes in self.c_file_changes.items():
                print(f"\n  📄 {c_file_path}:")
                for line_num, old_symbol, new_symbol in changes:
                    print(f"    Line {line_num}: {old_symbol} -> {new_symbol}")
        
        print(f"\n📊 Summary: {len(self.file_renames)} files to rename, {len(self.c_file_changes)} C files to update")
    
    def execute_changes(self) -> None:
        """
        Actually execute the changes (rename files and update C files).
        """
        print("\n🚀 Executing changes...")
        
        # Rename assembly files
        for old_path, new_path in self.file_renames:
            try:
                old_file = Path(old_path)
                new_file = Path(new_path)
                
                if old_file.exists():
                    old_file.rename(new_file)
                    print(f"✅ Renamed: {old_path} -> {new_path}")
                else:
                    print(f"⚠️  Warning: File {old_path} not found, skipping rename")
            except Exception as e:
                print(f"❌ Error renaming {old_path}: {e}")
        
        # Update C files
        for c_file_path, changes in self.c_file_changes.items():
            try:
                print(f"📝 Updating {c_file_path}...")
                
                # Read the file
                with open(c_file_path, 'r', encoding='utf-8') as f:
                    lines = f.readlines()
                
                # Make the changes
                for line_num, old_symbol, new_symbol in changes:
                    if line_num <= len(lines):
                        # Replace the symbol in the line
                        old_line = lines[line_num - 1]
                        new_line = old_line.replace(old_symbol, new_symbol)
                        lines[line_num - 1] = new_line
                        
                        print(f"  Line {line_num}: {old_symbol} -> {new_symbol}")
                    else:
                        print(f"  ⚠️  Warning: Line {line_num} not found in {c_file_path}")
                
                # Write the file back
                with open(c_file_path, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
                    
                print(f"✅ Updated {c_file_path}")
                
            except Exception as e:
                print(f"❌ Error updating {c_file_path}: {e}")
        
        print(f"\n🎉 Changes completed! Renamed {len(self.file_renames)} files, updated {len(self.c_file_changes)} C files")
    
    def run(self, dry_run: bool = True) -> None:
        """
        Main execution method.
        """
        print("🔧 Splat Symbol Name Fixer")
        print("=" * 40)
        
        # Analyze the project
        self.analyze_symbol_mismatches()
        
        if dry_run:
            self.print_dry_run()
        else:
            self.execute_changes()


def main():
    parser = argparse.ArgumentParser(
        description="Fix splat symbol naming mismatches between D_ symbols and actual function names"
    )
    parser.add_argument(
        "--dry-run", 
        action="store_true", 
        default=True,
        help="Show what would be changed without making changes (default)"
    )
    parser.add_argument(
        "--execute", 
        action="store_true", 
        help="Actually execute the changes (use with caution!)"
    )
    parser.add_argument(
        "--project-root", 
        default=".", 
        help="Path to project root directory (default: current directory)"
    )
    
    args = parser.parse_args()
    
    # Determine if this is a dry run
    dry_run = not args.execute
    
    if not dry_run:
        print("⚠️  WARNING: This will actually modify files!")
        response = input("Are you sure you want to continue? (yes/no): ")
        if response.lower() not in ['yes', 'y']:
            print("Aborted.")
            return
    
    # Create and run the fixer
    fixer = SplatSymbolFixer(args.project_root)
    fixer.run(dry_run=dry_run)


if __name__ == "__main__":
    main()
