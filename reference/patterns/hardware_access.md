# PSX Hardware Interaction Patterns
## Common Patterns for Accessing PlayStation Hardware in MIPS Assembly

*This document captures hardware access patterns specific to the PlayStation console*

---

## **🎯 Overview**

The PlayStation uses **memory-mapped I/O** to access hardware components. Understanding these patterns is crucial for:
- **Identifying hardware operations** in assembly code
- **Understanding system behavior** and timing
- **Predicting function purposes** based on hardware access
- **Creating accurate C implementations** of hardware interactions

---

## **🔌 PSX Hardware Architecture**

### **Core Components**
- **CPU**: R3000A (33.8688 MHz, 32-bit)
- **GPU**: Graphics Processing Unit
- **SPU**: Sound Processing Unit (24-voice ADPCM)
- **CD-ROM**: Drive controller and decoder
- **MDEC**: Motion Decoder for video
- **DMA**: Direct Memory Access controllers

### **Memory Map**
```
0x00000000 - 0x1FFFFF: Main Memory (RAM) - Segment A
0x1F800000 - 0x1F8003FF: Scratchpad (D-cache) - Segment S
0x1F801000 - 0x1FBFFFFF: Hardware Registers - Segment X
0x1FC00000 - 0x1FC7FFFF: Boot ROM - Segment P
0x80000000 - 0x9FFFFFFF: Cached Memory - Segments B, Q
0xA0000000 - 0xBFFFFFFF: Uncached Memory - Segments C, R
```

---

## **🔍 Hardware Access Patterns**

### **1. CD-ROM Controller Access**

**Address Range**: `0x1F801800 - 0x1F801803`
**Common Operations**: Read status, send commands, read data

**Pattern Recognition**:
```assembly
# Load CD-ROM controller address
lui   $at, %hi(0x1F801800)    # Load upper address
lw    $v0, %lo(0x1F801800)($at) # Read controller status
```

**C Template**:
```c
// CD-ROM controller access
u32 cd_status = *(u32*)0x1F801800;
u32 cd_data = *(u32*)0x1F801804;
```

**Common Functions**:
- `CdInit()` - Initialize CD-ROM system
- `CdReset()` - Reset CD-ROM controller
- `CdControl()` - Send CD-ROM commands
- `CdRead()` - Read data from CD-ROM

---

### **2. GPU Access**

**Address Range**: `0x1F801810 - 0x1F801817`
**Common Operations**: Graphics commands, status reading, DMA control

**Pattern Recognition**:
```assembly
# GPU status access
lui   $at, %hi(0x1F801810)    # Load upper address
lw    $v0, %lo(0x1F801810)($at) # Read GPU status
```

**C Template**:
```c
// GPU access
u32 gpu_status = *(u32*)0x1F801810;
u32 gpu_control = *(u32*)0x1F801814;
```

**Common Functions**:
- `LoadImage()` - Load graphics data to GPU
- `DrawPrim()` - Draw primitive graphics
- `ClearImage()` - Clear graphics buffer
- `MoveImage()` - Move graphics data

---

### **3. SPU (Sound) Access**

**Address Range**: `0x1F801C00 - 0x1F801C1F`
**Common Operations**: Audio control, voice management, sample data

**Pattern Recognition**:
```assembly
# SPU access
lui   $at, %hi(0x1F801C00)    # Load upper address
lw    $v0, %lo(0x1F801C00)($at) # Read SPU status
```

**C Template**:
```c
// SPU access
u32 spu_status = *(u32*)0x1F801C00;
u32 spu_control = *(u32*)0x1F801C04;
```

**Common Functions**:
- `SsInit()` - Initialize sound system
- `SsVabOpen()` - Open VAB (voice and bank) file
- `SsVabTrans()` - Transfer VAB data to SPU
- `SsSetMVol()` - Set master volume

---

### **4. DMA Controller Access**

**Address Range**: `0x1F801080 - 0x1F8010F0`
**Common Operations**: Transfer control, status monitoring, channel management

**Pattern Recognition**:
```assembly
# DMA access
lui   $at, %hi(0x1F801080)    # Load upper address
lw    $v0, %lo(0x1F801080)($at) # Read DMA status
```

**C Template**:
```c
// DMA access
u32 dma_status = *(u32*)0x1F801080;
u32 dma_control = *(u32*)0x1F801084;
```

**Common Operations**:
- **CD-ROM DMA**: Transfer CD data to memory
- **GPU DMA**: Transfer graphics data to GPU
- **SPU DMA**: Transfer audio data to SPU
- **Memory DMA**: Memory-to-memory transfers

---

### **5. Timer Access**

**Address Range**: `0x1F801100 - 0x1F80113F`
**Common Operations**: Timer control, countdown, interrupt generation

**Pattern Recognition**:
```assembly
# Timer access
lui   $at, %hi(0x1F801100)    # Load upper address
lw    $v0, %lo(0x1F801100)($at) # Read timer value
```

**C Template**:
```c
// Timer access
u32 timer_value = *(u32*)0x1F801100;
u32 timer_control = *(u32*)0x1F801104;
```

**Common Functions**:
- **System Timer**: General system timing
- **CD-ROM Timer**: CD operation timing
- **Graphics Timer**: Frame rate control
- **Audio Timer**: Audio synchronization

---

## **🔧 Hardware Access Implementation Patterns**

### **1. Status Reading Pattern**

**Purpose**: Check hardware component status
**Common Use**: Wait for operations to complete, check error conditions

```c
// Status reading pattern
u32 read_hardware_status(u32 hardware_address) {
    return *(u32*)hardware_address;
}

// Example usage
u32 cd_status = read_hardware_status(0x1F801800);
if (cd_status & 0x80000000) {
    // CD-ROM ready
    return 1;
}
```

---

### **2. Command Sending Pattern**

**Purpose**: Send commands to hardware components
**Common Use**: Initiate operations, configure hardware

```c
// Command sending pattern
void send_hardware_command(u32 hardware_address, u32 command) {
    *(u32*)hardware_address = command;
}

// Example usage
send_hardware_command(0x1F801800, CD_CMD_READ);
```

---

### **3. Data Transfer Pattern**

**Purpose**: Transfer data to/from hardware components
**Common Use**: Load graphics data, transfer audio samples

```c
// Data transfer pattern
void transfer_to_hardware(u32 hardware_address, void* data, u32 size) {
    u8* hw_ptr = (u8*)hardware_address;
    u8* data_ptr = (u8*)data;
    
    for (u32 i = 0; i < size; i++) {
        hw_ptr[i] = data_ptr[i];
    }
}

// Example usage
transfer_to_hardware(0x1F801810, graphics_data, 1024);
```

---

### **4. Interrupt Handling Pattern**

**Purpose**: Handle hardware interrupts
**Common Use**: Respond to hardware events, process completed operations

```c
// Interrupt handling pattern
void handle_hardware_interrupt(u32 interrupt_source) {
    switch (interrupt_source) {
        case CD_ROM_INTERRUPT:
            // Handle CD-ROM interrupt
            process_cd_operation();
            break;
            
        case GPU_INTERRUPT:
            // Handle GPU interrupt
            process_graphics_operation();
            break;
            
        case SPU_INTERRUPT:
            // Handle SPU interrupt
            process_audio_operation();
            break;
    }
}
```

---

## **📊 Hardware Access Complexity Assessment**

### **Simple Hardware Access (Complexity 1-3)**
- **Single register read/write**
- **No complex timing requirements**
- **Standard hardware operations**
- **Examples**: Status reading, simple configuration

### **Medium Hardware Access (Complexity 4-6)**
- **Multiple register operations**
- **Basic timing requirements**
- **Error handling needed**
- **Examples**: Command sequences, data transfers

### **Complex Hardware Access (Complexity 7-8)**
- **Complex timing requirements**
- **Multiple hardware components**
- **Interrupt handling**
- **Examples**: DMA operations, graphics pipelines

### **Extreme Hardware Access (Complexity 9-10)**
- **Real-time requirements**
- **Multiple interrupt sources**
- **Complex state management**
- **Examples**: Audio processing, video decoding

---

## **🚨 Common Hardware Access Pitfalls**

### **1. Timing Violations**
**Problem**: Hardware operations require specific timing
**Solution**: Follow hardware timing specifications, use proper delays

### **2. Register Order Dependencies**
**Problem**: Some registers must be written in specific order
**Solution**: Follow hardware documentation, maintain register order

### **3. Interrupt Conflicts**
**Problem**: Multiple interrupts can conflict
**Solution**: Proper interrupt priority management, clear interrupt sources

### **4. DMA Buffer Management**
**Problem**: DMA operations can overwrite buffers
**Solution**: Proper buffer allocation, DMA completion checking

---

## **🎯 Hardware Access Pattern Recognition**

### **1. Address Pattern Recognition**
- **Look for addresses in 0x1F8XXXXX range**
- **Identify hardware component from address**
- **Recognize register type (status, control, data)**

### **2. Operation Pattern Recognition**
- **Read operations**: Status checking, data reading
- **Write operations**: Command sending, configuration
- **Read-modify-write**: Status updates, flag manipulation

### **3. Timing Pattern Recognition**
- **Immediate operations**: No timing requirements
- **Sequential operations**: Command sequences
- **Polling operations**: Wait for completion
- **Interrupt-driven**: Event-driven operations

---

## **📝 UPDATE LOG**

- **Created**: Current session - Initial hardware access patterns
- **Last Updated**: Current session
- **Next Review**: After next hardware-related function analysis
- **Update Frequency**: After each new hardware pattern discovery

---

**This document serves as the foundation for understanding PSX hardware interactions. Each new hardware-related function analyzed should add new patterns to this reference.**
