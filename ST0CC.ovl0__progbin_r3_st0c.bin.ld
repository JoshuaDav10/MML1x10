SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0CC_r3_st0c_0_header_ROM_START = __romPos;
    ST0CC_r3_st0c_0_header_VRAM = ADDR(.ST0CC_r3_st0c_0_header);
    .ST0CC_r3_st0c_0_header : AT(ST0CC_r3_st0c_0_header_ROM_START) SUBALIGN(16)
    {
        ST0CC_r3_st0c_0_header_DATA_START = .;
        ST0CC_r3_st0c_0_header_s = .;
        build/asm/ST0CC/ovl0__progbin_r3_st0c.bin/ST0CC_r3_st0c_0_header.s.o(.data);
        ST0CC_r3_st0c_0_header_DATA_END = .;
        ST0CC_r3_st0c_0_header_DATA_SIZE = ABSOLUTE(ST0CC_r3_st0c_0_header_DATA_END - ST0CC_r3_st0c_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0CC_r3_st0c_0_header);
    ST0CC_r3_st0c_0_header_ROM_END = __romPos;
    ST0CC_r3_st0c_0_header_VRAM_END = .;

    ST0CC_r3_st0c_0_ROM_START = __romPos;
    ST0CC_r3_st0c_0_VRAM = ADDR(.ST0CC_r3_st0c_0);
    .ST0CC_r3_st0c_0 0x80100000 : AT(ST0CC_r3_st0c_0_ROM_START) SUBALIGN(4)
    {
        ST0CC_r3_st0c_0_RODATA_START = .;
        build/asm/ST0CC/ovl0__progbin_r3_st0c.bin/data/800.rodata.s.o(.rodata);
        ST0CC_r3_st0c_0_RODATA_END = .;
        ST0CC_r3_st0c_0_RODATA_SIZE = ABSOLUTE(ST0CC_r3_st0c_0_RODATA_END - ST0CC_r3_st0c_0_RODATA_START);
        ST0CC_r3_st0c_0_TEXT_START = .;
        build/asm/ST0CC/ovl0__progbin_r3_st0c.bin/13B0.s.o(.text);
        ST0CC_r3_st0c_0_TEXT_END = .;
        ST0CC_r3_st0c_0_TEXT_SIZE = ABSOLUTE(ST0CC_r3_st0c_0_TEXT_END - ST0CC_r3_st0c_0_TEXT_START);
        ST0CC_r3_st0c_0_DATA_START = .;
        C680_data__s = .;
        build/asm/ST0CC/ovl0__progbin_r3_st0c.bin/data/C680.data.s.o(.data);
        ST0CC_r3_st0c_0_DATA_END = .;
        ST0CC_r3_st0c_0_DATA_SIZE = ABSOLUTE(ST0CC_r3_st0c_0_DATA_END - ST0CC_r3_st0c_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0CC_r3_st0c_0);
    __romPos = ALIGN(__romPos, 16);
    ST0CC_r3_st0c_0_ROM_END = __romPos;
    ST0CC_r3_st0c_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
