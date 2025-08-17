SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_r3_st09_0_header_ROM_START = __romPos;
    ST09_r3_st09_0_header_VRAM = ADDR(.ST09_r3_st09_0_header);
    .ST09_r3_st09_0_header : AT(ST09_r3_st09_0_header_ROM_START) SUBALIGN(16)
    {
        ST09_r3_st09_0_header_DATA_START = .;
        ST09_r3_st09_0_header_s = .;
        build/asm/ST09/ovl0__progbin_r3_st09.bin/ST09_r3_st09_0_header.s.o(.data);
        ST09_r3_st09_0_header_DATA_END = .;
        ST09_r3_st09_0_header_DATA_SIZE = ABSOLUTE(ST09_r3_st09_0_header_DATA_END - ST09_r3_st09_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_r3_st09_0_header);
    ST09_r3_st09_0_header_ROM_END = __romPos;
    ST09_r3_st09_0_header_VRAM_END = .;

    ST09_r3_st09_0_ROM_START = __romPos;
    ST09_r3_st09_0_VRAM = ADDR(.ST09_r3_st09_0);
    .ST09_r3_st09_0 0x80100000 : AT(ST09_r3_st09_0_ROM_START) SUBALIGN(4)
    {
        ST09_r3_st09_0_RODATA_START = .;
        build/asm/ST09/ovl0__progbin_r3_st09.bin/data/r3_st09_0.rodata.s.o(.rodata);
        ST09_r3_st09_0_RODATA_END = .;
        ST09_r3_st09_0_RODATA_SIZE = ABSOLUTE(ST09_r3_st09_0_RODATA_END - ST09_r3_st09_0_RODATA_START);
        ST09_r3_st09_0_TEXT_START = .;
        build/asm/ST09/ovl0__progbin_r3_st09.bin/B30.s.o(.text);
        ST09_r3_st09_0_TEXT_END = .;
        ST09_r3_st09_0_TEXT_SIZE = ABSOLUTE(ST09_r3_st09_0_TEXT_END - ST09_r3_st09_0_TEXT_START);
        ST09_r3_st09_0_DATA_START = .;
        _1ACAC_data__s = .;
        build/asm/ST09/ovl0__progbin_r3_st09.bin/data/1ACAC.data.s.o(.data);
        ST09_r3_st09_0_DATA_END = .;
        ST09_r3_st09_0_DATA_SIZE = ABSOLUTE(ST09_r3_st09_0_DATA_END - ST09_r3_st09_0_DATA_START);
    }
    __romPos += SIZEOF(.ST09_r3_st09_0);
    __romPos = ALIGN(__romPos, 16);
    ST09_r3_st09_0_ROM_END = __romPos;
    ST09_r3_st09_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
