SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM11R_r3_shl0c_0_header_ROM_START = __romPos;
    ARM11R_r3_shl0c_0_header_VRAM = ADDR(.ARM11R_r3_shl0c_0_header);
    .ARM11R_r3_shl0c_0_header : AT(ARM11R_r3_shl0c_0_header_ROM_START) SUBALIGN(16)
    {
        ARM11R_r3_shl0c_0_header_DATA_START = .;
        ARM11R_r3_shl0c_0_header_s = .;
        build/asm/ARM11R/ovl0__progbin_r3_shl0c.bin/ARM11R_r3_shl0c_0_header.s.o(.data);
        ARM11R_r3_shl0c_0_header_DATA_END = .;
        ARM11R_r3_shl0c_0_header_DATA_SIZE = ABSOLUTE(ARM11R_r3_shl0c_0_header_DATA_END - ARM11R_r3_shl0c_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM11R_r3_shl0c_0_header);
    ARM11R_r3_shl0c_0_header_ROM_END = __romPos;
    ARM11R_r3_shl0c_0_header_VRAM_END = .;

    ARM11R_r3_shl0c_0_ROM_START = __romPos;
    ARM11R_r3_shl0c_0_VRAM = ADDR(.ARM11R_r3_shl0c_0);
    .ARM11R_r3_shl0c_0 0x800D8800 : AT(ARM11R_r3_shl0c_0_ROM_START) SUBALIGN(4)
    {
        ARM11R_r3_shl0c_0_DATA_START = .;
        r3_shl0c_0_data__s = .;
        build/asm/ARM11R/ovl0__progbin_r3_shl0c.bin/data/r3_shl0c_0.data.s.o(.data);
        ARM11R_r3_shl0c_0_DATA_END = .;
        ARM11R_r3_shl0c_0_DATA_SIZE = ABSOLUTE(ARM11R_r3_shl0c_0_DATA_END - ARM11R_r3_shl0c_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM11R_r3_shl0c_0);
    __romPos = ALIGN(__romPos, 16);
    ARM11R_r3_shl0c_0_ROM_END = __romPos;
    ARM11R_r3_shl0c_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
