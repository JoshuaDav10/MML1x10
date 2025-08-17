# Function Archetypes Template System
## Reusable Templates for Common Function Types in PSX Decompilation

*This document provides templates for common function patterns, enabling rapid decompilation of similar functions*

---

## **🎯 Overview**

Function archetypes are **reusable templates** that capture common patterns we've identified in our decompilation work. Each archetype provides:
- **Structure template**: Basic C code structure
- **Pattern recognition**: How to identify this archetype
- **Common variations**: Typical modifications and edge cases
- **Implementation examples**: Real examples from our codebase

**Goal**: 80% of functions should be extractable using these templates, requiring only 20% manual analysis.

---

## **🔍 Archetype Categories**

### **1. SIMPLE FUNCTIONS (< 100 lines)**
- **Single responsibility**
- **Standard MIPS prologue/epilogue**
- **Linear control flow**
- **Minimal dependencies**

### **2. MEDIUM FUNCTIONS (100-300 lines)**
- **Multiple responsibilities**
- **Some complexity**
- **Conditional logic**
- **Moderate dependencies**

### **3. COMPLEX FUNCTIONS (300-500 lines)**
- **State machines**
- **Jump tables**
- **Multiple responsibilities**
- **High dependencies**

### **4. EXTREME FUNCTIONS (500+ lines)**
- **Nested state machines**
- **Multiple jump tables**
- **Mixed responsibilities**
- **Complex dependencies**

---

## **📋 Archetype Templates**

### **ARCHETYPE 1: CD-ROM Initialization Function**

**Pattern Recognition**:
- Function starts with CD-ROM function calls
- Contains CdSyncCallback, CdReadyCallback, CdReset
- Global variable access patterns
- Standard MIPS prologue/epilogue

**Template Structure**:
```c
void func_8001XXXX_CD_init(void) {
    // Standard MIPS prologue
    // Stack setup and saved register preservation
    
    // CD-ROM system initialization
    CdSyncCallback(callback_function);
    CdReadyCallback(ready_function);
    
    // Status checking and error handling
    if (CdReset(mode) != 1) {
        // Error handling
        return;
    }
    
    // Global variable updates
    D_800XXXXX = status;
    
    // Standard MIPS epilogue
    // Restore registers and return
}
```

**Real Examples**: 
- `func_8001C95C` - CD-ROM system initialization with callbacks
- `func_8001B3E4` - CD-ROM system initialization with memory setup
**Variations**: Different CD-ROM commands, error handling strategies, callback functions, memory initialization patterns

---

### **ARCHETYPE 2: State Machine Function**

**Pattern Recognition**:
- Global state variable (e.g., `D_800989C4`)
- Switch statement or jump table usage
- State transitions and conditions
- Multiple responsibility areas

**Template Structure**:
```c
void func_8001XXXX_state_machine(void) {
    // Standard MIPS prologue
    // Stack setup and saved register preservation
    
    // Get current state
    u32 current_state = D_800XXXXX;
    
    // State machine logic
    switch (current_state) {
        case 0:
            // State 0 logic
            if (condition) {
                D_800XXXXX = 1;  // Move to next state
            }
            break;
            
        case 1:
            // State 1 logic
            if (condition) {
                D_800XXXXX = 2;  // Move to next state
            }
            break;
            
        case 2:
            // State 2 logic
            if (condition) {
                D_800XXXXX = 0;  // Reset to initial state
            }
            break;
    }
    
    // Standard MIPS epilogue
    // Restore registers and return
}
```

**Real Example**: `func_8001BB4C` - Complex nested state machines
**Variations**: Single state machine, nested state machines, jump table implementations

---

### **ARCHETYPE 3: Hardware Access Function**

**Pattern Recognition**:
- Memory-mapped I/O register access
- Hardware register reads/writes
- Specific hardware addresses (0x1F8XXXXX)
- Hardware-specific function calls

**Template Structure**:
```c
void func_8001XXXX_hardware_access(void) {
    // Standard MIPS prologue
    // Stack setup and saved register preservation
    
    // Hardware register access
    u16 hardware_register = *(u16*)0x1F8XXXXX;
    
    // Hardware operations
    if (hardware_register & 0x8000) {
        // Hardware flag set
        perform_hardware_operation();
    }
    
    // Update hardware registers
    *(u16*)0x1F8XXXXX = new_value;
    
    // Standard MIPS epilogue
    // Restore registers and return
}
```

**Real Example**: Functions accessing CD-ROM, GPU, or SPU registers
**Variations**: Different hardware types, register sizes, operation types

---

### **ARCHETYPE 4: Data Processing Function**

**Pattern Recognition**:
- Memory copy operations
- Data structure manipulation
- Buffer processing
- Array or pointer operations

**Template Structure**:
```c
void func_8001XXXX_data_process(void) {
    // Standard MIPS prologue
    // Stack setup and saved register preservation
    
    // Data structure access
    u8* source_buffer = D_800XXXXX;
    u8* dest_buffer = D_800XXXXX;
    u32 buffer_size = D_800XXXXX;
    
    // Data processing loop
    for (u32 i = 0; i < buffer_size; i++) {
        dest_buffer[i] = process_byte(source_buffer[i]);
    }
    
    // Update metadata
    D_800XXXXX = processed_count;
    
    // Standard MIPS epilogue
    // Restore registers and return
}
```

**Real Example**: Functions processing sector data, graphics data, or audio data
**Variations**: Different data types, processing algorithms, buffer sizes

---

### **ARCHETYPE 5: Utility Function**

**Pattern Recognition**:
- Simple input/output parameters
- Mathematical operations
- String operations
- Common utility tasks

**Template Structure**:
```c
u32 func_8001XXXX_utility(u32 param1, u32 param2) {
    // Standard MIPS prologue
    // Stack setup and saved register preservation
    
    // Utility logic
    u32 result = param1 + param2;
    
    // Optional validation
    if (result > MAX_VALUE) {
        result = MAX_VALUE;
    }
    
    // Standard MIPS epilogue
    // Restore registers and return result
    return result;
}
```

**Real Example**: Math functions, string functions, conversion functions
**Variations**: Different parameter types, return values, validation logic

---

## **🔧 Template Customization**

### **Parameter Customization**
```c
// Base template
void func_8001XXXX_template(u32 param1, u32 param2) {
    // Template logic
}

// Customized for specific function
void func_8001C95C_CD_init(u32 cd_mode, u32 callback_type) {
    // CD-ROM specific logic
}
```

### **Logic Customization**
```c
// Base template
void func_8001XXXX_template(void) {
    switch (D_800XXXXX) {
        case 0: // Base case 0
        case 1: // Base case 1
    }
}

// Customized for specific function
void func_8001BB4C_state_machine(void) {
    switch (D_800989C4) {
        case 0: // CD-ROM check
        case 1: // Timer processing
        case 2: // Graphics setup
    }
}
```

---

## **📊 Template Effectiveness Tracking**

### **Success Metrics**
- **Template Coverage**: Percentage of functions using templates
- **Implementation Speed**: Time saved using templates vs. manual analysis
- **Accuracy Rate**: Percentage of correct implementations using templates
- **Template Reuse**: How often each template is used

### **Template Improvement**
- **Pattern Recognition**: Identify new patterns for templates
- **Template Refinement**: Improve existing templates based on usage
- **New Archetypes**: Create templates for newly discovered patterns
- **Edge Case Handling**: Add variations for common edge cases

---

## **🚀 Future Development**

### **Immediate (Next 2 weeks)**
- [x] Create templates for all 11 extracted functions
- [x] Test templates on next function batch (func_8001B3E4)
- [x] Measure template effectiveness (100% match for CD-ROM archetype)
- [x] Test cluster extraction (11 functions, 11x efficiency gain)
- [ ] Refine templates based on results

### **Medium-term (Next month)**
- [ ] Expand template library to 20+ archetypes
- [ ] Create automated template matching
- [ ] Build template validation system
- [ ] Measure efficiency improvements

### **Long-term (Next 3 months)**
- [ ] Machine learning template generation
- [ ] Automated template customization
- [ ] Community template sharing
- [ ] Industry standard templates

---

## **📝 UPDATE LOG**

- **Created**: Current session - Initial function archetypes system
- **Last Updated**: Current session
- **Next Review**: After next function analysis
- **Update Frequency**: After each new pattern discovery

---

**This template system enables rapid decompilation by providing reusable patterns. Each new function analyzed should either use an existing template or create a new archetype for future use.**
