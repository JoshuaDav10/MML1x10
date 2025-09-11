#!/usr/bin/env python3
"""
Improved PSXSPX Specifications Chunker
Better section detection and content extraction.
"""

import re
from pathlib import Path

def chunk_psxspx_improved():
    input_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX_Specifications.txt")
    output_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/psxspx_sections")
    
    print("🔍 Improved PSXSPX Specifications Chunker")
    print("=" * 60)
    
    # Create output directory
    output_dir.mkdir(exist_ok=True)
    
    # Read the full file
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"📄 Input file: {input_file}")
    print(f"📊 File size: {len(content)} characters")
    
    # Define major sections with better patterns
    sections = {
        "01_Memory_Map": {
            "title": "Memory Map",
            "start_patterns": [r"Memory Map", r"KUSEG.*KSEG0.*KSEG1"],
            "end_patterns": [r"I/O Map", r"Graphics Processing Unit"]
        },
        "02_IO_Map": {
            "title": "I/O Map",
            "start_patterns": [r"I/O Map"],
            "end_patterns": [r"Graphics Processing Unit", r"GPU"]
        },
        "03_GPU": {
            "title": "Graphics Processing Unit (GPU)",
            "start_patterns": [r"Graphics Processing Unit.*GPU", r"GPU.*Graphics"],
            "end_patterns": [r"Geometry Transformation Engine", r"GTE"]
        },
        "04_GTE": {
            "title": "Geometry Transformation Engine (GTE)",
            "start_patterns": [r"Geometry Transformation Engine.*GTE", r"GTE.*Geometry"],
            "end_patterns": [r"Macroblock Decoder", r"MDEC"]
        },
        "05_MDEC": {
            "title": "Macroblock Decoder (MDEC)",
            "start_patterns": [r"Macroblock Decoder.*MDEC", r"MDEC.*Macroblock"],
            "end_patterns": [r"Sound Processing Unit", r"SPU"]
        },
        "06_SPU": {
            "title": "Sound Processing Unit (SPU)",
            "start_patterns": [r"Sound Processing Unit.*SPU", r"SPU.*Sound"],
            "end_patterns": [r"Interrupts", r"IRQ"]
        },
        "07_Interrupts": {
            "title": "Interrupts",
            "start_patterns": [r"Interrupts", r"IRQ"],
            "end_patterns": [r"DMA Channels", r"DMA"]
        },
        "08_DMA": {
            "title": "DMA Channels",
            "start_patterns": [r"DMA Channels", r"DMA.*Direct Memory Access"],
            "end_patterns": [r"Timers", r"Timer"]
        },
        "09_Timers": {
            "title": "Timers",
            "start_patterns": [r"Timers", r"Timer.*Counter"],
            "end_patterns": [r"CDROM Drive", r"CD.*Drive"]
        },
        "10_CDROM": {
            "title": "CDROM Drive and File Formats",
            "start_patterns": [r"CDROM Drive", r"CD.*Drive", r"CDROM File Formats"],
            "end_patterns": [r"Controllers and Memory Cards", r"Controller"]
        },
        "11_Controllers": {
            "title": "Controllers and Memory Cards",
            "start_patterns": [r"Controllers and Memory Cards", r"Controller.*Memory Card"],
            "end_patterns": [r"Pocketstation", r"Pocket Station"]
        },
        "12_PocketStation": {
            "title": "Pocketstation",
            "start_patterns": [r"Pocketstation", r"Pocket Station"],
            "end_patterns": [r"Serial Port", r"SIO"]
        },
        "13_Serial_Ports": {
            "title": "Serial Port (SIO)",
            "start_patterns": [r"Serial Port.*SIO", r"SIO.*Serial"],
            "end_patterns": [r"Expansion Port", r"PIO"]
        },
        "14_Expansion": {
            "title": "Expansion Port (PIO)",
            "start_patterns": [r"Expansion Port.*PIO", r"PIO.*Expansion"],
            "end_patterns": [r"Memory Control", r"Cache"]
        },
        "15_Memory_Control": {
            "title": "Memory Control",
            "start_patterns": [r"Memory Control", r"Cache.*Control"],
            "end_patterns": [r"Unpredictable Things", r"CPU Specifications"]
        },
        "16_CPU": {
            "title": "CPU Specifications",
            "start_patterns": [r"CPU Specifications", r"MIPS.*R3000A"],
            "end_patterns": [r"Kernel.*BIOS", r"BIOS.*Kernel"]
        },
        "17_BIOS": {
            "title": "Kernel (BIOS)",
            "start_patterns": [r"Kernel.*BIOS", r"BIOS.*Kernel"],
            "end_patterns": [r"Arcade Cabinets", r"Cheat Devices"]
        },
        "18_Arcade": {
            "title": "Arcade Cabinets",
            "start_patterns": [r"Arcade Cabinets", r"Arcade.*Cabinet"],
            "end_patterns": [r"Cheat Devices", r"Action Replay"]
        },
        "19_Cheat_Devices": {
            "title": "Cheat Devices",
            "start_patterns": [r"Cheat Devices", r"Action Replay", r"Game Shark"],
            "end_patterns": [r"PSX Dev-Board Chipsets", r"Hardware Numbers"]
        },
        "20_Dev_Board": {
            "title": "PSX Dev-Board Chipsets",
            "start_patterns": [r"PSX Dev-Board Chipsets", r"Dev-Board.*Chipset"],
            "end_patterns": [r"Hardware Numbers", r"Pinouts"]
        },
        "21_Hardware_Numbers": {
            "title": "Hardware Numbers",
            "start_patterns": [r"Hardware Numbers", r"Registers.*Addresses"],
            "end_patterns": [r"Pinouts", r"About.*Credits"]
        },
        "22_Pinouts": {
            "title": "Pinouts",
            "start_patterns": [r"Pinouts", r"Pin.*Assignment"],
            "end_patterns": [r"About.*Credits", r"Latest Research"]
        }
    }
    
    # Split content into lines for processing
    lines = content.split('\n')
    
    # Find section boundaries with better detection
    section_boundaries = {}
    
    for i, line in enumerate(lines):
        line_clean = line.strip()
        
        # Check if this line matches any section start pattern
        for section_id, section_info in sections.items():
            for start_pattern in section_info["start_patterns"]:
                if re.search(start_pattern, line_clean, re.IGNORECASE):
                    if section_id not in section_boundaries:
                        section_boundaries[section_id] = i
                        print(f"  Found {section_id}: {line_clean[:50]}...")
                    break
    
    print(f"📋 Found {len(section_boundaries)} section boundaries")
    
    # Create chunks for each section
    chunks_created = 0
    
    for section_id, section_info in sections.items():
        if section_id in section_boundaries:
            start_line = section_boundaries[section_id]
            
            # Find end line (next section or end of file)
            end_line = len(lines)
            for other_section_id, other_start in section_boundaries.items():
                if other_start > start_line and other_start < end_line:
                    end_line = other_start
            
            # Extract section content
            section_lines = lines[start_line:end_line]
            section_content = '\n'.join(section_lines)
            
            # Skip if content is too small (likely just a title)
            if len(section_content.strip()) < 100:
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
    
    print(f"\n✅ Improved chunking complete!")
    print(f"📁 Output directory: {output_dir}")
    print(f"📊 Chunks created: {chunks_created}")
    print(f"📋 Index file: INDEX.txt")

if __name__ == "__main__":
    chunk_psxspx_improved()
