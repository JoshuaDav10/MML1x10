#!/usr/bin/env python3
"""
MIPS Instruction Set Reference Manual Converter
Converts PDF to text and determines if chunking is needed.
"""

import os
import subprocess
from pathlib import Path

def convert_mips_manual():
    input_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/mips_instruction_set_reference.pdf")
    output_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/MIPS_Instruction_Set_Reference.txt")
    
    print("🔍 MIPS Instruction Set Reference Manual Converter")
    print("=" * 60)
    
    print(f"📄 Input file: {input_file}")
    print(f"📊 File size: {input_file.stat().st_size / (1024*1024):.1f} MB")
    
    # Try different PDF to text conversion methods
    conversion_methods = [
        ("pdftotext", "pdftotext -layout '{input}' '{output}'"),
        ("pdfminer", "python3 -c \"from pdfminer.high_level import extract_text; open('{output}', 'w').write(extract_text('{input}'))\""),
        ("pdfplumber", "python3 -c \"import pdfplumber; open('{output}', 'w').write('\\n'.join([page.extract_text() for page in pdfplumber.open('{input}').pages]))\"")
    ]
    
    success = False
    for method_name, command in conversion_methods:
        print(f"\n🔄 Trying {method_name}...")
        try:
            cmd = command.format(input=str(input_file), output=str(output_file))
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0 and output_file.exists() and output_file.stat().st_size > 1000:
                print(f"  ✅ Success with {method_name}")
                success = True
                break
            else:
                print(f"  ❌ Failed with {method_name}: {result.stderr}")
                
        except Exception as e:
            print(f"  ❌ Error with {method_name}: {str(e)}")
    
    if not success:
        print("\n❌ All conversion methods failed. Trying basic text extraction...")
        # Fallback: try to extract text using basic methods
        try:
            # Try using strings command to extract readable text
            cmd = f"strings '{input_file}' > '{output_file}'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0 and output_file.exists():
                print("  ✅ Basic text extraction successful")
                success = True
            else:
                print("  ❌ Basic text extraction failed")
                
        except Exception as e:
            print(f"  ❌ Error with basic extraction: {str(e)}")
    
    if not success:
        print("\n❌ Could not convert PDF to text. Please install pdftotext or pdfminer.")
        return
    
    # Analyze the converted text
    if output_file.exists():
        file_size = output_file.stat().st_size
        with open(output_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            line_count = len(content.splitlines())
            char_count = len(content)
        
        print(f"\n📊 Conversion Results:")
        print(f"  Output file: {output_file}")
        print(f"  File size: {file_size / 1024:.1f} KB")
        print(f"  Lines: {line_count}")
        print(f"  Characters: {char_count}")
        
        # Determine if chunking is needed
        if char_count > 500000:  # 500KB
            print(f"\n⚠️  Large file detected - chunking recommended")
            chunk_mips_manual(output_file, content)
        else:
            print(f"\n✅ File size is manageable - no chunking needed")
        
        # Add header to the file
        add_header_to_file(output_file, char_count, line_count)
        
        print(f"\n✅ MIPS manual conversion complete!")
        print(f"📁 Output: {output_file}")

def chunk_mips_manual(output_file, content):
    """Chunk the MIPS manual into logical sections"""
    
    print(f"\n🔪 Chunking MIPS manual into logical sections...")
    
    # Create chunks directory
    chunks_dir = output_file.parent / "mips_manual_chunks"
    chunks_dir.mkdir(exist_ok=True)
    
    # Split content into lines
    lines = content.split('\n')
    
    # Look for section headers (lines that might be chapter/section titles)
    section_headers = []
    for i, line in enumerate(lines):
        line_clean = line.strip()
        
        # Look for potential section headers
        if (line_clean and 
            len(line_clean) > 5 and 
            len(line_clean) < 100 and
            (line_clean.isupper() or 
             any(keyword in line_clean.lower() for keyword in [
                 'chapter', 'section', 'instruction', 'format', 'operation',
                 'register', 'memory', 'exception', 'interrupt', 'coprocessor',
                 'floating point', 'assembly', 'syntax', 'addressing'
             ]))):
            section_headers.append((i, line_clean))
    
    print(f"  Found {len(section_headers)} potential section headers")
    
    # Create chunks
    chunks_created = 0
    for i, (line_num, header) in enumerate(section_headers):
        # Determine start and end of section
        start_line = line_num
        
        if i + 1 < len(section_headers):
            end_line = section_headers[i + 1][0]
        else:
            end_line = len(lines)
        
        # Extract section content
        section_lines = lines[start_line:end_line]
        section_content = '\n'.join(section_lines).strip()
        
        # Skip if content is too small
        if len(section_content) < 1000:
            continue
        
        # Create safe filename
        safe_header = ''.join(c for c in header if c.isalnum() or c in ' -_').strip()
        safe_header = safe_header.replace(' ', '_')[:50]
        
        # Create chunk file
        chunk_file = chunks_dir / f"mips_chunk_{i+1:02d}_{safe_header}.txt"
        
        # Add header
        header_text = f"""MIPS INSTRUCTION SET REFERENCE - {header.upper()}
{'='*80}
Source: MIPS Instruction Set Reference Manual
Section: {header}
Chunked: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Size: {len(section_content)} characters
Lines: {len(section_lines)}
{'='*80}

"""
        
        full_content = header_text + section_content
        
        # Write chunk file
        with open(chunk_file, 'w', encoding='utf-8') as f:
            f.write(full_content)
        
        print(f"  Created: {chunk_file.name} ({len(section_content)} chars)")
        chunks_created += 1
    
    # Create chunks index
    index_content = f"""MIPS INSTRUCTION SET REFERENCE - CHUNKED INDEX
{'='*80}
Source: MIPS Instruction Set Reference Manual
Chunked: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Total chunks: {chunks_created}
{'='*80}

CHUNKED SECTIONS:
"""
    
    for chunk_file in sorted(chunks_dir.glob("*.txt")):
        if chunk_file.name != "INDEX.txt":
            file_size = chunk_file.stat().st_size
            file_size_kb = file_size / 1024
            with open(chunk_file, 'r', encoding='utf-8') as f:
                line_count = len(f.readlines())
            index_content += f"\n{chunk_file.stem}\n"
            index_content += f"  File: {chunk_file.name}\n"
            index_content += f"  Size: {file_size_kb:.1f} KB\n"
            index_content += f"  Lines: {line_count}\n"
    
    # Write chunks index
    index_file = chunks_dir / "INDEX.txt"
    with open(index_file, 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Chunking complete!")
    print(f"📁 Chunks directory: {chunks_dir}")
    print(f"📊 Chunks created: {chunks_created}")
    print(f"📋 Chunks index: INDEX.txt")

def add_header_to_file(output_file, char_count, line_count):
    """Add header to the converted file"""
    
    # Read current content
    with open(output_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    # Create header
    header = f"""MIPS INSTRUCTION SET REFERENCE MANUAL
{'='*80}
Source: MIPS Instruction Set Reference Manual
Converted: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Size: {char_count} characters
Lines: {line_count}
Purpose: MIPS R3000A instruction set reference for MML decompilation
{'='*80}

"""
    
    # Write file with header
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(header + content)

if __name__ == "__main__":
    convert_mips_manual()
