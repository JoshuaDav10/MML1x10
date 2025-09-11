#!/usr/bin/env python3
"""
Simple Nolibgs Documentation Downloader
Uses wget and curl to download nolibgs wiki content.
"""

import os
import subprocess
from pathlib import Path

def download_nolibgs_simple():
    base_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation")
    nolibgs_dir = base_dir / "nolibgs_homebrew_docs"
    
    print("🔍 Simple Nolibgs Documentation Downloader")
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
    
    # Download main repository using wget
    print(f"\n📥 Downloading nolibgs repository...")
    
    try:
        # Clone the repository
        repo_url = "https://github.com/ABelliqueux/nolibgs_hello_worlds.git"
        repo_dir = nolibgs_dir / "repository"
        
        cmd = f"git clone {repo_url} {repo_dir}"
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        
        if result.returncode == 0:
            print("  ✅ Repository cloned successfully")
        else:
            print(f"  ❌ Git clone failed: {result.stderr}")
            
    except Exception as e:
        print(f"  ❌ Error cloning repository: {str(e)}")
    
    # Download wiki pages using curl
    print(f"\n📥 Downloading wiki pages...")
    
    wiki_pages = [
        "BS", "CD", "CDDA", "DOSBOX", "FONT", "MOD", "OVL", 
        "SPU", "STP", "STR", "TIM", "TMD", "VAG", "XA"
    ]
    
    downloaded_count = 0
    for page in wiki_pages:
        try:
            # Download wiki page as raw markdown
            url = f"https://raw.githubusercontent.com/wiki/ABelliqueux/nolibgs_hello_worlds/{page}.md"
            output_file = nolibgs_dir / "file_formats" / f"{page}.md"
            
            cmd = f"curl -s -L '{url}' -o '{output_file}'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0 and output_file.exists() and output_file.stat().st_size > 0:
                print(f"  ✅ Downloaded: {page}.md")
                downloaded_count += 1
            else:
                print(f"  ❌ Failed to download {page}.md")
                
        except Exception as e:
            print(f"  ❌ Error downloading {page}: {str(e)}")
    
    # Create MML-specific guides
    print(f"\n📝 Creating MML-specific guides...")
    create_mml_guides(nolibgs_dir)
    
    # Create main index
    create_main_index(nolibgs_dir, downloaded_count)
    
    print(f"\n✅ Nolibgs documentation download complete!")
    print(f"📁 Directory: {nolibgs_dir}")
    print(f"📊 Wiki pages downloaded: {downloaded_count}")
    print(f"📋 Main index: README.md")

def create_mml_guides(nolibgs_dir):
    """Create MML-specific asset analysis guides"""
    
    # TIM format guide for MML
    tim_guide = """# TIM Format Analysis for Mega Man Legends

## Overview
TIM (Texture Image) files are used extensively in MML for textures, sprites, and UI elements.

## MML-Specific Usage
- Character textures (Rock, Roll, Tron, etc.)
- Environment textures (cities, dungeons, etc.)
- UI elements and menus
- Sprite animations
- Weapon textures

## Analysis Tools
- Use PSX tools to extract TIM files from MML assets
- Analyze texture dimensions and color depths
- Identify texture usage patterns in game data

## File Structure
TIM files contain:
- Header with format information
- CLUT (Color Look-Up Table) data (optional)
- Pixel data in various formats (4bpp, 8bpp, 16bpp, 24bpp)

## MML Asset Analysis
1. Extract TIM files from MML game data
2. Identify character and environment textures
3. Analyze texture resolution and color depth
4. Map textures to specific game areas/characters

## Tools for MML
- PSX asset extractors
- TIM file viewers/converters
- Texture analysis utilities
"""
    
    with open(nolibgs_dir / "mml_guides" / "TIM_Format_MML_Analysis.md", 'w') as f:
        f.write(tim_guide)
    
    # TMD format guide for MML
    tmd_guide = """# TMD Format Analysis for Mega Man Legends

## Overview
TMD (3D Model) files contain 3D geometry data for characters, objects, and environments.

## MML-Specific Usage
- Character models (Rock, Roll, Tron, etc.)
- Enemy models and bosses
- Environment objects (buildings, vehicles, etc.)
- Weapon models
- Interactive objects

## Analysis Tools
- Extract TMD files from MML assets
- Analyze vertex data and polygon counts
- Identify animation data and bone structures
- Convert to modern 3D formats

## File Structure
TMD files contain:
- Header with model information
- Vertex data (positions, normals, UVs)
- Polygon data (faces, materials)
- Animation data (if present)

## MML Asset Analysis
1. Extract TMD files from MML game data
2. Identify character and object models
3. Analyze polygon counts and complexity
4. Map models to specific game areas/characters

## Tools for MML
- PSX model extractors
- TMD file viewers/converters
- 3D model analysis utilities
"""
    
    with open(nolibgs_dir / "mml_guides" / "TMD_Format_MML_Analysis.md", 'w') as f:
        f.write(tmd_guide)
    
    # VAG audio guide for MML
    vag_guide = """# VAG Audio Format Analysis for Mega Man Legends

## Overview
VAG (Voice Audio) files contain compressed audio data for sound effects and voice samples.

## MML-Specific Usage
- Character voice samples (Rock, Roll, Tron, etc.)
- Sound effects (weapons, environment, UI)
- UI audio feedback
- Environmental audio cues

## Analysis Tools
- Extract VAG files from MML assets
- Convert VAG to WAV for analysis
- Identify audio usage patterns
- Analyze audio quality and compression

## File Structure
VAG files contain:
- Header with audio information
- Compressed audio data (ADPCM)
- Loop information (if applicable)

## MML Asset Analysis
1. Extract VAG files from MML game data
2. Identify character voice samples
3. Analyze sound effect categories
4. Map audio to specific game events

## Tools for MML
- PSX audio extractors
- VAG file converters
- Audio analysis utilities
"""
    
    with open(nolibgs_dir / "mml_guides" / "VAG_Audio_MML_Analysis.md", 'w') as f:
        f.write(vag_guide)
    
    # XA audio guide for MML
    xa_guide = """# XA Audio Format Analysis for Mega Man Legends

## Overview
XA (Extended Audio) files contain compressed audio data for music and longer audio sequences.

## MML-Specific Usage
- Background music tracks
- Cutscene audio
- Ambient soundtracks
- Voice dialogue sequences
- Environmental music

## Analysis Tools
- Extract XA files from MML assets
- Convert XA to WAV for analysis
- Identify music and audio patterns
- Analyze audio quality and compression

## File Structure
XA files contain:
- Header with audio information
- Compressed audio data (XA ADPCM)
- Channel information
- Loop and timing data

## MML Asset Analysis
1. Extract XA files from MML game data
2. Identify music tracks and themes
3. Analyze audio quality and compression
4. Map audio to specific game areas/events

## Tools for MML
- PSX audio extractors
- XA file converters
- Audio analysis utilities
"""
    
    with open(nolibgs_dir / "mml_guides" / "XA_Audio_MML_Analysis.md", 'w') as f:
        f.write(xa_guide)
    
    # MML Asset Pipeline Guide
    pipeline_guide = """# MML Asset Analysis Pipeline

## Overview
This guide outlines the process for analyzing Mega Man Legends game assets using nolibgs documentation.

## Asset Types in MML
1. **Textures (TIM)**: Character sprites, environment textures, UI elements
2. **Models (TMD)**: 3D character models, objects, environments
3. **Audio (VAG/XA)**: Voice samples, sound effects, music
4. **Data Files**: Game logic, level data, configuration

## Analysis Workflow
1. **Extract Assets**: Use PSX tools to extract files from MML game data
2. **Identify Formats**: Determine file types using format signatures
3. **Convert Assets**: Convert to modern formats for analysis
4. **Analyze Content**: Study assets to understand game structure
5. **Document Findings**: Create documentation of asset usage

## Tools Required
- PSX asset extractors
- File format converters
- Analysis utilities
- Documentation tools

## MML-Specific Considerations
- Character asset organization
- Level-specific asset grouping
- Audio track identification
- Texture resolution analysis
"""
    
    with open(nolibgs_dir / "mml_guides" / "MML_Asset_Pipeline.md", 'w') as f:
        f.write(pipeline_guide)
    
    print("  ✅ Created MML-specific analysis guides")

def create_main_index(nolibgs_dir, downloaded_count):
    """Create main index file"""
    
    index_content = f"""# NOLIBGS HOMEBREW DOCUMENTATION
{'='*80}
Source: https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki
Downloaded: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
Wiki pages downloaded: {downloaded_count}
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
- MML_Asset_Pipeline.md

### repository/
Complete nolibgs repository with:
- Source code examples
- Implementation samples
- Development tools

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

## FILE FORMAT PRIORITIES FOR MML

### High Priority
- **TIM**: Essential for texture analysis
- **TMD**: Critical for 3D model understanding
- **VAG**: Important for audio analysis
- **XA**: Key for music and dialogue

### Medium Priority
- **CD/CDDA**: CD-ROM format understanding
- **FONT**: UI text rendering
- **MOD**: Module file formats

### Low Priority
- **OVL**: Overlay files
- **STP**: Step files
- **STR**: Streaming video
"""
    
    with open(nolibgs_dir / "README.md", 'w') as f:
        f.write(index_content)

if __name__ == "__main__":
    download_nolibgs_simple()
