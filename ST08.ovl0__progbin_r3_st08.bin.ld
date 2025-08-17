SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_r3_st08_0_header_ROM_START = __romPos;
    ST08_r3_st08_0_header_VRAM = ADDR(.ST08_r3_st08_0_header);
    .ST08_r3_st08_0_header : AT(ST08_r3_st08_0_header_ROM_START) SUBALIGN(16)
    {
        ST08_r3_st08_0_header_DATA_START = .;
        ST08_r3_st08_0_header_s = .;
        build/asm/ST08/ovl0__progbin_r3_st08.bin/ST08_r3_st08_0_header.s.o(.data);
        ST08_r3_st08_0_header_DATA_END = .;
        ST08_r3_st08_0_header_DATA_SIZE = ABSOLUTE(ST08_r3_st08_0_header_DATA_END - ST08_r3_st08_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_r3_st08_0_header);
    ST08_r3_st08_0_header_ROM_END = __romPos;
    ST08_r3_st08_0_header_VRAM_END = .;

    ST08_r3_st08_0_ROM_START = __romPos;
    ST08_r3_st08_0_VRAM = ADDR(.ST08_r3_st08_0);
    .ST08_r3_st08_0 0x80100000 : AT(ST08_r3_st08_0_ROM_START) SUBALIGN(4)
    {
        ST08_r3_st08_0_RODATA_START = .;
        build/asm/ST08/ovl0__progbin_r3_st08.bin/data/r3_st08_0.rodata.s.o(.rodata);
        ST08_r3_st08_0_RODATA_END = .;
        ST08_r3_st08_0_RODATA_SIZE = ABSOLUTE(ST08_r3_st08_0_RODATA_END - ST08_r3_st08_0_RODATA_START);
        ST08_r3_st08_0_TEXT_START = .;
        build/asm/ST08/ovl0__progbin_r3_st08.bin/B1C.s.o(.text);
        ST08_r3_st08_0_TEXT_END = .;
        ST08_r3_st08_0_TEXT_SIZE = ABSOLUTE(ST08_r3_st08_0_TEXT_END - ST08_r3_st08_0_TEXT_START);
        ST08_r3_st08_0_DATA_START = .;
        _1283C_data__s = .;
        build/asm/ST08/ovl0__progbin_r3_st08.bin/data/1283C.data.s.o(.data);
        ST08_r3_st08_0_DATA_END = .;
        ST08_r3_st08_0_DATA_SIZE = ABSOLUTE(ST08_r3_st08_0_DATA_END - ST08_r3_st08_0_DATA_START);
    }
    __romPos += SIZEOF(.ST08_r3_st08_0);
    __romPos = ALIGN(__romPos, 16);
    ST08_r3_st08_0_ROM_END = __romPos;
    ST08_r3_st08_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
