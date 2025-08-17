SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_r3_st0a_0_header_ROM_START = __romPos;
    ST0A_r3_st0a_0_header_VRAM = ADDR(.ST0A_r3_st0a_0_header);
    .ST0A_r3_st0a_0_header : AT(ST0A_r3_st0a_0_header_ROM_START) SUBALIGN(16)
    {
        ST0A_r3_st0a_0_header_DATA_START = .;
        ST0A_r3_st0a_0_header_s = .;
        build/asm/ST0A/ovl0__progbin_r3_st0a.bin/ST0A_r3_st0a_0_header.s.o(.data);
        ST0A_r3_st0a_0_header_DATA_END = .;
        ST0A_r3_st0a_0_header_DATA_SIZE = ABSOLUTE(ST0A_r3_st0a_0_header_DATA_END - ST0A_r3_st0a_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_r3_st0a_0_header);
    ST0A_r3_st0a_0_header_ROM_END = __romPos;
    ST0A_r3_st0a_0_header_VRAM_END = .;

    ST0A_r3_st0a_0_ROM_START = __romPos;
    ST0A_r3_st0a_0_VRAM = ADDR(.ST0A_r3_st0a_0);
    .ST0A_r3_st0a_0 0x80100000 : AT(ST0A_r3_st0a_0_ROM_START) SUBALIGN(4)
    {
        ST0A_r3_st0a_0_RODATA_START = .;
        build/asm/ST0A/ovl0__progbin_r3_st0a.bin/data/r3_st0a_0.rodata.s.o(.rodata);
        ST0A_r3_st0a_0_RODATA_END = .;
        ST0A_r3_st0a_0_RODATA_SIZE = ABSOLUTE(ST0A_r3_st0a_0_RODATA_END - ST0A_r3_st0a_0_RODATA_START);
        ST0A_r3_st0a_0_TEXT_START = .;
        build/asm/ST0A/ovl0__progbin_r3_st0a.bin/B14.s.o(.text);
        ST0A_r3_st0a_0_TEXT_END = .;
        ST0A_r3_st0a_0_TEXT_SIZE = ABSOLUTE(ST0A_r3_st0a_0_TEXT_END - ST0A_r3_st0a_0_TEXT_START);
        ST0A_r3_st0a_0_DATA_START = .;
        _14E68_data__s = .;
        build/asm/ST0A/ovl0__progbin_r3_st0a.bin/data/14E68.data.s.o(.data);
        ST0A_r3_st0a_0_DATA_END = .;
        ST0A_r3_st0a_0_DATA_SIZE = ABSOLUTE(ST0A_r3_st0a_0_DATA_END - ST0A_r3_st0a_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_r3_st0a_0);
    __romPos = ALIGN(__romPos, 16);
    ST0A_r3_st0a_0_ROM_END = __romPos;
    ST0A_r3_st0a_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
