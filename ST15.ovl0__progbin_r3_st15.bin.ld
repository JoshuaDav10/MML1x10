SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_r3_st15_0_header_ROM_START = __romPos;
    ST15_r3_st15_0_header_VRAM = ADDR(.ST15_r3_st15_0_header);
    .ST15_r3_st15_0_header : AT(ST15_r3_st15_0_header_ROM_START) SUBALIGN(16)
    {
        ST15_r3_st15_0_header_DATA_START = .;
        ST15_r3_st15_0_header_s = .;
        build/asm/ST15/ovl0__progbin_r3_st15.bin/ST15_r3_st15_0_header.s.o(.data);
        ST15_r3_st15_0_header_DATA_END = .;
        ST15_r3_st15_0_header_DATA_SIZE = ABSOLUTE(ST15_r3_st15_0_header_DATA_END - ST15_r3_st15_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_r3_st15_0_header);
    ST15_r3_st15_0_header_ROM_END = __romPos;
    ST15_r3_st15_0_header_VRAM_END = .;

    ST15_r3_st15_0_ROM_START = __romPos;
    ST15_r3_st15_0_VRAM = ADDR(.ST15_r3_st15_0);
    .ST15_r3_st15_0 0x80100000 : AT(ST15_r3_st15_0_ROM_START) SUBALIGN(4)
    {
        ST15_r3_st15_0_RODATA_START = .;
        build/asm/ST15/ovl0__progbin_r3_st15.bin/data/800.rodata.s.o(.rodata);
        ST15_r3_st15_0_RODATA_END = .;
        ST15_r3_st15_0_RODATA_SIZE = ABSOLUTE(ST15_r3_st15_0_RODATA_END - ST15_r3_st15_0_RODATA_START);
        ST15_r3_st15_0_TEXT_START = .;
        build/asm/ST15/ovl0__progbin_r3_st15.bin/834.s.o(.text);
        ST15_r3_st15_0_TEXT_END = .;
        ST15_r3_st15_0_TEXT_SIZE = ABSOLUTE(ST15_r3_st15_0_TEXT_END - ST15_r3_st15_0_TEXT_START);
        ST15_r3_st15_0_DATA_START = .;
        _2C68_data__s = .;
        build/asm/ST15/ovl0__progbin_r3_st15.bin/data/2C68.data.s.o(.data);
        ST15_r3_st15_0_DATA_END = .;
        ST15_r3_st15_0_DATA_SIZE = ABSOLUTE(ST15_r3_st15_0_DATA_END - ST15_r3_st15_0_DATA_START);
    }
    __romPos += SIZEOF(.ST15_r3_st15_0);
    __romPos = ALIGN(__romPos, 16);
    ST15_r3_st15_0_ROM_END = __romPos;
    ST15_r3_st15_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
