SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_r3_st06_0_header_ROM_START = __romPos;
    ST06_r3_st06_0_header_VRAM = ADDR(.ST06_r3_st06_0_header);
    .ST06_r3_st06_0_header : AT(ST06_r3_st06_0_header_ROM_START) SUBALIGN(16)
    {
        ST06_r3_st06_0_header_DATA_START = .;
        ST06_r3_st06_0_header_s = .;
        build/asm/ST06/ovl0__progbin_r3_st06.bin/ST06_r3_st06_0_header.s.o(.data);
        ST06_r3_st06_0_header_DATA_END = .;
        ST06_r3_st06_0_header_DATA_SIZE = ABSOLUTE(ST06_r3_st06_0_header_DATA_END - ST06_r3_st06_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_r3_st06_0_header);
    ST06_r3_st06_0_header_ROM_END = __romPos;
    ST06_r3_st06_0_header_VRAM_END = .;

    ST06_r3_st06_0_ROM_START = __romPos;
    ST06_r3_st06_0_VRAM = ADDR(.ST06_r3_st06_0);
    .ST06_r3_st06_0 0x80100000 : AT(ST06_r3_st06_0_ROM_START) SUBALIGN(4)
    {
        ST06_r3_st06_0_RODATA_START = .;
        build/asm/ST06/ovl0__progbin_r3_st06.bin/data/r3_st06_0.rodata.s.o(.rodata);
        ST06_r3_st06_0_RODATA_END = .;
        ST06_r3_st06_0_RODATA_SIZE = ABSOLUTE(ST06_r3_st06_0_RODATA_END - ST06_r3_st06_0_RODATA_START);
        ST06_r3_st06_0_TEXT_START = .;
        build/asm/ST06/ovl0__progbin_r3_st06.bin/CB4.s.o(.text);
        ST06_r3_st06_0_TEXT_END = .;
        ST06_r3_st06_0_TEXT_SIZE = ABSOLUTE(ST06_r3_st06_0_TEXT_END - ST06_r3_st06_0_TEXT_START);
        ST06_r3_st06_0_DATA_START = .;
        _222D0_data__s = .;
        build/asm/ST06/ovl0__progbin_r3_st06.bin/data/222D0.data.s.o(.data);
        ST06_r3_st06_0_DATA_END = .;
        ST06_r3_st06_0_DATA_SIZE = ABSOLUTE(ST06_r3_st06_0_DATA_END - ST06_r3_st06_0_DATA_START);
    }
    __romPos += SIZEOF(.ST06_r3_st06_0);
    __romPos = ALIGN(__romPos, 16);
    ST06_r3_st06_0_ROM_END = __romPos;
    ST06_r3_st06_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
