SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_r3_st0d_0_header_ROM_START = __romPos;
    ST0D_r3_st0d_0_header_VRAM = ADDR(.ST0D_r3_st0d_0_header);
    .ST0D_r3_st0d_0_header : AT(ST0D_r3_st0d_0_header_ROM_START) SUBALIGN(16)
    {
        ST0D_r3_st0d_0_header_DATA_START = .;
        ST0D_r3_st0d_0_header_s = .;
        build/asm/ST0D/ovl0__progbin_r3_st0d.bin/ST0D_r3_st0d_0_header.s.o(.data);
        ST0D_r3_st0d_0_header_DATA_END = .;
        ST0D_r3_st0d_0_header_DATA_SIZE = ABSOLUTE(ST0D_r3_st0d_0_header_DATA_END - ST0D_r3_st0d_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_r3_st0d_0_header);
    ST0D_r3_st0d_0_header_ROM_END = __romPos;
    ST0D_r3_st0d_0_header_VRAM_END = .;

    ST0D_r3_st0d_0_ROM_START = __romPos;
    ST0D_r3_st0d_0_VRAM = ADDR(.ST0D_r3_st0d_0);
    .ST0D_r3_st0d_0 0x80100000 : AT(ST0D_r3_st0d_0_ROM_START) SUBALIGN(4)
    {
        ST0D_r3_st0d_0_RODATA_START = .;
        build/asm/ST0D/ovl0__progbin_r3_st0d.bin/data/r3_st0d_0.rodata.s.o(.rodata);
        ST0D_r3_st0d_0_RODATA_END = .;
        ST0D_r3_st0d_0_RODATA_SIZE = ABSOLUTE(ST0D_r3_st0d_0_RODATA_END - ST0D_r3_st0d_0_RODATA_START);
        ST0D_r3_st0d_0_TEXT_START = .;
        build/asm/ST0D/ovl0__progbin_r3_st0d.bin/984.s.o(.text);
        ST0D_r3_st0d_0_TEXT_END = .;
        ST0D_r3_st0d_0_TEXT_SIZE = ABSOLUTE(ST0D_r3_st0d_0_TEXT_END - ST0D_r3_st0d_0_TEXT_START);
        ST0D_r3_st0d_0_DATA_START = .;
        C450_data__s = .;
        build/asm/ST0D/ovl0__progbin_r3_st0d.bin/data/C450.data.s.o(.data);
        ST0D_r3_st0d_0_DATA_END = .;
        ST0D_r3_st0d_0_DATA_SIZE = ABSOLUTE(ST0D_r3_st0d_0_DATA_END - ST0D_r3_st0d_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_r3_st0d_0);
    __romPos = ALIGN(__romPos, 16);
    ST0D_r3_st0d_0_ROM_END = __romPos;
    ST0D_r3_st0d_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
