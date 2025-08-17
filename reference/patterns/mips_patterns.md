# MIPS Patterns Reference
## Common MIPS Instruction Patterns for PSX Decompilation

*Consolidated from PSX_Decompilation_Knowledge_Compilation.md and practical experience*

---

## **🔍 Function Prologue Patterns**

### **Standard Function Prologue**
```assembly
# Standard function prologue
addiu $sp, $sp, -0x28     # Allocate stack space
sw    $ra, 0x24($sp)      # Save return address
sw    $s0, 0x20($sp)      # Save saved registers
sw    $s1, 0x1C($sp)      # Save more saved registers
# ... more saved registers as needed
```

### **Function Epilogue Pattern**
```assembly
# Standard function epilogue
lw    $ra, 0x24($sp)      # Restore return address
lw    $s0, 0x20($sp)      # Restore saved registers
lw    $s1, 0x1C($sp)      # Restore more saved registers
addiu $sp, $sp, 0x28      # Deallocate stack space
jr    $ra                  # Return
```

### **Non-Standard Prologues (SPLAT LIMITATION)**
**Problem**: Functions without standard prologues cannot be recognized by splat
**Symptoms**: 
- Function starts with non-standard instructions (e.g., `sb zero, 0x2(s0)`)
- Splat generates `D_` symbols instead of `func_` symbols
- Build fails with "can't open file for reading" errors

**Examples**:
```assembly
# Non-standard prologue (splat limitation)
sb zero, 0x2(s0)          # Store byte to memory
lw $v0, 0x4(s0)           # Load word from memory
# No stack setup, no saved register preservation
```

---

## **🔍 Global Variable Access Patterns**

### **Load Upper Immediate + Load Word Pattern**
```assembly
# Load upper immediate + load word
lui   $v0, %hi(D_800989C4)    # Load upper 16 bits of address
lw    $v0, %lo(D_800989C4)($v0) # Load lower 16 bits + offset
```

### **Load Upper Immediate + Load Halfword Pattern**
```assembly
# Load upper immediate + load halfword
lui   $at, %hi(D_800AD142)    # Load upper address
lh    $v0, %lo(D_800AD142)($at) # Load halfword
```

### **Store to Global Variable Pattern**
```assembly
# Store to global variable
lui   $at, %hi(D_800AD142)    # Load upper address
sh    $v0, %lo(D_800AD142)($at) # Store halfword
```

---

## **🔍 Function Call Patterns**

### **Function Call with Parameters**
```assembly
# Function call with parameters
addiu $a0, $zero, 0xA0    # Set first parameter
addiu $a1, $zero, 0x00    # Set second parameter
jal   func_8001D324        # Call function
nop                        # Delay slot (often unused)
```

### **Function Call with Return Value**
```assembly
# Function call with return value
jal   func_8001CB7C        # Call function
nop                        # Delay slot
addu  $v1, $v0, $zero     # Copy return value to $v1
```

---

## **🔍 Control Flow Patterns**

### **Conditional Branch Patterns**
```assembly
# Branch if equal
beq   $t1, $t2, label      # Branch if equal

# Branch if not equal  
bne   $t1, $t2, label      # Branch if not equal

# Branch if greater than zero
bgtz  $t1, label            # Branch if greater than zero

# Branch if less than or equal to zero
blez  $t1, label            # Branch if less than or equal to zero
```

### **Unconditional Jump Patterns**
```assembly
# Jump to label
j     label                 # Jump to label

# Jump and link (function call)
jal   label                 # Jump and link (function call)

# Jump register (return)
jr    $ra                   # Jump register (return)

# Jump and link register
jalr  $ra, $t0              # Jump and link register
```

---

## **🔍 Memory Operation Patterns**

### **Load Instructions**
```assembly
# Load instructions
lw   $t0, offset($base)    # Load word (32-bit)
lh   $t0, offset($base)    # Load halfword (16-bit)
lb   $t0, offset($base)    # Load byte (8-bit)
lbu  $t0, offset($base)    # Load unsigned byte
lui  $t0, immediate        # Load upper immediate
```

### **Store Instructions**
```assembly
# Store instructions
sw   $t0, offset($base)    # Store word
sh   $t0, offset($base)    # Store halfword
sb   $t0, offset($base)    # Store byte
```

---

## **🔍 Arithmetic Instruction Patterns**

### **Addition Patterns**
```assembly
# Addition
add  $t0, $t1, $t2        # $t0 = $t1 + $t2
addi $t0, $t1, immediate  # $t0 = $t1 + immediate
addiu $t0, $t1, immediate # Unsigned addition
```

### **Subtraction Patterns**
```assembly
# Subtraction
sub  $t0, $t1, $t2        # $t0 = $t1 - $t2
subu $t0, $t1, $t2        # Unsigned subtraction
```

### **Multiplication/Division Patterns**
```assembly
# Multiplication/Division
mult $t1, $t2              # Multiply, result in HI/LO
div  $t1, $t2              # Divide, result in HI/LO
mflo $t0                   # Move from LO register
mfhi $t0                   # Move from HI register
```

---

## **🔍 Logical Instruction Patterns**

### **Bitwise Operations**
```assembly
# Bitwise operations
and  $t0, $t1, $t2        # $t0 = $t1 & $t2
andi $t0, $t1, immediate  # $t0 = $t1 & immediate
or   $t0, $t1, $t2        # $t0 = $t1 | $t2
ori  $t0, $t1, immediate  # $t0 = $t1 | immediate
xor  $t0, $t1, $t2        # $t0 = $t1 ^ $t2
nor  $t0, $t1, $t2        # $t0 = ~($t1 | $t2)
```

### **Shift Operations**
```assembly
# Shifts
sll  $t0, $t1, shift      # Logical left shift
srl  $t0, $t1, shift      # Logical right shift
sra  $t0, $t1, shift      # Arithmetic right shift
sllv $t0, $t1, $t2        # Variable left shift
srlv $t0, $t1, $t2        # Variable right shift
```

---

## **🔍 Common MIPS Idioms**

### **Register Operations**
```assembly
# Clear register
addiu $t0, $zero, 0x00    # $t0 = 0

# Set register to immediate
addiu $t0, $zero, 0x7F    # $t0 = 127

# Copy register
addu  $t0, $t1, $zero     # $t0 = $t1

# Negate register
subu  $t0, $zero, $t1     # $t0 = -$t1
```

### **Bit Manipulation**
```assembly
# Set bit
ori   $t0, $t0, 0x8000    # Set bit 15

# Clear bit
andi  $t0, $t0, 0x7FFF    # Clear bit 15

# Toggle bit
xori  $t0, $t0, 0x8000    # Toggle bit 15

# Test bit
andi  $t0, $t1, 0x20      # Test bit 5
beqz  $t0, label          # Branch if bit not set
```

### **Address Calculation**
```assembly
# Calculate array index: base + (index * 4)
sll   $t0, $t1, 2         # $t0 = $t1 * 4
addu  $t0, $t2, $t0       # $t0 = $t2 + ($t1 * 4)

# Calculate complex offset: (val * 3 * 4) + offset
sll   $t0, $t1, 1         # $t0 = $t1 * 2
addu  $t0, $t0, $t1       # $t0 = ($t1 * 2) + $t1 = $t1 * 3
sll   $t0, $t0, 2         # $t0 = ($t1 * 3) * 4
addu  $t0, $t0, $t2       # $t0 = ($t1 * 3 * 4) + $t2
```

---

## **🔍 PSX-Specific Hardware Access Patterns**

### **CD-ROM Controller Registers**
```assembly
# CD-ROM controller access
0x1F801800 - 0x1F801803: CD Controller
0x1F801810 - 0x1F801817: GPU
0x1F801C00 - 0x1F801C1F: SPU
```

### **Hardware Register Access**
```assembly
# Write to hardware register
lui   $at, %hi(D_800AD142)    # Load upper address
sh    $v0, %lo(D_800AD142)($at) # Store halfword

# Read from hardware register
lui   $v0, %hi(D_800AD142)    # Load upper address
lh    $v0, %lo(D_800AD142)($v0) # Load halfword
```

---

## **🔍 Function Calling Conventions**

### **Parameter Passing**
- **First 4 parameters**: `$a0`, `$a1`, `$a2`, `$a3`
- **Additional parameters**: Pushed onto stack
- **Return values**: `$v0`, `$v1` (for double types)

### **Register Preservation**
- **Caller-saved**: `$t0-$t7`, `$a0-$a3`, `$v0-$v1`
- **Callee-saved**: `$s0-$s7`, `$ra`
- **Special**: `$sp`, `$gp`, `$zero`

### **Stack Frame Layout**
```
High Address
+------------------+
| Previous $ra     | +0x24
+------------------+
| Previous $s0     | +0x20
+------------------+
| Previous $s1     | +0x1C
+------------------+
| Local variables  | +0x18
+------------------+
| Function params  | +0x14
+------------------+
| Previous $sp     | +0x10
+------------------+
| Previous $fp     | +0x0C
+------------------+
Low Address
```

---

## **🔍 Pattern Recognition Tips**

### **1. Start with Function Prologue/Epilogue**
- Identify stack usage and saved registers
- Understand function complexity from stack frame size
- Recognize non-standard prologues (splat limitation)

### **2. Identify Global Variable Access**
- Look for `lui` + `lw`/`lh`/`lb` combinations
- Map global variable addresses and usage patterns
- Understand data flow between functions

### **3. Recognize Control Flow Patterns**
- Map branches and jumps to understand logic
- Identify loops and conditional structures
- Understand function call patterns and dependencies

### **4. Analyze Hardware Interactions**
- Look for hardware register access patterns
- Identify CD-ROM, GPU, SPU operations
- Understand system-level function calls

---

## **📝 UPDATE LOG**

- **Created**: Current session - Consolidated from PSX_Decompilation_Knowledge_Compilation.md
- **Last Updated**: Current session
- **Next Review**: After next function analysis
- **Update Frequency**: After each new pattern discovery

---

**This document serves as the foundation for MIPS pattern recognition. Each new function analyzed should add new patterns to this reference.**
