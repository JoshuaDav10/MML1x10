SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM07R_r3_shl07_0_header_ROM_START = __romPos;
    ARM07R_r3_shl07_0_header_VRAM = ADDR(.ARM07R_r3_shl07_0_header);
    .ARM07R_r3_shl07_0_header : AT(ARM07R_r3_shl07_0_header_ROM_START) SUBALIGN(16)
    {
        ARM07R_r3_shl07_0_header_DATA_START = .;
        ARM07R_r3_shl07_0_header_s = .;
        build/asm/ARM07R/ovl0__progbin_r3_shl07.bin/ARM07R_r3_shl07_0_header.s.o(.data);
        ARM07R_r3_shl07_0_header_DATA_END = .;
        ARM07R_r3_shl07_0_header_DATA_SIZE = ABSOLUTE(ARM07R_r3_shl07_0_header_DATA_END - ARM07R_r3_shl07_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM07R_r3_shl07_0_header);
    ARM07R_r3_shl07_0_header_ROM_END = __romPos;
    ARM07R_r3_shl07_0_header_VRAM_END = .;

    ARM07R_r3_shl07_0_ROM_START = __romPos;
    ARM07R_r3_shl07_0_VRAM = ADDR(.ARM07R_r3_shl07_0);
    .ARM07R_r3_shl07_0 0x800D8800 : AT(ARM07R_r3_shl07_0_ROM_START) SUBALIGN(4)
    {
        ARM07R_r3_shl07_0_DATA_START = .;
        r3_shl07_0_data__s = .;
        build/asm/ARM07R/ovl0__progbin_r3_shl07.bin/data/r3_shl07_0.data.s.o(.data);
        ARM07R_r3_shl07_0_DATA_END = .;
        ARM07R_r3_shl07_0_DATA_SIZE = ABSOLUTE(ARM07R_r3_shl07_0_DATA_END - ARM07R_r3_shl07_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM07R_r3_shl07_0);
    __romPos = ALIGN(__romPos, 16);
    ARM07R_r3_shl07_0_ROM_END = __romPos;
    ARM07R_r3_shl07_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
