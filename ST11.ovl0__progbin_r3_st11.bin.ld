SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_r3_st11_0_header_ROM_START = __romPos;
    ST11_r3_st11_0_header_VRAM = ADDR(.ST11_r3_st11_0_header);
    .ST11_r3_st11_0_header : AT(ST11_r3_st11_0_header_ROM_START) SUBALIGN(16)
    {
        ST11_r3_st11_0_header_DATA_START = .;
        ST11_r3_st11_0_header_s = .;
        build/asm/ST11/ovl0__progbin_r3_st11.bin/ST11_r3_st11_0_header.s.o(.data);
        ST11_r3_st11_0_header_DATA_END = .;
        ST11_r3_st11_0_header_DATA_SIZE = ABSOLUTE(ST11_r3_st11_0_header_DATA_END - ST11_r3_st11_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_r3_st11_0_header);
    ST11_r3_st11_0_header_ROM_END = __romPos;
    ST11_r3_st11_0_header_VRAM_END = .;

    ST11_r3_st11_0_ROM_START = __romPos;
    ST11_r3_st11_0_VRAM = ADDR(.ST11_r3_st11_0);
    .ST11_r3_st11_0 0x80100000 : AT(ST11_r3_st11_0_ROM_START) SUBALIGN(4)
    {
        ST11_r3_st11_0_RODATA_START = .;
        build/asm/ST11/ovl0__progbin_r3_st11.bin/data/800.rodata.s.o(.rodata);
        ST11_r3_st11_0_RODATA_END = .;
        ST11_r3_st11_0_RODATA_SIZE = ABSOLUTE(ST11_r3_st11_0_RODATA_END - ST11_r3_st11_0_RODATA_START);
        ST11_r3_st11_0_TEXT_START = .;
        build/asm/ST11/ovl0__progbin_r3_st11.bin/8B4.s.o(.text);
        ST11_r3_st11_0_TEXT_END = .;
        ST11_r3_st11_0_TEXT_SIZE = ABSOLUTE(ST11_r3_st11_0_TEXT_END - ST11_r3_st11_0_TEXT_START);
        ST11_r3_st11_0_DATA_START = .;
        _9C40_data__s = .;
        build/asm/ST11/ovl0__progbin_r3_st11.bin/data/9C40.data.s.o(.data);
        ST11_r3_st11_0_DATA_END = .;
        ST11_r3_st11_0_DATA_SIZE = ABSOLUTE(ST11_r3_st11_0_DATA_END - ST11_r3_st11_0_DATA_START);
    }
    __romPos += SIZEOF(.ST11_r3_st11_0);
    __romPos = ALIGN(__romPos, 16);
    ST11_r3_st11_0_ROM_END = __romPos;
    ST11_r3_st11_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
