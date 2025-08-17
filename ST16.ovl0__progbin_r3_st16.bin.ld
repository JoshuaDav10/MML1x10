SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_r3_st16_0_header_ROM_START = __romPos;
    ST16_r3_st16_0_header_VRAM = ADDR(.ST16_r3_st16_0_header);
    .ST16_r3_st16_0_header : AT(ST16_r3_st16_0_header_ROM_START) SUBALIGN(16)
    {
        ST16_r3_st16_0_header_DATA_START = .;
        ST16_r3_st16_0_header_s = .;
        build/asm/ST16/ovl0__progbin_r3_st16.bin/ST16_r3_st16_0_header.s.o(.data);
        ST16_r3_st16_0_header_DATA_END = .;
        ST16_r3_st16_0_header_DATA_SIZE = ABSOLUTE(ST16_r3_st16_0_header_DATA_END - ST16_r3_st16_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_r3_st16_0_header);
    ST16_r3_st16_0_header_ROM_END = __romPos;
    ST16_r3_st16_0_header_VRAM_END = .;

    ST16_r3_st16_0_ROM_START = __romPos;
    ST16_r3_st16_0_VRAM = ADDR(.ST16_r3_st16_0);
    .ST16_r3_st16_0 0x80100000 : AT(ST16_r3_st16_0_ROM_START) SUBALIGN(4)
    {
        ST16_r3_st16_0_RODATA_START = .;
        build/asm/ST16/ovl0__progbin_r3_st16.bin/data/800.rodata.s.o(.rodata);
        ST16_r3_st16_0_RODATA_END = .;
        ST16_r3_st16_0_RODATA_SIZE = ABSOLUTE(ST16_r3_st16_0_RODATA_END - ST16_r3_st16_0_RODATA_START);
        ST16_r3_st16_0_TEXT_START = .;
        build/asm/ST16/ovl0__progbin_r3_st16.bin/89C.s.o(.text);
        ST16_r3_st16_0_TEXT_END = .;
        ST16_r3_st16_0_TEXT_SIZE = ABSOLUTE(ST16_r3_st16_0_TEXT_END - ST16_r3_st16_0_TEXT_START);
        ST16_r3_st16_0_DATA_START = .;
        _3968_data__s = .;
        build/asm/ST16/ovl0__progbin_r3_st16.bin/data/3968.data.s.o(.data);
        ST16_r3_st16_0_DATA_END = .;
        ST16_r3_st16_0_DATA_SIZE = ABSOLUTE(ST16_r3_st16_0_DATA_END - ST16_r3_st16_0_DATA_START);
    }
    __romPos += SIZEOF(.ST16_r3_st16_0);
    __romPos = ALIGN(__romPos, 16);
    ST16_r3_st16_0_ROM_END = __romPos;
    ST16_r3_st16_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
