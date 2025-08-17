SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM13R_r3_shl0a_0_header_ROM_START = __romPos;
    ARM13R_r3_shl0a_0_header_VRAM = ADDR(.ARM13R_r3_shl0a_0_header);
    .ARM13R_r3_shl0a_0_header : AT(ARM13R_r3_shl0a_0_header_ROM_START) SUBALIGN(16)
    {
        ARM13R_r3_shl0a_0_header_DATA_START = .;
        ARM13R_r3_shl0a_0_header_s = .;
        build/asm/ARM13R/ovl0__progbin_r3_shl0a.bin/ARM13R_r3_shl0a_0_header.s.o(.data);
        ARM13R_r3_shl0a_0_header_DATA_END = .;
        ARM13R_r3_shl0a_0_header_DATA_SIZE = ABSOLUTE(ARM13R_r3_shl0a_0_header_DATA_END - ARM13R_r3_shl0a_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM13R_r3_shl0a_0_header);
    ARM13R_r3_shl0a_0_header_ROM_END = __romPos;
    ARM13R_r3_shl0a_0_header_VRAM_END = .;

    ARM13R_r3_shl0a_0_ROM_START = __romPos;
    ARM13R_r3_shl0a_0_VRAM = ADDR(.ARM13R_r3_shl0a_0);
    .ARM13R_r3_shl0a_0 0x800D8800 : AT(ARM13R_r3_shl0a_0_ROM_START) SUBALIGN(4)
    {
        ARM13R_r3_shl0a_0_DATA_START = .;
        r3_shl0a_0_data__s = .;
        build/asm/ARM13R/ovl0__progbin_r3_shl0a.bin/data/r3_shl0a_0.data.s.o(.data);
        ARM13R_r3_shl0a_0_DATA_END = .;
        ARM13R_r3_shl0a_0_DATA_SIZE = ABSOLUTE(ARM13R_r3_shl0a_0_DATA_END - ARM13R_r3_shl0a_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM13R_r3_shl0a_0);
    __romPos = ALIGN(__romPos, 16);
    ARM13R_r3_shl0a_0_ROM_END = __romPos;
    ARM13R_r3_shl0a_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
