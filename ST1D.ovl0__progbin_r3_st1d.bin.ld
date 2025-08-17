SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1D_r3_st1d_0_header_ROM_START = __romPos;
    ST1D_r3_st1d_0_header_VRAM = ADDR(.ST1D_r3_st1d_0_header);
    .ST1D_r3_st1d_0_header : AT(ST1D_r3_st1d_0_header_ROM_START) SUBALIGN(16)
    {
        ST1D_r3_st1d_0_header_DATA_START = .;
        ST1D_r3_st1d_0_header_s = .;
        build/asm/ST1D/ovl0__progbin_r3_st1d.bin/ST1D_r3_st1d_0_header.s.o(.data);
        ST1D_r3_st1d_0_header_DATA_END = .;
        ST1D_r3_st1d_0_header_DATA_SIZE = ABSOLUTE(ST1D_r3_st1d_0_header_DATA_END - ST1D_r3_st1d_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_r3_st1d_0_header);
    ST1D_r3_st1d_0_header_ROM_END = __romPos;
    ST1D_r3_st1d_0_header_VRAM_END = .;

    ST1D_r3_st1d_0_ROM_START = __romPos;
    ST1D_r3_st1d_0_VRAM = ADDR(.ST1D_r3_st1d_0);
    .ST1D_r3_st1d_0 0x80100000 : AT(ST1D_r3_st1d_0_ROM_START) SUBALIGN(4)
    {
        ST1D_r3_st1d_0_RODATA_START = .;
        build/asm/ST1D/ovl0__progbin_r3_st1d.bin/data/800.rodata.s.o(.rodata);
        ST1D_r3_st1d_0_RODATA_END = .;
        ST1D_r3_st1d_0_RODATA_SIZE = ABSOLUTE(ST1D_r3_st1d_0_RODATA_END - ST1D_r3_st1d_0_RODATA_START);
        ST1D_r3_st1d_0_TEXT_START = .;
        build/asm/ST1D/ovl0__progbin_r3_st1d.bin/A88.s.o(.text);
        ST1D_r3_st1d_0_TEXT_END = .;
        ST1D_r3_st1d_0_TEXT_SIZE = ABSOLUTE(ST1D_r3_st1d_0_TEXT_END - ST1D_r3_st1d_0_TEXT_START);
        ST1D_r3_st1d_0_DATA_START = .;
        _14610_data__s = .;
        build/asm/ST1D/ovl0__progbin_r3_st1d.bin/data/14610.data.s.o(.data);
        ST1D_r3_st1d_0_DATA_END = .;
        ST1D_r3_st1d_0_DATA_SIZE = ABSOLUTE(ST1D_r3_st1d_0_DATA_END - ST1D_r3_st1d_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_r3_st1d_0);
    __romPos = ALIGN(__romPos, 16);
    ST1D_r3_st1d_0_ROM_END = __romPos;
    ST1D_r3_st1d_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
