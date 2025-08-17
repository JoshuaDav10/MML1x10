SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0F_r3_st0f_0_header_ROM_START = __romPos;
    ST0F_r3_st0f_0_header_VRAM = ADDR(.ST0F_r3_st0f_0_header);
    .ST0F_r3_st0f_0_header : AT(ST0F_r3_st0f_0_header_ROM_START) SUBALIGN(16)
    {
        ST0F_r3_st0f_0_header_DATA_START = .;
        ST0F_r3_st0f_0_header_s = .;
        build/asm/ST0F/ovl0__progbin_r3_st0f.bin/ST0F_r3_st0f_0_header.s.o(.data);
        ST0F_r3_st0f_0_header_DATA_END = .;
        ST0F_r3_st0f_0_header_DATA_SIZE = ABSOLUTE(ST0F_r3_st0f_0_header_DATA_END - ST0F_r3_st0f_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_r3_st0f_0_header);
    ST0F_r3_st0f_0_header_ROM_END = __romPos;
    ST0F_r3_st0f_0_header_VRAM_END = .;

    ST0F_r3_st0f_0_ROM_START = __romPos;
    ST0F_r3_st0f_0_VRAM = ADDR(.ST0F_r3_st0f_0);
    .ST0F_r3_st0f_0 0x80100000 : AT(ST0F_r3_st0f_0_ROM_START) SUBALIGN(4)
    {
        ST0F_r3_st0f_0_RODATA_START = .;
        build/asm/ST0F/ovl0__progbin_r3_st0f.bin/data/r3_st0f_0.rodata.s.o(.rodata);
        ST0F_r3_st0f_0_RODATA_END = .;
        ST0F_r3_st0f_0_RODATA_SIZE = ABSOLUTE(ST0F_r3_st0f_0_RODATA_END - ST0F_r3_st0f_0_RODATA_START);
        ST0F_r3_st0f_0_TEXT_START = .;
        build/asm/ST0F/ovl0__progbin_r3_st0f.bin/85C.s.o(.text);
        ST0F_r3_st0f_0_TEXT_END = .;
        ST0F_r3_st0f_0_TEXT_SIZE = ABSOLUTE(ST0F_r3_st0f_0_TEXT_END - ST0F_r3_st0f_0_TEXT_START);
        ST0F_r3_st0f_0_DATA_START = .;
        _5018_data__s = .;
        build/asm/ST0F/ovl0__progbin_r3_st0f.bin/data/5018.data.s.o(.data);
        ST0F_r3_st0f_0_DATA_END = .;
        ST0F_r3_st0f_0_DATA_SIZE = ABSOLUTE(ST0F_r3_st0f_0_DATA_END - ST0F_r3_st0f_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_r3_st0f_0);
    __romPos = ALIGN(__romPos, 16);
    ST0F_r3_st0f_0_ROM_END = __romPos;
    ST0F_r3_st0f_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
