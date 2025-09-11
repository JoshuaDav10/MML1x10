# NOLIBGS HOMEBREW DOCUMENTATION
================================================================================
Source: https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki
Downloaded: Wed Sep 10 05:01:35 PM CDT 2025
Wiki pages downloaded: 14
Purpose: PSX homebrew development without libgs for MML decompilation
================================================================================

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
