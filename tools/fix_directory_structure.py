#!/usr/bin/env python3
"""
Directory Structure Fixer for Mega Man Legends Decompilation

This script creates the nested directory structure that INCLUDE_ASM expects.
It moves files from flat structure to nested structure.
"""

import os
import shutil
import argparse
from pathlib import Path
from typing import List, Tuple, Dict

class DirectoryStructureFixer:
    def __init__(self, project_root: str):
        self.project_root = Path(project_root)
        self.cd_dir = self.project_root / "asm" / "rock_neo" / "nonmatchings" / "cd"
        self.fixes_applied = []
        self.errors_found = []
        
    def scan_for_assembly_files(self) -> List[Path]:
        """Find all assembly files in the cd directory."""
        assembly_files = []
        if self.cd_dir.exists():
            for asm_file in self.cd_dir.glob("*.s"):
                assembly_files.append(asm_file)
        return assembly_files
    
    def create_nested_structure(self, assembly_files: List[Path], dry_run: bool = True, remove_originals: bool = False) -> int:
        """
        Create nested directory structure for each assembly file.
        Returns: Number of directories created
        """
        directories_created = 0
        
        for asm_file in assembly_files:
            # Extract function name from filename (e.g., func_8001B6FC.s -> func_8001B6FC)
            func_name = asm_file.stem
            
            # Create nested directory path
            nested_dir = self.cd_dir / func_name
            nested_file = nested_dir / f"{func_name}.s"
            
            if not nested_dir.exists():
                if not dry_run:
                    try:
                        # Create directory
                        nested_dir.mkdir(parents=True, exist_ok=True)
                        
                        # Copy file to nested location
                        shutil.copy2(asm_file, nested_file)
                        
                        # Remove original file if requested
                        if remove_originals:
                            asm_file.unlink()
                            self.fixes_applied.append({
                                'type': 'file_moved',
                                'directory': str(nested_dir),
                                'source_file': str(asm_file),
                                'target_file': str(nested_file)
                            })
                        else:
                            self.fixes_applied.append({
                                'type': 'directory_created',
                                'directory': str(nested_dir),
                                'source_file': str(asm_file),
                                'target_file': str(nested_file)
                            })
                        
                        directories_created += 1
                        if remove_originals:
                            print(f"   ✅ Created {nested_dir} and moved {asm_file.name}")
                        else:
                            print(f"   ✅ Created {nested_dir} and copied {asm_file.name}")
                        
                    except Exception as e:
                        self.errors_found.append(f"Error creating {nested_dir}: {e}")
                else:
                    if remove_originals:
                        print(f"   🔍 Would create {nested_dir} and move {asm_file.name} (dry run)")
                    else:
                        print(f"   🔍 Would create {nested_dir} and copy {asm_file.name} (dry run)")
                    directories_created += 1
            else:
                if not dry_run:
                    # Directory exists, check if file needs updating
                    if not nested_file.exists() or asm_file.stat().st_mtime > nested_file.stat().st_mtime:
                        try:
                            shutil.copy2(asm_file, nested_file)
                            
                            # Remove original file if requested
                            if remove_originals:
                                asm_file.unlink()
                                self.fixes_applied.append({
                                    'type': 'file_moved',
                                    'directory': str(nested_dir),
                                    'source_file': str(asm_file),
                                    'target_file': str(nested_file)
                                })
                                print(f"   ✅ Updated {nested_file} and removed original")
                            else:
                                self.fixes_applied.append({
                                    'type': 'file_updated',
                                    'directory': str(nested_dir),
                                    'source_file': str(asm_file),
                                    'target_file': str(nested_file)
                                })
                                print(f"   ✅ Updated {nested_file}")
                        except Exception as e:
                            self.errors_found.append(f"Error updating {nested_file}: {e}")
                    else:
                        if remove_originals and asm_file.exists():
                            try:
                                asm_file.unlink()
                                print(f"   ✅ Removed original {asm_file.name}")
                            except Exception as e:
                                self.errors_found.append(f"Error removing {asm_file}: {e}")
                        else:
                            print(f"   ✅ {nested_dir} already exists and up-to-date")
                else:
                    print(f"   ✅ {nested_dir} already exists")
        
        return directories_created
    
    def run(self, dry_run: bool = True, remove_originals: bool = False) -> Dict:
        """Run the directory structure fixer."""
        print(f"🔍 Scanning for assembly files in {self.cd_dir}...")
        
        assembly_files = self.scan_for_assembly_files()
        print(f"📁 Found {len(assembly_files)} assembly files")
        
        if not assembly_files:
            print("❌ No assembly files found!")
            return {}
        
        print(f"\n🔧 Creating nested directory structure...")
        directories_created = self.create_nested_structure(assembly_files, dry_run, remove_originals)
        
        # Generate report
        report = {
            'total_files': len(assembly_files),
            'directories_created': directories_created,
            'fixes_applied': self.fixes_applied,
            'errors_found': self.errors_found
        }
        
        return report
    
    def print_report(self, report: Dict):
        """Print a summary report."""
        print("\n" + "="*60)
        print("📊 DIRECTORY STRUCTURE FIXER REPORT")
        print("="*60)
        print(f"📁 Total assembly files: {report['total_files']}")
        print(f"🔧 Directories created: {report['directories_created']}")
        
        if report['errors_found']:
            print(f"\n❌ Errors encountered:")
            for error in report['errors_found']:
                print(f"   {error}")
        
        if report['fixes_applied']:
            print(f"\n🔧 Fixes applied:")
            for fix in report['fixes_applied']:
                if fix['type'] == 'directory_created':
                    print(f"   Created: {fix['directory']}")
                    print(f"     Source: {fix['source_file']}")
                    print(f"     Target: {fix['target_file']}")
                elif fix['type'] == 'file_updated':
                    print(f"   Updated: {fix['target_file']}")
                elif fix['type'] == 'file_moved':
                    print(f"   Moved: {fix['target_file']}")
                    print(f"     Source: {fix['source_file']}")
        
        print("="*60)

def main():
    parser = argparse.ArgumentParser(
        description="Directory Structure Fixer for Mega Man Legends Decompilation"
    )
    parser.add_argument(
        "--dry-run", 
        action="store_true", 
        default=True,
        help="Show what would be created without making changes (default: True)"
    )
    parser.add_argument(
        "--execute", 
        action="store_true", 
        help="Actually create the directory structure (use with caution!)"
    )
    parser.add_argument(
        "--remove-originals", 
        action="store_true", 
        help="Remove original files after creating nested structure (prevents duplicate symbols)"
    )
    parser.add_argument(
        "--project-root", 
        default=".",
        help="Project root directory (default: current directory)"
    )
    
    args = parser.parse_args()
    
    # Determine if this is a dry run
    dry_run = not args.execute
    
    if not dry_run:
        print("⚠️  WARNING: This will create directories and copy files! Are you sure? (Ctrl+C to cancel)")
        try:
            input("Press Enter to continue...")
        except KeyboardInterrupt:
            print("\n❌ Cancelled by user")
            return
    
    # Run the fixer
    fixer = DirectoryStructureFixer(args.project_root)
    report = fixer.run(dry_run=dry_run, remove_originals=args.remove_originals)
    fixer.print_report(report)
    
    if dry_run and report.get('directories_created', 0) > 0:
        print(f"\n💡 To create these directories, run: python3 tools/fix_directory_structure.py --execute")
    elif dry_run:
        print(f"\n✅ Directory structure looks correct!")

if __name__ == "__main__":
    main()
