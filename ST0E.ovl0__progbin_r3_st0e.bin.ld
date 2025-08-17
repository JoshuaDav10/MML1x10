SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0E_r3_st0e_0_header_ROM_START = __romPos;
    ST0E_r3_st0e_0_header_VRAM = ADDR(.ST0E_r3_st0e_0_header);
    .ST0E_r3_st0e_0_header : AT(ST0E_r3_st0e_0_header_ROM_START) SUBALIGN(16)
    {
        ST0E_r3_st0e_0_header_DATA_START = .;
        ST0E_r3_st0e_0_header_s = .;
        build/asm/ST0E/ovl0__progbin_r3_st0e.bin/ST0E_r3_st0e_0_header.s.o(.data);
        ST0E_r3_st0e_0_header_DATA_END = .;
        ST0E_r3_st0e_0_header_DATA_SIZE = ABSOLUTE(ST0E_r3_st0e_0_header_DATA_END - ST0E_r3_st0e_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_r3_st0e_0_header);
    ST0E_r3_st0e_0_header_ROM_END = __romPos;
    ST0E_r3_st0e_0_header_VRAM_END = .;

    ST0E_r3_st0e_0_ROM_START = __romPos;
    ST0E_r3_st0e_0_VRAM = ADDR(.ST0E_r3_st0e_0);
    .ST0E_r3_st0e_0 0x80100000 : AT(ST0E_r3_st0e_0_ROM_START) SUBALIGN(4)
    {
        ST0E_r3_st0e_0_RODATA_START = .;
        build/asm/ST0E/ovl0__progbin_r3_st0e.bin/data/r3_st0e_0.rodata.s.o(.rodata);
        ST0E_r3_st0e_0_RODATA_END = .;
        ST0E_r3_st0e_0_RODATA_SIZE = ABSOLUTE(ST0E_r3_st0e_0_RODATA_END - ST0E_r3_st0e_0_RODATA_START);
        ST0E_r3_st0e_0_TEXT_START = .;
        build/asm/ST0E/ovl0__progbin_r3_st0e.bin/90C.s.o(.text);
        ST0E_r3_st0e_0_TEXT_END = .;
        ST0E_r3_st0e_0_TEXT_SIZE = ABSOLUTE(ST0E_r3_st0e_0_TEXT_END - ST0E_r3_st0e_0_TEXT_START);
        ST0E_r3_st0e_0_DATA_START = .;
        F5D4_data__s = .;
        build/asm/ST0E/ovl0__progbin_r3_st0e.bin/data/F5D4.data.s.o(.data);
        ST0E_r3_st0e_0_DATA_END = .;
        ST0E_r3_st0e_0_DATA_SIZE = ABSOLUTE(ST0E_r3_st0e_0_DATA_END - ST0E_r3_st0e_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_r3_st0e_0);
    __romPos = ALIGN(__romPos, 16);
    ST0E_r3_st0e_0_ROM_END = __romPos;
    ST0E_r3_st0e_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
