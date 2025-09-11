#!/usr/bin/env python3
"""
Nolibgs Documentation Downloader and Organizer
Downloads and organizes nolibgs wiki content for MML decompilation project.
"""

import os
import requests
import json
from pathlib import Path
import time

def download_nolibgs_docs():
    base_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation")
    nolibgs_dir = base_dir / "nolibgs_homebrew_docs"
    
    print("🔍 Nolibgs Documentation Downloader")
    print("=" * 60)
    
    # Create directory structure
    nolibgs_dir.mkdir(exist_ok=True)
    
    # Create subdirectories
    subdirs = {
        "file_formats": "PSX file format specifications (TIM, TMD, VAG, XA, etc.)",
        "tools": "PSX development tools and utilities",
        "low_level": "Low-level PSX programming without libgs",
        "examples": "Code examples and implementation samples",
        "mml_guides": "MML-specific asset analysis guides"
    }
    
    for subdir, description in subdirs.items():
        (nolibgs_dir / subdir).mkdir(exist_ok=True)
        print(f"📁 Created: {subdir} - {description}")
    
    # GitHub API endpoints for nolibgs wiki
    github_api_base = "https://api.github.com/repos/ABelliqueux/nolibgs_hello_worlds"
    wiki_pages = [
        "BS", "CD", "CDDA", "DOSBOX", "FONT", "MOD", "OVL", 
        "SPU", "STP", "STR", "TIM", "TMD", "VAG", "XA"
    ]
    
    print(f"\n📥 Downloading nolibgs wiki content...")
    
    # Download each wiki page
    downloaded_count = 0
    for page in wiki_pages:
        try:
            # GitHub API for wiki pages
            url = f"{github_api_base}/wiki/{page}"
            response = requests.get(url, timeout=30)
            
            if response.status_code == 200:
                # Save raw content
                content_file = nolibgs_dir / "file_formats" / f"{page}.md"
                with open(content_file, 'w', encoding='utf-8') as f:
                    f.write(response.text)
                
                print(f"  ✅ Downloaded: {page}.md")
                downloaded_count += 1
            else:
                print(f"  ❌ Failed to download {page}: {response.status_code}")
                
        except Exception as e:
            print(f"  ❌ Error downloading {page}: {str(e)}")
        
        # Rate limiting
        time.sleep(1)
    
    # Download main repository files
    print(f"\n📥 Downloading repository files...")
    
    try:
        # Get repository contents
        contents_url = f"{github_api_base}/contents"
        response = requests.get(contents_url, timeout=30)
        
        if response.status_code == 200:
            contents = response.json()
            
            for item in contents:
                if item['type'] == 'file' and item['name'].endswith(('.c', '.h', '.asm', '.txt', '.md')):
                    try:
                        # Download file content
                        file_response = requests.get(item['download_url'], timeout=30)
                        if file_response.status_code == 200:
                            # Determine subdirectory
                            if item['name'].endswith(('.c', '.h', '.asm')):
                                subdir = "examples"
                            else:
                                subdir = "tools"
                            
                            file_path = nolibgs_dir / subdir / item['name']
                            with open(file_path, 'w', encoding='utf-8') as f:
                                f.write(file_response.text)
                            
                            print(f"  ✅ Downloaded: {item['name']} -> {subdir}/")
                            downloaded_count += 1
                            
                    except Exception as e:
                        print(f"  ❌ Error downloading {item['name']}: {str(e)}")
                
                time.sleep(0.5)  # Rate limiting
                
    except Exception as e:
        print(f"  ❌ Error accessing repository contents: {str(e)}")
    
    # Create MML-specific guides
    print(f"\n📝 Creating MML-specific guides...")
    
    create_mml_guides(nolibgs_dir)
    
    # Create main index
    create_main_index(nolibgs_dir, downloaded_count)
    
    print(f"\n✅ Nolibgs documentation download complete!")
    print(f"📁 Directory: {nolibgs_dir}")
    print(f"📊 Files downloaded: {downloaded_count}")
    print(f"📋 Main index: README.md")

def create_mml_guides(nolibgs_dir):
    """Create MML-specific asset analysis guides"""
    
    # TIM format guide for MML
    tim_guide = """# TIM Format Analysis for Mega Man Legends

## Overview
TIM (Texture Image) files are used extensively in MML for textures, sprites, and UI elements.

## MML-Specific Usage
- Character textures
- Environment textures  
- UI elements and menus
- Sprite animations

## Analysis Tools
- Use PSX tools to extract TIM files from MML assets
- Analyze texture dimensions and color depths
- Identify texture usage patterns

## File Structure
[Detailed TIM format specification would go here]
"""
    
    with open(nolibgs_dir / "mml_guides" / "TIM_Format_MML_Analysis.md", 'w') as f:
        f.write(tim_guide)
    
    # TMD format guide for MML
    tmd_guide = """# TMD Format Analysis for Mega Man Legends

## Overview
TMD (3D Model) files contain 3D geometry data for characters, objects, and environments.

## MML-Specific Usage
- Character models (Rock, Roll, Tron, etc.)
- Enemy models
- Environment objects
- Weapon models

## Analysis Tools
- Extract TMD files from MML assets
- Analyze vertex data and polygon counts
- Identify animation data

## File Structure
[Detailed TMD format specification would go here]
"""
    
    with open(nolibgs_dir / "mml_guides" / "TMD_Format_MML_Analysis.md", 'w') as f:
        f.write(tmd_guide)
    
    # VAG audio guide for MML
    vag_guide = """# VAG Audio Format Analysis for Mega Man Legends

## Overview
VAG (Voice Audio) files contain compressed audio data for sound effects and voice samples.

## MML-Specific Usage
- Character voice samples
- Sound effects
- UI audio feedback
- Environmental audio

## Analysis Tools
- Extract VAG files from MML assets
- Convert VAG to WAV for analysis
- Identify audio usage patterns

## File Structure
[Detailed VAG format specification would go here]
"""
    
    with open(nolibgs_dir / "mml_guides" / "VAG_Audio_MML_Analysis.md", 'w') as f:
        f.write(vag_guide)
    
    # XA audio guide for MML
    xa_guide = """# XA Audio Format Analysis for Mega Man Legends

## Overview
XA (Extended Audio) files contain compressed audio data for music and longer audio sequences.

## MML-Specific Usage
- Background music
- Cutscene audio
- Ambient soundtracks
- Voice dialogue

## Analysis Tools
- Extract XA files from MML assets
- Convert XA to WAV for analysis
- Identify music and audio patterns

## File Structure
[Detailed XA format specification would go here]
"""
    
    with open(nolibgs_dir / "mml_guides" / "XA_Audio_MML_Analysis.md", 'w') as f:
        f.write(xa_guide)
    
    print("  ✅ Created MML-specific analysis guides")

def create_main_index(nolibgs_dir, downloaded_count):
    """Create main index file"""
    
    index_content = f"""# NOLIBGS HOMEBREW DOCUMENTATION
{'='*80}
Source: https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki
Downloaded: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Files downloaded: {downloaded_count}
Purpose: PSX homebrew development without libgs for MML decompilation
{'='*80}

## OVERVIEW

This documentation provides comprehensive information about PlayStation (PSX) homebrew 
development without using Sony's official libgs library. It focuses on low-level 
programming and modern development practices, making it valuable for MML decompilation.

## DIRECTORY STRUCTURE

### file_formats/
PSX file format specifications including:
- TIM: Texture Image format
- TMD: 3D Model format  
- VAG: Voice Audio format
- XA: Extended Audio format
- CD, CDDA, FONT, MOD, OVL, SPU, STP, STR

### tools/
PSX development tools and utilities:
- File format converters
- Asset extraction tools
- Development utilities

### low_level/
Low-level PSX programming documentation:
- Hardware-level programming
- Direct GPU access
- Custom audio processing
- Memory management

### examples/
Code examples and implementation samples:
- Working code examples
- Implementation patterns
- Best practices

### mml_guides/
MML-specific asset analysis guides:
- TIM_Format_MML_Analysis.md
- TMD_Format_MML_Analysis.md  
- VAG_Audio_MML_Analysis.md
- XA_Audio_MML_Analysis.md

## USAGE FOR MML DECOMPILATION

This documentation is particularly useful for:
1. Understanding MML's file formats and asset structure
2. Extracting and analyzing game assets
3. Low-level programming techniques
4. Modern PSX development practices

## INTEGRATION WITH EXISTING DOCS

This complements our existing documentation:
- PSYQ Documentation: Official Sony development libraries
- PSXSPX Specifications: Hardware specifications and technical details
- Nolibgs Documentation: Modern homebrew development practices

## NEXT STEPS

1. Review file format specifications for MML asset analysis
2. Use tools for extracting and converting MML assets
3. Apply low-level programming techniques to MML reverse engineering
4. Create MML-specific asset analysis workflows
"""
    
    with open(nolibgs_dir / "README.md", 'w') as f:
        f.write(index_content)

if __name__ == "__main__":
    download_nolibgs_docs()
