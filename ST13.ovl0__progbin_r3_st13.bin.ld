SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_r3_st13_0_header_ROM_START = __romPos;
    ST13_r3_st13_0_header_VRAM = ADDR(.ST13_r3_st13_0_header);
    .ST13_r3_st13_0_header : AT(ST13_r3_st13_0_header_ROM_START) SUBALIGN(16)
    {
        ST13_r3_st13_0_header_DATA_START = .;
        ST13_r3_st13_0_header_s = .;
        build/asm/ST13/ovl0__progbin_r3_st13.bin/ST13_r3_st13_0_header.s.o(.data);
        ST13_r3_st13_0_header_DATA_END = .;
        ST13_r3_st13_0_header_DATA_SIZE = ABSOLUTE(ST13_r3_st13_0_header_DATA_END - ST13_r3_st13_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_r3_st13_0_header);
    ST13_r3_st13_0_header_ROM_END = __romPos;
    ST13_r3_st13_0_header_VRAM_END = .;

    ST13_r3_st13_0_ROM_START = __romPos;
    ST13_r3_st13_0_VRAM = ADDR(.ST13_r3_st13_0);
    .ST13_r3_st13_0 0x80100000 : AT(ST13_r3_st13_0_ROM_START) SUBALIGN(4)
    {
        ST13_r3_st13_0_RODATA_START = .;
        build/asm/ST13/ovl0__progbin_r3_st13.bin/data/800.rodata.s.o(.rodata);
        ST13_r3_st13_0_RODATA_END = .;
        ST13_r3_st13_0_RODATA_SIZE = ABSOLUTE(ST13_r3_st13_0_RODATA_END - ST13_r3_st13_0_RODATA_START);
        ST13_r3_st13_0_TEXT_START = .;
        build/asm/ST13/ovl0__progbin_r3_st13.bin/AE8.s.o(.text);
        ST13_r3_st13_0_TEXT_END = .;
        ST13_r3_st13_0_TEXT_SIZE = ABSOLUTE(ST13_r3_st13_0_TEXT_END - ST13_r3_st13_0_TEXT_START);
        ST13_r3_st13_0_DATA_START = .;
        _15AD4_data__s = .;
        build/asm/ST13/ovl0__progbin_r3_st13.bin/data/15AD4.data.s.o(.data);
        ST13_r3_st13_0_DATA_END = .;
        ST13_r3_st13_0_DATA_SIZE = ABSOLUTE(ST13_r3_st13_0_DATA_END - ST13_r3_st13_0_DATA_START);
    }
    __romPos += SIZEOF(.ST13_r3_st13_0);
    __romPos = ALIGN(__romPos, 16);
    ST13_r3_st13_0_ROM_END = __romPos;
    ST13_r3_st13_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
