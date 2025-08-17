SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM12R_r3_shl0b_0_header_ROM_START = __romPos;
    ARM12R_r3_shl0b_0_header_VRAM = ADDR(.ARM12R_r3_shl0b_0_header);
    .ARM12R_r3_shl0b_0_header : AT(ARM12R_r3_shl0b_0_header_ROM_START) SUBALIGN(16)
    {
        ARM12R_r3_shl0b_0_header_DATA_START = .;
        ARM12R_r3_shl0b_0_header_s = .;
        build/asm/ARM12R/ovl0__progbin_r3_shl0b.bin/ARM12R_r3_shl0b_0_header.s.o(.data);
        ARM12R_r3_shl0b_0_header_DATA_END = .;
        ARM12R_r3_shl0b_0_header_DATA_SIZE = ABSOLUTE(ARM12R_r3_shl0b_0_header_DATA_END - ARM12R_r3_shl0b_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM12R_r3_shl0b_0_header);
    ARM12R_r3_shl0b_0_header_ROM_END = __romPos;
    ARM12R_r3_shl0b_0_header_VRAM_END = .;

    ARM12R_r3_shl0b_0_ROM_START = __romPos;
    ARM12R_r3_shl0b_0_VRAM = ADDR(.ARM12R_r3_shl0b_0);
    .ARM12R_r3_shl0b_0 0x800D8800 : AT(ARM12R_r3_shl0b_0_ROM_START) SUBALIGN(4)
    {
        ARM12R_r3_shl0b_0_DATA_START = .;
        r3_shl0b_0_data__s = .;
        build/asm/ARM12R/ovl0__progbin_r3_shl0b.bin/data/r3_shl0b_0.data.s.o(.data);
        ARM12R_r3_shl0b_0_DATA_END = .;
        ARM12R_r3_shl0b_0_DATA_SIZE = ABSOLUTE(ARM12R_r3_shl0b_0_DATA_END - ARM12R_r3_shl0b_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM12R_r3_shl0b_0);
    __romPos = ALIGN(__romPos, 16);
    ARM12R_r3_shl0b_0_ROM_END = __romPos;
    ARM12R_r3_shl0b_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
