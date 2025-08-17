SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_r3_st14_0_header_ROM_START = __romPos;
    ST14_r3_st14_0_header_VRAM = ADDR(.ST14_r3_st14_0_header);
    .ST14_r3_st14_0_header : AT(ST14_r3_st14_0_header_ROM_START) SUBALIGN(16)
    {
        ST14_r3_st14_0_header_DATA_START = .;
        ST14_r3_st14_0_header_s = .;
        build/asm/ST14/ovl0__progbin_r3_st14.bin/ST14_r3_st14_0_header.s.o(.data);
        ST14_r3_st14_0_header_DATA_END = .;
        ST14_r3_st14_0_header_DATA_SIZE = ABSOLUTE(ST14_r3_st14_0_header_DATA_END - ST14_r3_st14_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_r3_st14_0_header);
    ST14_r3_st14_0_header_ROM_END = __romPos;
    ST14_r3_st14_0_header_VRAM_END = .;

    ST14_r3_st14_0_ROM_START = __romPos;
    ST14_r3_st14_0_VRAM = ADDR(.ST14_r3_st14_0);
    .ST14_r3_st14_0 0x80100000 : AT(ST14_r3_st14_0_ROM_START) SUBALIGN(4)
    {
        ST14_r3_st14_0_RODATA_START = .;
        build/asm/ST14/ovl0__progbin_r3_st14.bin/data/800.rodata.s.o(.rodata);
        ST14_r3_st14_0_RODATA_END = .;
        ST14_r3_st14_0_RODATA_SIZE = ABSOLUTE(ST14_r3_st14_0_RODATA_END - ST14_r3_st14_0_RODATA_START);
        ST14_r3_st14_0_TEXT_START = .;
        build/asm/ST14/ovl0__progbin_r3_st14.bin/9E8.s.o(.text);
        ST14_r3_st14_0_TEXT_END = .;
        ST14_r3_st14_0_TEXT_SIZE = ABSOLUTE(ST14_r3_st14_0_TEXT_END - ST14_r3_st14_0_TEXT_START);
        ST14_r3_st14_0_DATA_START = .;
        _13BA4_data__s = .;
        build/asm/ST14/ovl0__progbin_r3_st14.bin/data/13BA4.data.s.o(.data);
        ST14_r3_st14_0_DATA_END = .;
        ST14_r3_st14_0_DATA_SIZE = ABSOLUTE(ST14_r3_st14_0_DATA_END - ST14_r3_st14_0_DATA_START);
    }
    __romPos += SIZEOF(.ST14_r3_st14_0);
    __romPos = ALIGN(__romPos, 16);
    ST14_r3_st14_0_ROM_END = __romPos;
    ST14_r3_st14_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
