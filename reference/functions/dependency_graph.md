# Function Dependency Graph
## Mapping Function Call Relationships and Dependencies in Mega Man Legends

*This document tracks how functions call each other, enabling dependency analysis and extraction planning*

---

## **🎯 Overview**

The function dependency graph maps **call relationships** between functions, showing:
- **Which functions call which** other functions
- **Dependency chains** that must be resolved in order
- **Critical functions** that many others depend on
- **Extraction order** for optimal decompilation

**Goal**: Understand function relationships to plan optimal extraction order and identify shared dependencies.

---

## **🔍 Current Dependency Analysis**

### **Functions Successfully Extracted and Analyzed**

#### **1. func_8001C95C - CD-ROM System Initialization**
- **Status**: ✅ EXTRACTED + ✅ DECOMPILED + ✅ WORKING
- **Dependencies**: 
  - `CdSyncCallback` (PSX BIOS)
  - `CdReadyCallback` (PSX BIOS)
  - `CdReset` (PSX BIOS)
  - `CdPosToInt` (PSX BIOS)
- **Called By**: `main()` function
- **Dependency Level**: 1 (only PSX BIOS dependencies)

#### **2. func_80013420 - Main Game Loop**
- **Status**: ✅ EXTRACTED + ✅ DECOMPILED + ✅ WORKING
- **Dependencies**:
  - `Cd_read_comb` (CD-ROM function - needs extraction)
  - `Sound_call` (Sound function - needs extraction)
  - `func_8005C258` (Unknown function - needs extraction)
  - `func_8001D888` (Unknown function - needs extraction)
  - `MojiTaskKill` (Task management - needs extraction)
- **Called By**: Main game loop, multiple call sites
- **Dependency Level**: 2 (depends on other game functions)

#### **3. func_8001B3E4 - CD-ROM System Initialization**
- **Status**: ✅ EXTRACTED + ✅ ANALYZED + ✅ IMPLEMENTED
- **Dependencies**: 
  - `CdInit` (PSX BIOS)
  - `func_8001D2BC` (Unknown function - needs extraction)
- **Called By**: `main()` function
- **Dependency Level**: 1 (only PSX BIOS + 1 game function)

#### **4. func_8001B4C4 - Trivial Function**
- **Status**: ✅ EXTRACTED + ✅ IMPLEMENTED
- **Dependencies**: None
- **Called By**: Data section (multiple call sites)
- **Dependency Level**: 0 (no dependencies)

#### **5. func_8001B63C - Trivial Function**
- **Status**: ✅ EXTRACTED + ✅ IMPLEMENTED
- **Dependencies**: None
- **Called By**: Data section (multiple call sites)
- **Dependency Level**: 0 (no dependencies)

#### **6. func_8001B644 - State Machine Function**
- **Status**: ✅ EXTRACTED + ✅ IMPLEMENTED
- **Dependencies**:
  - `func_8001D394` (Unknown function - needs extraction)
  - `func_8001CB7C` (CD-ROM callback setup - ✅ IMPLEMENTED)
  - `func_8001CAAC` (Unknown function - needs extraction)
- **Called By**: Data section, func_8001B644
- **Dependency Level**: 1 (depends on other game functions)

#### **7. func_8001CB7C - CD-ROM Callback Setup**
- **Status**: ✅ EXTRACTED + ✅ IMPLEMENTED
- **Dependencies**:
  - `func_8001D394` (Unknown function - needs extraction)
  - `func_8001D254` (Unknown function - needs extraction)
  - `func_8001CC08` (Unknown function - needs extraction)
- **Called By**: func_8001B644
- **Dependency Level**: 2 (depends on other game functions)

---

### **Functions Extracted but Not Analyzed**

#### **8-12. Cluster Functions (5 total)**
- **Status**: ✅ EXTRACTED
- **Dependencies**: Unknown (needs analysis)
- **Called By**: Unknown (needs analysis)
- **Dependency Level**: Unknown

---

## **📊 Dependency Graph Visualization**

### **Current Known Dependencies**
```
main()
├── func_8001C95C (CD-ROM Init) ✅ WORKING
│   ├── CdSyncCallback (PSX BIOS)
│   ├── CdReadyCallback (PSX BIOS)
│   ├── CdReset (PSX BIOS)
│   └── CdPosToInt (PSX BIOS)
├── func_80013420 (Game Loop) ✅ WORKING
│   ├── Cd_read_comb (NEEDS EXTRACTION)
│   ├── Sound_call (NEEDS EXTRACTION)
│   ├── func_8005C258 (NEEDS EXTRACTION)
│   ├── func_8001D888 (NEEDS EXTRACTION)
│   └── MojiTaskKill (NEEDS EXTRACTION)
└── func_8001B3E4 (CD-ROM System Init) ✅ IMPLEMENTED
    ├── CdInit (PSX BIOS)
    └── func_8001D2BC (NEEDS EXTRACTION)

Data Section
├── func_8001B4C4 (Trivial) ✅ IMPLEMENTED
├── func_8001B63C (Trivial) ✅ IMPLEMENTED
├── func_8001B644 (State Machine) ✅ IMPLEMENTED
│   ├── func_8001D394 (NEEDS EXTRACTION)
│   ├── func_8001CB7C (CD-ROM Callback) ✅ IMPLEMENTED
│   │   ├── func_8001D394 (NEEDS EXTRACTION)
│   │   ├── func_8001D254 (NEEDS EXTRACTION)
│   │   └── func_8001CC08 (NEEDS EXTRACTION)
│   └── func_8001CAAC (NEEDS EXTRACTION)
```

### **Extraction Priority Based on Dependencies**

#### **Priority 1: Functions with No Dependencies**
- **func_8001B4C4** ✅ (Already implemented)
- **func_8001B63C** ✅ (Already implemented)

#### **Priority 2: Functions with Known Dependencies**
- **func_8001C95C** ✅ (Already working)
- **func_8001B3E4** ✅ (Already implemented)
- **func_8001CB7C** ✅ (Already implemented)

#### **Priority 3: Functions Referenced by Implemented Code**
- **func_8001D394** (Called by func_8001B644 and func_8001CB7C)
- **func_8001D254** (Called by func_8001CB7C)
- **func_8001CC08** (Called by func_8001CB7C)
- **func_8001CAAC** (Called by func_8001B644)

#### **Priority 4: Functions Referenced by Decompiled Code**
- **Cd_read_comb** (Called by func_80013420)
- **Sound_call** (Called by func_80013420)
- **func_8005C258** (Called by func_80013420)
- **func_8001D888** (Called by func_80013420)
- **MojiTaskKill** (Called by func_80013420)

---

## **🔍 Dependency Analysis Techniques**

### **1. Call Site Analysis**
**Purpose**: Find all functions that call a specific function
**Method**: Search for `jal` instructions to the function address

```assembly
# Example: Function call to func_8001C95C
jal   func_8001C95C        # Call CD-ROM initialization
nop                        # Delay slot
```

**Tools**: 
- **Ghidra**: Search for cross-references
- **Assembly search**: Find `jal` instructions
- **Linker map**: Check symbol references

---

### **2. Function Pointer Analysis**
**Purpose**: Find functions called through function pointers
**Method**: Analyze jump table structures and function pointer arrays

```c
// Example: Function pointer table
void (*function_table[])(void) = {
    func_8001C95C,    // CD-ROM initialization
    func_80013420,    // Game loop
    func_8001B3E4,    // System initialization
    // ... more functions
};
```

**Tools**:
- **Jump table analysis**: Map jump table targets
- **Data section analysis**: Find function pointer arrays
- **Cross-reference analysis**: Identify pointer usage

---

### **3. Global Variable Analysis**
**Purpose**: Find functions that share global variables
**Method**: Analyze global variable access patterns

```assembly
# Example: Global variable access
lui   $v0, %hi(D_800989C4)    # Load upper address
lw    $v0, %lo(D_800989C4)($v0) # Load variable value
```

**Tools**:
- **Global variable mapping**: Track all `D_` symbols
- **Access pattern analysis**: Find functions using same variables
- **Dependency clustering**: Group related functions

---

## **🎯 Dependency Resolution Strategy**

### **1. Bottom-Up Approach**
**Strategy**: Extract functions with no dependencies first
**Benefits**: 
- Builds foundation for dependent functions
- Reduces extraction complexity
- Enables parallel work on independent functions

**Implementation**:
1. **Identify leaf functions** (no dependencies)
2. **Extract and analyze** these functions
3. **Update dependency graph** with new information
4. **Move to next dependency level**

---

### **2. Dependency Clustering**
**Strategy**: Extract related functions together
**Benefits**:
- Solves shared dependencies once
- Maintains context during analysis
- Reduces configuration overhead

**Implementation**:
1. **Group functions by dependency clusters**
2. **Extract entire clusters** together
3. **Resolve shared dependencies** in batch
4. **Apply learned patterns** across cluster

---

### **3. Critical Path Analysis**
**Strategy**: Focus on functions that block many others
**Benefits**:
- Eliminates major bottlenecks
- Enables parallel work
- Maximizes progress impact

**Implementation**:
1. **Identify critical functions** (many dependents)
2. **Prioritize extraction** of critical functions
3. **Measure impact** on overall progress
4. **Plan extraction order** based on criticality

---

## **📈 Dependency Tracking Metrics**

### **1. Dependency Resolution Progress**
- **Functions with resolved dependencies**: 7/11 (64%)
- **Functions with unknown dependencies**: 4/11 (36%)
- **Dependency chains mapped**: 3 (main → func_8001C95C, main → func_8001B3E4, func_8001B644 → func_8001CB7C)
- **Critical paths identified**: 2 (main function chain, data section chain)

### **2. Extraction Efficiency**
- **Functions extracted per dependency level**: 11 at level 1
- **Dependency resolution rate**: 7 functions resolved
- **Parallel extraction potential**: High (many independent functions)
- **Bottleneck identification**: func_8001D394 extraction needed (called by multiple functions)

### **3. Progress Impact**
- **Immediate impact**: 7 functions fully analyzed
- **Medium-term impact**: 4 functions ready for analysis
- **Long-term impact**: Foundation for dependency resolution
- **Efficiency multiplier**: Each resolved dependency enables more functions

---

## **🚀 Next Steps for Dependency Resolution**

### **Immediate (Next 2 weeks)**
1. **✅ Analyze func_8001B3E4** - Dependencies mapped
2. **✅ Extract func_8001D2BC cluster** - 11 functions extracted, path structure issue identified
3. **✅ Fix INCLUDE_ASM path structure** - Resolve directory structure mismatch
4. **✅ Complete cluster extraction** - Validate cluster functionality
5. **✅ Identify function call sites** - Find what calls our extracted functions

### **Medium-term (Next month)**
1. **Extract dependency clusters** - Group related functions
2. **Resolve shared dependencies** - Solve common problems once
3. **Build dependency templates** - Create patterns for common dependencies
4. **Measure extraction efficiency** - Track dependency resolution rate

### **Long-term (Next 3 months)**
1. **Automated dependency mapping** - Tools for automatic analysis
2. **Dependency prediction** - Anticipate dependencies before extraction
3. **Extraction optimization** - Optimal order based on dependencies
4. **Community dependency sharing** - Share knowledge with other projects

---

## **📝 UPDATE LOG**

- **Created**: Current session - Initial dependency graph
- **Last Updated**: Current session - Added 5 new implemented functions
- **Next Review**: After next function analysis
- **Update Frequency**: After each new dependency discovery

---

**This dependency graph enables optimal extraction planning. Each new function analyzed should update this graph with its dependencies and call relationships.**
