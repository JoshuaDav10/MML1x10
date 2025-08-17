#!/usr/bin/env python3
"""
Export MML_Decomp_Project to Desktop as .txt files
Preserves directory structure and converts all files to .txt format
"""

import os
import shutil
import pathlib
from pathlib import Path

def export_project_to_txt():
    # Source directory (current project)
    source_dir = Path("/home/x/Desktop/MML_Decomp_Project")
    
    # Destination directory on desktop
    dest_dir = Path("/home/x/Desktop/mml_decomp_txt")
    
    # Files/directories to exclude
    exclude_patterns = [
        '.git',
        'venv',
        'build',
        '__pycache__',
        '.pyc',
        '.o',
        '.exe',
        '.bin',
        '.lock',
        '.rep'
    ]
    
    def should_exclude(path):
        """Check if path should be excluded"""
        path_str = str(path)
        return any(pattern in path_str for pattern in exclude_patterns)
    
    def copy_file_as_txt(src_path, dest_path):
        """Copy a file and convert to .txt if it's not already"""
        try:
            # Read the source file
            with open(src_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # Write as .txt
            with open(dest_path, 'w', encoding='utf-8') as f:
                f.write(content)
                
        except Exception as e:
            print(f"Error processing {src_path}: {e}")
            # If we can't read it as text, try binary
            try:
                with open(src_path, 'rb') as f:
                    content = f.read()
                # Convert binary to hex representation
                hex_content = content.hex()
                with open(dest_path, 'w', encoding='utf-8') as f:
                    f.write(f"BINARY FILE - HEX DUMP:\n{hex_content}")
            except Exception as e2:
                print(f"Failed to process {src_path} as binary: {e2}")
    
    def process_directory(src_path, dest_path):
        """Recursively process directory"""
        print(f"Processing: {src_path}")
        
        # Create destination directory
        dest_path.mkdir(parents=True, exist_ok=True)
        
        # Process all items in source directory
        for item in src_path.iterdir():
            if should_exclude(item):
                print(f"Skipping excluded item: {item}")
                continue
                
            if item.is_dir():
                # Recursively process subdirectory
                new_dest = dest_path / item.name
                process_directory(item, new_dest)
            else:
                # Process file
                if item.suffix == '.txt':
                    # Already a .txt file, just copy
                    dest_file = dest_path / item.name
                    shutil.copy2(item, dest_file)
                else:
                    # Convert to .txt
                    dest_file = dest_path / f"{item.stem}.txt"
                    copy_file_as_txt(item, dest_file)
    
    # Start the export process
    print(f"Starting export from {source_dir} to {dest_dir}")
    
    # Remove existing destination if it exists
    if dest_dir.exists():
        shutil.rmtree(dest_dir)
        print(f"Removed existing {dest_dir}")
    
    # Process the entire project
    process_directory(source_dir, dest_dir)
    
    print(f"\nExport complete!")
    print(f"All files exported to: {dest_dir}")
    
    # Count total files
    total_files = sum(1 for _ in dest_dir.rglob("*.txt"))
    print(f"Total .txt files created: {total_files}")

if __name__ == "__main__":
    export_project_to_txt()
