SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_r3_st19_0_header_ROM_START = __romPos;
    ST19_r3_st19_0_header_VRAM = ADDR(.ST19_r3_st19_0_header);
    .ST19_r3_st19_0_header : AT(ST19_r3_st19_0_header_ROM_START) SUBALIGN(16)
    {
        ST19_r3_st19_0_header_DATA_START = .;
        ST19_r3_st19_0_header_s = .;
        build/asm/ST19/ovl0__progbin_r3_st19.bin/ST19_r3_st19_0_header.s.o(.data);
        ST19_r3_st19_0_header_DATA_END = .;
        ST19_r3_st19_0_header_DATA_SIZE = ABSOLUTE(ST19_r3_st19_0_header_DATA_END - ST19_r3_st19_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_r3_st19_0_header);
    ST19_r3_st19_0_header_ROM_END = __romPos;
    ST19_r3_st19_0_header_VRAM_END = .;

    ST19_r3_st19_0_ROM_START = __romPos;
    ST19_r3_st19_0_VRAM = ADDR(.ST19_r3_st19_0);
    .ST19_r3_st19_0 0x80100000 : AT(ST19_r3_st19_0_ROM_START) SUBALIGN(4)
    {
        ST19_r3_st19_0_RODATA_START = .;
        build/asm/ST19/ovl0__progbin_r3_st19.bin/data/800.rodata.s.o(.rodata);
        ST19_r3_st19_0_RODATA_END = .;
        ST19_r3_st19_0_RODATA_SIZE = ABSOLUTE(ST19_r3_st19_0_RODATA_END - ST19_r3_st19_0_RODATA_START);
        ST19_r3_st19_0_TEXT_START = .;
        build/asm/ST19/ovl0__progbin_r3_st19.bin/D5C.s.o(.text);
        ST19_r3_st19_0_TEXT_END = .;
        ST19_r3_st19_0_TEXT_SIZE = ABSOLUTE(ST19_r3_st19_0_TEXT_END - ST19_r3_st19_0_TEXT_START);
        ST19_r3_st19_0_DATA_START = .;
        _169D0_data__s = .;
        build/asm/ST19/ovl0__progbin_r3_st19.bin/data/169D0.data.s.o(.data);
        ST19_r3_st19_0_DATA_END = .;
        ST19_r3_st19_0_DATA_SIZE = ABSOLUTE(ST19_r3_st19_0_DATA_END - ST19_r3_st19_0_DATA_START);
    }
    __romPos += SIZEOF(.ST19_r3_st19_0);
    __romPos = ALIGN(__romPos, 16);
    ST19_r3_st19_0_ROM_END = __romPos;
    ST19_r3_st19_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
