SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_r3_st17_0_header_ROM_START = __romPos;
    ST17_r3_st17_0_header_VRAM = ADDR(.ST17_r3_st17_0_header);
    .ST17_r3_st17_0_header : AT(ST17_r3_st17_0_header_ROM_START) SUBALIGN(16)
    {
        ST17_r3_st17_0_header_DATA_START = .;
        ST17_r3_st17_0_header_s = .;
        build/asm/ST17/ovl0__progbin_r3_st17.bin/ST17_r3_st17_0_header.s.o(.data);
        ST17_r3_st17_0_header_DATA_END = .;
        ST17_r3_st17_0_header_DATA_SIZE = ABSOLUTE(ST17_r3_st17_0_header_DATA_END - ST17_r3_st17_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_r3_st17_0_header);
    ST17_r3_st17_0_header_ROM_END = __romPos;
    ST17_r3_st17_0_header_VRAM_END = .;

    ST17_r3_st17_0_ROM_START = __romPos;
    ST17_r3_st17_0_VRAM = ADDR(.ST17_r3_st17_0);
    .ST17_r3_st17_0 0x80100000 : AT(ST17_r3_st17_0_ROM_START) SUBALIGN(4)
    {
        ST17_r3_st17_0_RODATA_START = .;
        build/asm/ST17/ovl0__progbin_r3_st17.bin/data/800.rodata.s.o(.rodata);
        ST17_r3_st17_0_RODATA_END = .;
        ST17_r3_st17_0_RODATA_SIZE = ABSOLUTE(ST17_r3_st17_0_RODATA_END - ST17_r3_st17_0_RODATA_START);
        ST17_r3_st17_0_TEXT_START = .;
        build/asm/ST17/ovl0__progbin_r3_st17.bin/D2C.s.o(.text);
        ST17_r3_st17_0_TEXT_END = .;
        ST17_r3_st17_0_TEXT_SIZE = ABSOLUTE(ST17_r3_st17_0_TEXT_END - ST17_r3_st17_0_TEXT_START);
        ST17_r3_st17_0_DATA_START = .;
        _1AF4C_data__s = .;
        build/asm/ST17/ovl0__progbin_r3_st17.bin/data/1AF4C.data.s.o(.data);
        ST17_r3_st17_0_DATA_END = .;
        ST17_r3_st17_0_DATA_SIZE = ABSOLUTE(ST17_r3_st17_0_DATA_END - ST17_r3_st17_0_DATA_START);
    }
    __romPos += SIZEOF(.ST17_r3_st17_0);
    __romPos = ALIGN(__romPos, 16);
    ST17_r3_st17_0_ROM_END = __romPos;
    ST17_r3_st17_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
