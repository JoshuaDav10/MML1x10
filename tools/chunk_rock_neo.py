#!/usr/bin/env python3
"""
Chunk rock_neo.exe.txt into smaller files for easier analysis
Splits the 22MB file into <1MB chunks while preserving line boundaries
"""

import os
import math
from pathlib import Path

def chunk_rock_neo():
    # Source file
    source_file = Path("reference/rock_neo.exe.txt")
    
    # Destination folder on desktop
    dest_folder = Path("/home/x/Desktop/rock_neo_chunks")
    
    # Target chunk size (1MB = 1,048,576 bytes)
    target_chunk_size = 1_000_000  # Slightly under 1MB for safety
    
    # Create destination folder
    dest_folder.mkdir(exist_ok=True)
    print(f"Created destination folder: {dest_folder}")
    
    # Check if source file exists
    if not source_file.exists():
        print(f"Error: Source file {source_file} not found!")
        return
    
    # Get file size
    file_size = source_file.stat().st_size
    print(f"Source file size: {file_size:,} bytes ({file_size / 1_000_000:.1f} MB)")
    
    # Calculate number of chunks needed
    num_chunks = math.ceil(file_size / target_chunk_size)
    print(f"Will create {num_chunks} chunks")
    
    # Read and chunk the file
    chunk_num = 1
    current_chunk_size = 0
    current_chunk_lines = []
    
    with open(source_file, 'r', encoding='utf-8', errors='ignore') as f:
        for line_num, line in enumerate(f, 1):
            line_bytes = len(line.encode('utf-8'))
            
            # Check if adding this line would exceed chunk size
            if current_chunk_size + line_bytes > target_chunk_size and current_chunk_lines:
                # Write current chunk
                chunk_filename = dest_folder / f"rock_neo_chunk_{chunk_num:03d}.txt"
                with open(chunk_filename, 'w', encoding='utf-8') as chunk_file:
                    chunk_file.writelines(current_chunk_lines)
                
                print(f"Created chunk {chunk_num:03d}: {chunk_filename.name} "
                      f"({current_chunk_size:,} bytes, {len(current_chunk_lines)} lines)")
                
                # Reset for next chunk
                chunk_num += 1
                current_chunk_size = 0
                current_chunk_lines = []
            
            # Add line to current chunk
            current_chunk_lines.append(line)
            current_chunk_size += line_bytes
            
            # Progress indicator
            if line_num % 10000 == 0:
                progress = (line_num * line_bytes) / file_size * 100
                print(f"Progress: {progress:.1f}% ({line_num:,} lines processed)")
    
    # Write final chunk if there are remaining lines
    if current_chunk_lines:
        chunk_filename = dest_folder / f"rock_neo_chunk_{chunk_num:03d}.txt"
        with open(chunk_filename, 'w', encoding='utf-8') as chunk_file:
            chunk_file.writelines(current_chunk_lines)
        
        print(f"Created final chunk {chunk_num:03d}: {chunk_filename.name} "
              f"({current_chunk_size:,} bytes, {len(current_chunk_lines)} lines)")
    
    # Summary
    print(f"\nChunking complete!")
    print(f"Total chunks created: {chunk_num}")
    print(f"Destination folder: {dest_folder}")
    
    # List all chunks with sizes
    print(f"\nChunk summary:")
    total_size = 0
    for chunk_file in sorted(dest_folder.glob("rock_neo_chunk_*.txt")):
        chunk_size = chunk_file.stat().st_size
        total_size += chunk_size
        print(f"  {chunk_file.name}: {chunk_size:,} bytes ({chunk_size / 1_000:.1f} KB)")
    
    print(f"\nTotal size of all chunks: {total_size:,} bytes ({total_size / 1_000_000:.1f} MB)")
    print(f"Original file size: {file_size:,} bytes ({file_size / 1_000_000:.1f} MB)")
    
    if total_size != file_size:
        print(f"⚠️  Size mismatch detected! This may indicate encoding differences.")

if __name__ == "__main__":
    chunk_rock_neo()
