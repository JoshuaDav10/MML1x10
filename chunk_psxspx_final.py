#!/usr/bin/env python3
"""
Final PSXSPX Specifications Chunker
Chunks based on actual content sections, not just table of contents.
"""

import re
from pathlib import Path

def chunk_psxspx_final():
    input_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX_Specifications.txt")
    output_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/psxspx_sections")
    
    print("🔍 Final PSXSPX Specifications Chunker")
    print("=" * 60)
    
    # Create output directory
    output_dir.mkdir(exist_ok=True)
    
    # Read the full file
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"📄 Input file: {input_file}")
    print(f"📊 File size: {len(content)} characters")
    
    # Define sections based on actual content patterns
    sections = {
        "01_Memory_Map": {
            "title": "Memory Map",
            "start_patterns": [r"Memory Map\s*\n\s*\n\s*\|.*KUSEG.*KSEG0.*KSEG1"],
            "end_patterns": [r"I/O Map\s*\n\s*\n", r"Graphics Processing Unit.*GPU"]
        },
        "02_IO_Map": {
            "title": "I/O Map",
            "start_patterns": [r"I/O Map\s*\n\s*\n"],
            "end_patterns": [r"Graphics Processing Unit.*GPU", r"GPU.*Graphics"]
        },
        "03_GPU": {
            "title": "Graphics Processing Unit (GPU)",
            "start_patterns": [r"Graphics Processing Unit.*GPU\s*\n\s*\n"],
            "end_patterns": [r"Geometry Transformation Engine.*GTE", r"GTE.*Geometry"]
        },
        "04_GTE": {
            "title": "Geometry Transformation Engine (GTE)",
            "start_patterns": [r"Geometry Transformation Engine.*GTE\s*\n\s*\n"],
            "end_patterns": [r"Macroblock Decoder.*MDEC", r"MDEC.*Macroblock"]
        },
        "05_MDEC": {
            "title": "Macroblock Decoder (MDEC)",
            "start_patterns": [r"Macroblock Decoder.*MDEC\s*\n\s*\n"],
            "end_patterns": [r"Sound Processing Unit.*SPU", r"SPU.*Sound"]
        },
        "06_SPU": {
            "title": "Sound Processing Unit (SPU)",
            "start_patterns": [r"Sound Processing Unit.*SPU\s*\n\s*\n"],
            "end_patterns": [r"Interrupts\s*\n\s*\n", r"IRQ"]
        },
        "07_Interrupts": {
            "title": "Interrupts",
            "start_patterns": [r"Interrupts\s*\n\s*\n"],
            "end_patterns": [r"DMA Channels\s*\n\s*\n", r"DMA.*Direct Memory Access"]
        },
        "08_DMA": {
            "title": "DMA Channels",
            "start_patterns": [r"DMA Channels\s*\n\s*\n"],
            "end_patterns": [r"Timers\s*\n\s*\n", r"Timer.*Counter"]
        },
        "09_Timers": {
            "title": "Timers",
            "start_patterns": [r"Timers\s*\n\s*\n"],
            "end_patterns": [r"CDROM Drive\s*\n\s*\n", r"CD.*Drive"]
        },
        "10_CDROM": {
            "title": "CDROM Drive and File Formats",
            "start_patterns": [r"CDROM Drive\s*\n\s*\n", r"CDROM File Formats\s*\n\s*\n"],
            "end_patterns": [r"Controllers and Memory Cards\s*\n\s*\n", r"Controller.*Memory Card"]
        },
        "11_Controllers": {
            "title": "Controllers and Memory Cards",
            "start_patterns": [r"Controllers and Memory Cards\s*\n\s*\n"],
            "end_patterns": [r"Pocketstation\s*\n\s*\n", r"Pocket Station"]
        },
        "12_PocketStation": {
            "title": "Pocketstation",
            "start_patterns": [r"Pocketstation\s*\n\s*\n"],
            "end_patterns": [r"Serial Port.*SIO\s*\n\s*\n", r"SIO.*Serial"]
        },
        "13_Serial_Ports": {
            "title": "Serial Port (SIO)",
            "start_patterns": [r"Serial Port.*SIO\s*\n\s*\n"],
            "end_patterns": [r"Expansion Port.*PIO\s*\n\s*\n", r"PIO.*Expansion"]
        },
        "14_Expansion": {
            "title": "Expansion Port (PIO)",
            "start_patterns": [r"Expansion Port.*PIO\s*\n\s*\n"],
            "end_patterns": [r"Memory Control\s*\n\s*\n", r"Cache.*Control"]
        },
        "15_Memory_Control": {
            "title": "Memory Control",
            "start_patterns": [r"Memory Control\s*\n\s*\n"],
            "end_patterns": [r"Unpredictable Things\s*\n\s*\n", r"CPU Specifications"]
        },
        "16_CPU": {
            "title": "CPU Specifications",
            "start_patterns": [r"CPU Specifications\s*\n\s*\n"],
            "end_patterns": [r"Kernel.*BIOS\s*\n\s*\n", r"BIOS.*Kernel"]
        },
        "17_BIOS": {
            "title": "Kernel (BIOS)",
            "start_patterns": [r"Kernel.*BIOS\s*\n\s*\n"],
            "end_patterns": [r"Arcade Cabinets\s*\n\s*\n", r"Cheat Devices"]
        },
        "18_Arcade": {
            "title": "Arcade Cabinets",
            "start_patterns": [r"Arcade Cabinets\s*\n\s*\n"],
            "end_patterns": [r"Cheat Devices\s*\n\s*\n", r"Action Replay"]
        },
        "19_Cheat_Devices": {
            "title": "Cheat Devices",
            "start_patterns": [r"Cheat Devices\s*\n\s*\n"],
            "end_patterns": [r"PSX Dev-Board Chipsets\s*\n\s*\n", r"Hardware Numbers"]
        },
        "20_Dev_Board": {
            "title": "PSX Dev-Board Chipsets",
            "start_patterns": [r"PSX Dev-Board Chipsets\s*\n\s*\n"],
            "end_patterns": [r"Hardware Numbers\s*\n\s*\n", r"Pinouts"]
        },
        "21_Hardware_Numbers": {
            "title": "Hardware Numbers",
            "start_patterns": [r"Hardware Numbers\s*\n\s*\n"],
            "end_patterns": [r"Pinouts\s*\n\s*\n", r"About.*Credits"]
        },
        "22_Pinouts": {
            "title": "Pinouts",
            "start_patterns": [r"Pinouts\s*\n\s*\n"],
            "end_patterns": [r"About.*Credits\s*\n\s*\n", r"Latest Research"]
        }
    }
    
    # Find section boundaries using regex patterns
    section_boundaries = {}
    
    for section_id, section_info in sections.items():
        for start_pattern in section_info["start_patterns"]:
            match = re.search(start_pattern, content, re.MULTILINE | re.DOTALL)
            if match:
                section_boundaries[section_id] = match.start()
                print(f"  Found {section_id}: {section_info['title']}")
                break
    
    print(f"📋 Found {len(section_boundaries)} section boundaries")
    
    # Create chunks for each section
    chunks_created = 0
    
    for section_id, section_info in sections.items():
        if section_id in section_boundaries:
            start_pos = section_boundaries[section_id]
            
            # Find end position (next section or end of file)
            end_pos = len(content)
            for other_section_id, other_start in section_boundaries.items():
                if other_start > start_pos and other_start < end_pos:
                    end_pos = other_start
            
            # Extract section content
            section_content = content[start_pos:end_pos].strip()
            
            # Skip if content is too small
            if len(section_content) < 500:
                print(f"  Skipping {section_id} (too small: {len(section_content)} chars)")
                continue
            
            # Create output file (sanitize filename)
            safe_title = re.sub(r'[^\w\s-]', '', section_info['title']).strip()
            safe_title = re.sub(r'[-\s]+', '_', safe_title)
            output_file = output_dir / f"{section_id}_{safe_title}.txt"
            
            # Add header
            header = f"""PSXSPX SPECIFICATIONS - {section_info['title'].upper()}
{'='*80}
Source: https://problemkaputt.de/psx-spx.htm
Section: {section_info['title']}
Chunked: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Size: {len(section_content)} characters
{'='*80}

"""
            
            full_content = header + section_content
            
            # Write file
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write(full_content)
            
            print(f"  Created: {output_file.name} ({len(section_content)} chars)")
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
    
    for section_id, section_info in sections.items():
        safe_title = re.sub(r'[^\w\s-]', '', section_info['title']).strip()
        safe_title = re.sub(r'[-\s]+', '_', safe_title)
        filename = f"{section_id}_{safe_title}.txt"
        file_path = output_dir / filename
        if file_path.exists():
            file_size = file_path.stat().st_size
            file_size_kb = file_size / 1024
            with open(file_path, 'r', encoding='utf-8') as f:
                line_count = len(f.readlines())
            index_content += f"\n{section_id}: {section_info['title']}\n"
            index_content += f"  File: {filename}\n"
            index_content += f"  Size: {file_size_kb:.1f} KB\n"
            index_content += f"  Lines: {line_count}\n"
    
    # Write main index
    index_file = output_dir / "INDEX.txt"
    with open(index_file, 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Final chunking complete!")
    print(f"📁 Output directory: {output_dir}")
    print(f"📊 Chunks created: {chunks_created}")
    print(f"📋 Index file: INDEX.txt")

if __name__ == "__main__":
    chunk_psxspx_final()
