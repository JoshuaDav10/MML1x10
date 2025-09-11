#!/usr/bin/env python3
"""
PSXSPX Specifications Chunker
Chunks the large PSXSPX specifications file into organized sections based on table of contents.
"""

import re
from pathlib import Path

def chunk_psxspx_specifications():
    input_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX_Specifications.txt")
    output_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/psxspx_sections")
    
    print("🔍 PSXSPX Specifications Chunker")
    print("=" * 60)
    
    # Create output directory
    output_dir.mkdir(exist_ok=True)
    
    # Read the full file
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"📄 Input file: {input_file}")
    print(f"📊 File size: {len(content)} characters")
    
    # Define sections based on table of contents
    sections = {
        "01_Memory_Map": {
            "title": "Memory Map",
            "keywords": ["Memory Map", "KUSEG", "KSEG0", "KSEG1", "Main RAM", "BIOS ROM", "VRAM"]
        },
        "02_IO_Map": {
            "title": "I/O Map", 
            "keywords": ["I/O Map", "I/O Ports", "Memory Control", "Cache Control"]
        },
        "03_GPU": {
            "title": "Graphics Processing Unit (GPU)",
            "keywords": ["Graphics Processing Unit", "GPU", "Framebuffer", "Texture", "Palette", "Drawing"]
        },
        "04_GTE": {
            "title": "Geometry Transformation Engine (GTE)",
            "keywords": ["Geometry Transformation Engine", "GTE", "Matrix", "Vector", "3D Math"]
        },
        "05_MDEC": {
            "title": "Macroblock Decoder (MDEC)",
            "keywords": ["Macroblock Decoder", "MDEC", "Video", "Motion", "Decoding"]
        },
        "06_SPU": {
            "title": "Sound Processing Unit (SPU)",
            "keywords": ["Sound Processing Unit", "SPU", "Audio", "Sound", "Voice", "Channel"]
        },
        "07_Interrupts": {
            "title": "Interrupts",
            "keywords": ["Interrupts", "IRQ", "Exception", "Interrupt Controller"]
        },
        "08_DMA": {
            "title": "DMA Channels",
            "keywords": ["DMA Channels", "DMA", "Direct Memory Access", "Transfer"]
        },
        "09_Timers": {
            "title": "Timers",
            "keywords": ["Timers", "Timer", "Counter", "Clock"]
        },
        "10_CDROM": {
            "title": "CDROM Drive and File Formats",
            "keywords": ["CDROM Drive", "CDROM File Formats", "CD", "Disc", "XA", "STR"]
        },
        "11_Controllers": {
            "title": "Controllers and Memory Cards",
            "keywords": ["Controllers", "Memory Cards", "Controller", "Pad", "Memory Card"]
        },
        "12_PocketStation": {
            "title": "Pocketstation",
            "keywords": ["Pocketstation", "Pocket Station"]
        },
        "13_Serial_Ports": {
            "title": "Serial Port (SIO)",
            "keywords": ["Serial Port", "SIO", "Serial", "Communication"]
        },
        "14_Expansion": {
            "title": "Expansion Port (PIO)",
            "keywords": ["Expansion Port", "PIO", "Expansion"]
        },
        "15_Memory_Control": {
            "title": "Memory Control",
            "keywords": ["Memory Control", "Cache", "Memory Management"]
        },
        "16_CPU": {
            "title": "CPU Specifications",
            "keywords": ["CPU Specifications", "MIPS", "R3000A", "Processor"]
        },
        "17_BIOS": {
            "title": "Kernel (BIOS)",
            "keywords": ["Kernel", "BIOS", "System Call", "Kernel Function"]
        },
        "18_Arcade": {
            "title": "Arcade Cabinets",
            "keywords": ["Arcade Cabinets", "Arcade", "Cabinet"]
        },
        "19_Cheat_Devices": {
            "title": "Cheat Devices",
            "keywords": ["Cheat Devices", "Cheat", "Action Replay", "Game Shark"]
        },
        "20_Dev_Board": {
            "title": "PSX Dev-Board Chipsets",
            "keywords": ["PSX Dev-Board Chipsets", "Dev-Board", "Development", "Chipset"]
        },
        "21_Hardware_Numbers": {
            "title": "Hardware Numbers",
            "keywords": ["Hardware Numbers", "Registers", "Addresses", "Values"]
        },
        "22_Pinouts": {
            "title": "Pinouts",
            "keywords": ["Pinouts", "Pins", "Connector", "Pin Assignment"]
        },
        "23_Unpredictable": {
            "title": "Unpredictable Things",
            "keywords": ["Unpredictable Things", "Undocumented", "Unknown", "Mystery"]
        }
    }
    
    # Split content into lines for processing
    lines = content.split('\n')
    
    # Find section boundaries
    section_boundaries = {}
    current_section = None
    
    for i, line in enumerate(lines):
        line_clean = line.strip()
        
        # Check if this line matches any section title
        for section_id, section_info in sections.items():
            if line_clean == section_info["title"]:
                section_boundaries[section_id] = i
                current_section = section_id
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
        if section_id in section_boundaries:
            safe_title = re.sub(r'[^\w\s-]', '', section_info['title']).strip()
            safe_title = re.sub(r'[-\s]+', '_', safe_title)
            filename = f"{section_id}_{safe_title}.txt"
            file_path = output_dir / filename
            if file_path.exists():
                file_size = file_path.stat().st_size
                file_size_kb = file_size / 1024
                index_content += f"\n{section_id}: {section_info['title']}\n"
                index_content += f"  File: {filename}\n"
                index_content += f"  Size: {file_size_kb:.1f} KB\n"
                index_content += f"  Keywords: {', '.join(section_info['keywords'][:3])}...\n"
    
    # Write main index
    index_file = output_dir / "INDEX.txt"
    with open(index_file, 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Chunking complete!")
    print(f"📁 Output directory: {output_dir}")
    print(f"📊 Chunks created: {chunks_created}")
    print(f"📋 Index file: INDEX.txt")
    
    # Show file sizes
    print(f"\n📊 Chunk sizes:")
    for file_path in sorted(output_dir.glob("*.txt")):
        if file_path.name != "INDEX.txt":
            size_kb = file_path.stat().st_size / 1024
            print(f"  {file_path.name}: {size_kb:.1f} KB")

if __name__ == "__main__":
    chunk_psxspx_specifications()
