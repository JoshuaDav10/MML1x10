# Splat Configuration Reference Guide
## Understanding and Configuring Splat for PSX Decompilation

*Based on analysis of `config/splat.us.rock_neo.yaml` and lessons learned from function configuration*

---

## **🎯 Overview**

Splat is a binary analysis and disassembly tool used in PSX decompilation projects. This document explains how to properly configure splat to extract functions and create assembly files from compiled binaries.

---

## **🏗️ Configuration Structure**

### **Basic Configuration File Structure**
```yaml
options:
  platform: psx                    # Target platform
  basename: rock_neo              # Base name for output files
  base_path: ../                  # Relative path to project root
  target_path: disks/us/ROCK_NEO.EXE  # Path to target binary
  asm_path: asm/rock_neo         # Output directory for assembly
  src_path: src/rock_neo         # Output directory for C source
  find_file_boundaries: yes       # Automatically find function boundaries
  use_legacy_include_asm: no     # Use modern INCLUDE_ASM syntax

segments:
  - [0x800, header]              # Header segment
  - name: main                    # Main code segment
    type: code                    # Segment type
    start: 0x800                  # Segment start address
    vram: 0x80010000             # VRAM address
    subalign: 4                   # Subsegment alignment
    subsegments:                  # List of subsegments
      - [0x800, rodata]          # Read-only data
      - [0x2490, c, main]        # C source segment
      - [0x3BD8, c, Code800133D8] # Another C source segment
      - [0x52C0, asm]            # Assembly segment
```

---

## **🔍 Key Concepts**

### **Segments vs Subsegments**

- **Segments**: Major divisions of the binary (e.g., `main`, `overlay`)
- **Subsegments**: Smaller divisions within segments that contain specific types of code

### **Address Format**

- **All addresses are relative offsets** from the segment start
- **NOT absolute addresses** like `0x8001C95C`
- **Example**: `0x1C95C` means "start at offset 0x1C95C from segment base"

### **Subsegment Types**

```yaml
- [0x800, rodata]        # Read-only data (constants, strings)
- [0x2490, c, main]      # C source code (will generate .c files)
- [0x52C0, asm]          # Assembly code (will generate .s files)
- [0x70EC4, data]        # Data section (variables, arrays)
```

### **Symbol Naming and Types - CRITICAL FOR FUNCTION SEGMENTS**

#### **The Root Cause of Our Build Errors**

The symbol naming mismatch we encountered is caused by **incorrect segment type definitions**. Here's how to fix it permanently:

#### **Symbol Type Differences**

- **Data Symbols (D_ prefix)**: Generated when splat thinks a segment contains data
  - Example: `D_8002ABE4` - splat expects a data file
  - Assembly file: `func_8002ABE4.s` - contains actual function code
  - **Result**: Build fails with "can't open file for reading"

- **Function Symbols (func_ prefix)**: Generated when splat correctly identifies code segments
  - Example: `func_8002ABE4` - splat expects a function file
  - Assembly file: `func_8002ABE4.s` - contains function code
  - **Result**: Build succeeds

#### **Correct splat.yaml Syntax for Code Segments**

**❌ WRONG - Causes Symbol Mismatch:**
```yaml
- name: func_8001B3E4           # Separate named segment
  type: code
  start: 0x1B3E4
  subsegments:
    - [0x1B3E4, c, func_8001B3E4]
```

**✅ CORRECT - Use Simple Subsegment Pattern (Like Working Segments):**
```yaml
- [0x1B3E4, c, func_8001B3E4]  # Simple subsegment within main code segment
```

**✅ WHY THIS WORKS:**
- **Working segments** (like `cd`, `player`, `game`) use this simple pattern
- **Splat automatically recognizes** these as code subsegments
- **Symbol generation works correctly** without explicit type specification
- **No symbol naming conflicts** occur

#### **Why This Matters**

- **Working segments** (like `cd`, `player`, `game`) work because they're implicitly recognized as code
- **Our custom segments** need explicit type specification to avoid symbol confusion
- **Splat's symbol resolution** depends on segment type to generate correct `INCLUDE_ASM` directives

---

## **⚠️ Common Pitfalls and Solutions**

### **Pitfall 1: Address Order Errors**
```
Error: segments out of order - (func_8001C95C starts at 0x1C95C, but next segment starts at 0x10638)
```

**Cause**: Subsegments must be in ascending address order within each segment.

**Solution**: Place subsegments in order from lowest to highest address.

### **Pitfall 2: Using Absolute Addresses**
```yaml
# WRONG - This will cause errors
- [0x8001C95C, c, func_8001C95C]

# CORRECT - Use relative offset
- [0x1C95C, c, func_8001C95C_segment]
```

**Cause**: Splat expects relative offsets, not full 32-bit addresses.

**Solution**: Subtract the segment base address (0x800) from the function address.

### **Pitfall 3: Creating Massive Segments**
```yaml
# This creates a segment from 0x1C95C to the next subsegment boundary
- [0x1C95C, c, func_8001C95C_segment]
```

**Cause**: Each subsegment creates a segment that spans to the next subsegment.

**Solution**: Plan subsegment boundaries carefully to avoid unwanted large segments.

### **Pitfall 4: INCLUDE_ASM Path Structure Mismatch**
```yaml
# Generated INCLUDE_ASM expects: func_8001D254/func_8001D254.s
# But files are located at: cd/func_8001D254.s
```

**Cause**: Splat generates INCLUDE_ASM directives expecting directory structure that doesn't match actual file organization.

**Solution**: Verify expected directory structure before cluster extraction, test single function extraction before scaling.

**Prevention**: Check INCLUDE_ASM path format in existing working functions before attempting cluster extraction.

---

## **🎯 How to Add New Functions**

### **Step 1: Determine Function Boundaries**
- Use Ghidra or other tools to find start and end addresses
- Example: `func_8001C95C` from `0x8001C95C` to `0x8001C9A8`

### **Step 2: Calculate Relative Offsets**
- Function start: `0x8001C95C - 0x800 = 0x1C95C`
- Function end: `0x8001C9A8 - 0x800 = 0x1C9A8`
- Size: `0x1C9A8 - 0x1C95C = 0x4C` (76 bytes)

### **Step 3: Choose Subsegment Strategy**

#### **Option A: Create Dedicated Segment (Recommended for Small Functions)**
```yaml
# Create a segment just for this function
- [0x1C95C, c, func_8001C95C_segment]
# Next subsegment starts at 0x1C9A8
- [0x1C9A8, asm, next_segment]
```

#### **Option B: Add to Existing Segment**
```yaml
# If the function fits within an existing segment's boundaries
# Modify the existing segment to include the function
```

### **Step 4: Test Configuration**
```bash
./venv/bin/python3 tools/splat/split.py config/splat.us.rock_neo.yaml
```

---

## **🔧 Advanced Configuration**

### **Overlay Support**
```yaml
# Overlay segments for different game levels
- name: ST00
  type: code
  start: 0x800
  vram: 0x80100000
  subsegments:
    - [0x800, rodata]
    - [0xB24, asm]
    - [0x1A454, data]
```

### **Symbol Resolution**
```yaml
options:
  symbol_addrs_path: config/syms.us.rock_neo.txt
  undefined_funcs_auto_path: config/undefined_funcs_auto.us.rock_neo.txt
  undefined_syms_auto_path: config/undefined_syms_auto.us.rock_neo.txt
```

---

## **📚 Useful Commands**

### **Split All Overlays**
```bash
make split_all
```

### **Split Specific Configuration**
```bash
./venv/bin/python3 tools/splat/split.py config/splat.us.rock_neo.yaml
```

### **Build with Overlays**
```bash
make chunks
```

---

## **🎯 Best Practices**

### **1. Plan Subsegment Boundaries**
- Map out all functions you want to extract
- Group related functions into logical segments
- Avoid creating unnecessarily large segments

### **2. Use Descriptive Names**
```yaml
# Good
- [0x1C95C, c, func_8001C95C_segment]

# Bad
- [0x1C95C, c, x]
```

### **3. Test Incrementally**
- Add one subsegment at a time
- Test the configuration after each addition
- Fix errors before adding more

### **4. Document Your Changes**
- Keep track of what functions you've added
- Note any special considerations or dependencies
- Update this reference document with new patterns

---

## **🚨 Troubleshooting**

### **Common Error Messages**

#### **"segments out of order"**
- Check that all addresses are in ascending order
- Verify you're using relative offsets, not absolute addresses

#### **"undefined reference"**
- Function exists in configuration but not in binary
- Check function boundaries in Ghidra
- Verify address calculations

#### **"can't open file for reading"**
- Assembly file not generated
- Check if splat ran successfully
- Verify output directory exists

#### **"can't open config/../asm/rock_neo/nonmatchings/[segment]/[symbol].s for reading"**
- **Root Cause**: Symbol name mismatch between INCLUDE_ASM directive and actual assembly file
- **Symptoms**: Assembly file exists but with different symbol name (e.g., `func_8002ABE4.s` vs `D_8002ABE4`)
- **Primary Solution**: Use simple segment names (e.g., `func_8001B3E4` not `func_8001B3E4_segment`)
- **Secondary Solution**: Ensure function boundaries are correctly identified by splat
- **Prevention**: Follow the naming pattern of working segments (e.g., `cd`, `player`, `game`)

#### **"Symbol Naming Still Wrong After Configuration Fix"**
- **Root Cause**: Function boundaries may be incorrectly defined or splat can't identify function structure
- **Symptoms**: Even with correct configuration, symbols still have `D_` prefix instead of `func_` prefix
- **Investigation Steps**:
  1. Verify function boundaries in Ghidra are accurate
  2. Check if function contains valid MIPS function prologue/epilogue
  3. Ensure function is not part of a larger data structure
  4. Verify the function is actually executable code, not data
- **Advanced Solutions**:
  1. Use `find_file_boundaries: yes` in splat options
  2. Check symbol table for correct function identification
  3. Consider using `auto_decompile_empty_functions: yes` for simple functions

#### **"Functions Without Standard Prologues - SPLAT LIMITATION"**
- **Root Cause**: Splat fundamentally cannot recognize functions that lack standard MIPS function prologues
- **Symptoms**: 
  - Function starts with non-standard instructions (e.g., `sb zero, 0x2(s0)` instead of stack setup)
  - Splat generates `D_` symbols instead of `func_` symbols
  - Build fails with "can't open file for reading" errors
- **Evidence**: `func_8001B3E4` starts with `sb zero, 0x2(s0)` and splat generates `D_8002ABE4`
- **Solutions**:
  1. **Accept the limitation**: Use `D_` symbols and manually fix assembly file names
  2. **Find alternative boundaries**: Look for functions with proper prologues
  3. **Manual symbol mapping**: Create a mapping between `D_` symbols and actual function names
  4. **Post-processing script**: Rename assembly files after splat generation
- **Prevention**: Only attempt to extract functions that have standard MIPS function prologues

### **Debugging Steps**
1. **Check the logs**: Look in `logs/` directory for detailed error messages
2. **Verify addresses**: Double-check all address calculations
3. **Test incrementally**: Add one subsegment at a time
4. **Compare with working examples**: Look at existing configurations

---

## **📖 Examples from Our Project**

### **Working Configuration Examples**

#### **Main Segment Structure**
```yaml
subsegments:
  - [0x800, rodata]                    # Constants and data
  - [0x2490, c, main]                  # Main program code
  - [0x3BD8, c, Code800133D8]          # Additional code section
  - [0x52C0, asm]                      # Assembly code
  - [0x5DA4, c, game]                  # Game logic
  - [0x77D4, asm]                      # More assembly
  - [0xA0C0, c, sound]                 # Sound system
  - [0xBBE4, c, cd]                    # CD-ROM system
  - [0xE054, c, scene]                 # Scene management
  - [0x10638, asm]                     # Assembly code
  - [0x1C95C, c, func_8001C95C_segment] # Our added function
  - [0x2C640, c, player]               # Player system
```

#### **Address Calculation Example**
```yaml
# Function: func_8001C95C
# Absolute address: 0x8001C95C
# Segment base: 0x800
# Relative offset: 0x8001C95C - 0x800 = 0x1C95C
# Configuration: [0x1C95C, c, func_8001C95C_segment]
```

---

## **🔮 Future Improvements**

### **Potential Enhancements**
1. **Function-level granularity**: Add support for single function extraction
2. **Automatic boundary detection**: Better automatic function boundary finding
3. **Template system**: Standardized configurations for common patterns
4. **Validation tools**: Check configuration before running splat

### **Integration with Other Tools**
1. **Ghidra integration**: Export function boundaries directly
2. **Build system integration**: Automatic configuration updates
3. **Progress tracking**: Monitor decompilation progress

---

## **📝 Notes and Lessons Learned**

### **Key Insights**
1. **Splat creates segments, not individual functions** - each subsegment spans to the *next* defined subsegment
2. **Addresses must be relative offsets** - never use absolute 32-bit addresses
3. **Order matters** - subsegments must be in ascending address order
4. **Planning is crucial** - map out all functions before configuring

### **What We Learned**
1. **Function boundaries from Ghidra** are essential for proper configuration
2. **Incremental testing** prevents configuration errors from compounding
3. **Understanding the tool's behavior** is more important than guessing syntax
4. **Documentation and examples** are invaluable for learning

---

## **📝 UPDATE LOG**

- **Created**: Current session - Consolidated from splat_configuration_reference.md
- **Last Updated**: Current session
- **Next Review**: After next configuration change
- **Update Frequency**: After each new configuration pattern discovered

---

**This document serves as the definitive reference for splat configuration. Each new function extraction should follow these established patterns.**
