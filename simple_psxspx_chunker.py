#!/usr/bin/env python3
"""
Simple PSXSPX Specifications Chunker
Splits the file into logical sections based on major headings.
"""

import re
from pathlib import Path

def simple_chunk_psxspx():
    input_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX_Specifications.txt")
    output_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/psxspx_sections")
    
    print("🔍 Simple PSXSPX Specifications Chunker")
    print("=" * 60)
    
    # Create output directory
    output_dir.mkdir(exist_ok=True)
    
    # Read the full file
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"📄 Input file: {input_file}")
    print(f"📊 File size: {len(content)} characters")
    
    # Split content into lines
    lines = content.split('\n')
    
    # Find major section headings (lines that are standalone and contain key terms)
    major_sections = []
    
    for i, line in enumerate(lines):
        line_clean = line.strip()
        
        # Look for major section headings
        if (line_clean and 
            len(line_clean) > 5 and 
            len(line_clean) < 100 and
            not line_clean.startswith('|') and
            not line_clean.startswith('Source:') and
            not line_clean.startswith('Converted:') and
            not line_clean.startswith('File size:') and
            not line_clean.startswith('=') and
            not line_clean.startswith('PSXSPX') and
            not line_clean.startswith('Contents') and
            not line_clean.startswith('Nocash') and
            not line_clean.startswith('Latest Research') and
            not line_clean.startswith('No$psx') and
            (any(keyword in line_clean.lower() for keyword in [
                'memory', 'i/o', 'graphics', 'gpu', 'gte', 'mdec', 'sound', 'spu',
                'interrupt', 'dma', 'timer', 'cdrom', 'cd', 'controller', 'pocket',
                'serial', 'expansion', 'cpu', 'bios', 'kernel', 'arcade', 'cheat',
                'hardware', 'pinout', 'unpredictable'
            ]))):
            major_sections.append((i, line_clean))
    
    print(f"📋 Found {len(major_sections)} major sections")
    
    # Create chunks for each major section
    chunks_created = 0
    
    for i, (line_num, section_title) in enumerate(major_sections):
        # Determine start and end of section
        start_line = line_num
        
        if i + 1 < len(major_sections):
            end_line = major_sections[i + 1][0]
        else:
            end_line = len(lines)
        
        # Extract section content
        section_lines = lines[start_line:end_line]
        section_content = '\n'.join(section_lines).strip()
        
        # Skip if content is too small
        if len(section_content) < 1000:
            print(f"  Skipping '{section_title}' (too small: {len(section_content)} chars)")
            continue
        
        # Create safe filename
        safe_title = re.sub(r'[^\w\s-]', '', section_title).strip()
        safe_title = re.sub(r'[-\s]+', '_', safe_title)
        safe_title = safe_title[:50]  # Limit length
        
        # Create section ID
        section_id = f"{i+1:02d}_{safe_title}"
        output_file = output_dir / f"{section_id}.txt"
        
        # Add header
        header = f"""PSXSPX SPECIFICATIONS - {section_title.upper()}
{'='*80}
Source: https://problemkaputt.de/psx-spx.htm
Section: {section_title}
Chunked: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Size: {len(section_content)} characters
Lines: {len(section_lines)}
{'='*80}

"""
        
        full_content = header + section_content
        
        # Write file
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(full_content)
        
        print(f"  Created: {output_file.name} ({len(section_content)} chars, {len(section_lines)} lines)")
        chunks_created += 1
    
    # Create main index
    index_content = f"""PSXSPX SPECIFICATIONS - CHUNKED INDEX
{'='*80}
Source: https://problemkaputt.de/psx-spx.htm
Chunked: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Total chunks: {chunks_created}
{'='*80}

CHUNKED SECTIONS:
"""
    
    for file_path in sorted(output_dir.glob("*.txt")):
        if file_path.name != "INDEX.txt":
            file_size = file_path.stat().st_size
            file_size_kb = file_size / 1024
            with open(file_path, 'r', encoding='utf-8') as f:
                line_count = len(f.readlines())
            index_content += f"\n{file_path.stem}\n"
            index_content += f"  File: {file_path.name}\n"
            index_content += f"  Size: {file_size_kb:.1f} KB\n"
            index_content += f"  Lines: {line_count}\n"
    
    # Write main index
    index_file = output_dir / "INDEX.txt"
    with open(index_file, 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Simple chunking complete!")
    print(f"📁 Output directory: {output_dir}")
    print(f"📊 Chunks created: {chunks_created}")
    print(f"📋 Index file: INDEX.txt")

if __name__ == "__main__":
    simple_chunk_psxspx()
