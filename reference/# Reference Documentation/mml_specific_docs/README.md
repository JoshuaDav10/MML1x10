# MML-Specific Documentation

**Purpose**: Mega Man Legends specific documentation and tools for decompilation  
**Status**: Active research and tool collection  
**Last Updated**: Current session

## 📋 **OVERVIEW**

This directory contains **MML-specific documentation and tools** that are essential for understanding Mega Man Legends' unique implementation details, file formats, and decompilation approaches.

### **📁 CONTENTS**

| Directory | Description | Relevance | Status |
|-----------|-------------|-----------|---------|
| **chrisnonyminus_mml1/** | MML decompilation project | ⭐⭐⭐⭐⭐ **Critical** | ✅ Downloaded |
| **dash_editor/** | MML file format tools | ⭐⭐⭐⭐ **High** | ✅ Downloaded |

## 🎯 **KEY RESOURCES**

### **1. ChrisNonyminus/mml1 - MML Decompilation Project**

**URL**: [https://github.com/ChrisNonyminus/mml1](https://github.com/ChrisNonyminus/mml1)  
**Status**: Work-in-progress decompilation  
**Size**: 5.13 MB (11,038 objects)

#### **What This Provides**
- **Complete MML decompilation** in progress
- **Build system** and tools
- **Source code structure** and organization
- **Function naming conventions** used in MML
- **Data structure definitions** specific to MML
- **Asset extraction** methods

#### **Key Files**
- **`mml1.us.xml`**: Splat configuration for MML
- **`src/rock_neo/`**: Decompiled MML source code
- **`include/`**: Header files and definitions
- **`tools/`**: MML-specific tools and utilities
- **`Makefile`**: Build system for MML

#### **Critical Insights**
- **Function naming**: How MML functions are named and organized
- **Code structure**: How MML code is structured and modularized
- **Build process**: How to build and test MML decompilation
- **Asset handling**: How MML handles game assets

### **2. DashEditor - MML File Format Tools**

**URL**: [https://github.com/OmbraRD/DashEditor](https://github.com/OmbraRD/DashEditor)  
**Status**: MML translation toolkit v0.9.8  
**Size**: 54.45 KB (165 objects)

#### **What This Provides**
- **BIN file disassembly/reassembly** for MML
- **TIM file handling** (texture format)
- **Font extraction/insertion** (FONT.DAT, KAIFONT.DAT)
- **Message file handling** (MSG files)
- **Text extraction/insertion** from EXE files

#### **Key Files**
- **`DashEditor.py`**: Main Python tool for MML file manipulation
- **`Formats/`**: File format specifications
- **`extract.bat`**: Batch extraction script
- **`compress.bat`**: Batch compression script

#### **Critical Insights**
- **File formats**: MML-specific file format specifications
- **Asset extraction**: How to extract and modify MML assets
- **Text handling**: How MML handles text and dialogue
- **Texture formats**: MML-specific texture handling

## 🔍 **MML-SPECIFIC FILE FORMATS**

### **BIN Files**
- **Purpose**: Game data files (levels, objects, scripts)
- **Tools**: DashEditor for disassembly/reassembly
- **Content**: Level data, object definitions, game logic

### **TIM Files**
- **Purpose**: PlayStation texture format
- **Types**: 4bpp and 8bpp textures
- **Tools**: DashEditor, Tim2view for editing
- **Content**: Character textures, UI elements, backgrounds

### **MSG Files**
- **Purpose**: Game text and dialogue
- **Format**: Extracted to TXT for editing
- **Content**: Dialogue, menu text, system messages

### **Font Files**
- **FONT.DAT**: Main game font
- **KAIFONT.DAT**: Japanese character font
- **Tools**: DashEditor for extraction/insertion

## 🚀 **IMMEDIATE APPLICATIONS FOR OUR PROJECT**

### **1. Function Mapping**
- **Use ChrisNonyminus naming**: Adopt their function naming conventions
- **Reference their structure**: Use their code organization approach
- **Learn from their progress**: See what they've already decompiled

### **2. File Format Understanding**
- **Use DashEditor**: Extract and analyze MML assets
- **Understand data structures**: Learn how MML stores game data
- **Asset analysis**: Understand MML's asset pipeline

### **3. Build System**
- **Reference their Makefile**: Learn their build process
- **Use their tools**: Adopt their toolchain approach
- **Follow their patterns**: Use their development workflow

### **4. Code Analysis**
- **Study their decompiled code**: See how they approach MML functions
- **Learn their patterns**: Understand MML-specific code patterns
- **Reference their headers**: Use their data structure definitions

## 📊 **QUALITY ASSESSMENT**

### **ChrisNonyminus/mml1**
- ✅ **Active Development**: Regular updates and contributions
- ✅ **Comprehensive**: Covers all major MML systems
- ✅ **Well-Documented**: Clear build instructions and structure
- ✅ **Community Support**: Active community involvement
- ✅ **Professional Quality**: High-quality decompilation work

### **DashEditor**
- ✅ **MML-Specific**: Designed specifically for MML
- ✅ **Comprehensive**: Covers all major MML file formats
- ✅ **Practical**: Real-world tested translation tool
- ✅ **Well-Documented**: Clear usage instructions
- ✅ **Maintained**: Active development and updates

## 🔗 **INTEGRATION WITH EXISTING REFERENCES**

### **Perfect Complement**
These MML-specific resources complement our existing PlayStation documentation:

```
Reference Documentation/
├── mips_manual_chunks/     # Official MIPS reference
├── padua_psx_docs/         # Practical PSX assembly
├── drhell_psx_research/    # Hardware research
├── psxspx_sections/        # Complete PSX specifications
├── psyq/                   # Official Sony libraries
├── nolibgs_homebrew_docs/  # Modern homebrew development
└── mml_specific_docs/      # MML-specific tools (THIS)
```

**Complete Knowledge Flow**:
- **Official Specs** → **Hardware Research** → **Practical Assembly** → **MML-Specific** → **Modern Development**

## 🎯 **NEXT STEPS**

### **Immediate Actions**
1. **Study ChrisNonyminus structure**: Understand their approach
2. **Use DashEditor**: Extract and analyze MML assets
3. **Reference their naming**: Adopt their function naming conventions
4. **Learn their patterns**: Understand MML-specific code patterns

### **Medium-term Goals**
1. **Integrate their tools**: Use their build system and tools
2. **Adopt their structure**: Organize our project like theirs
3. **Learn from their progress**: See what they've accomplished
4. **Contribute back**: Share our insights with their project

## 🎉 **CONCLUSION**

**EXCELLENT ADDITION** to our reference library! These MML-specific resources provide:

- **Real-world MML decompilation** experience
- **MML-specific file format** understanding
- **Practical tools** for MML analysis
- **Community knowledge** and best practices

**This completes our comprehensive MML decompilation reference ecosystem!** We now have everything needed to understand and decompile Mega Man Legends at both the PlayStation hardware level and the MML-specific implementation level.

**Perfect for accelerating our MML decompilation work!** 🎯
