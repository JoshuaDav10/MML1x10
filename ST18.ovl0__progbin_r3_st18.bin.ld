SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_r3_st18_0_header_ROM_START = __romPos;
    ST18_r3_st18_0_header_VRAM = ADDR(.ST18_r3_st18_0_header);
    .ST18_r3_st18_0_header : AT(ST18_r3_st18_0_header_ROM_START) SUBALIGN(16)
    {
        ST18_r3_st18_0_header_DATA_START = .;
        ST18_r3_st18_0_header_s = .;
        build/asm/ST18/ovl0__progbin_r3_st18.bin/ST18_r3_st18_0_header.s.o(.data);
        ST18_r3_st18_0_header_DATA_END = .;
        ST18_r3_st18_0_header_DATA_SIZE = ABSOLUTE(ST18_r3_st18_0_header_DATA_END - ST18_r3_st18_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_r3_st18_0_header);
    ST18_r3_st18_0_header_ROM_END = __romPos;
    ST18_r3_st18_0_header_VRAM_END = .;

    ST18_r3_st18_0_ROM_START = __romPos;
    ST18_r3_st18_0_VRAM = ADDR(.ST18_r3_st18_0);
    .ST18_r3_st18_0 0x80100000 : AT(ST18_r3_st18_0_ROM_START) SUBALIGN(4)
    {
        ST18_r3_st18_0_RODATA_START = .;
        build/asm/ST18/ovl0__progbin_r3_st18.bin/data/800.rodata.s.o(.rodata);
        ST18_r3_st18_0_RODATA_END = .;
        ST18_r3_st18_0_RODATA_SIZE = ABSOLUTE(ST18_r3_st18_0_RODATA_END - ST18_r3_st18_0_RODATA_START);
        ST18_r3_st18_0_TEXT_START = .;
        build/asm/ST18/ovl0__progbin_r3_st18.bin/1360.s.o(.text);
        ST18_r3_st18_0_TEXT_END = .;
        ST18_r3_st18_0_TEXT_SIZE = ABSOLUTE(ST18_r3_st18_0_TEXT_END - ST18_r3_st18_0_TEXT_START);
        ST18_r3_st18_0_DATA_START = .;
        _25E4_data__s = .;
        build/asm/ST18/ovl0__progbin_r3_st18.bin/data/25E4.data.s.o(.data);
        ST18_r3_st18_0_DATA_END = .;
        ST18_r3_st18_0_DATA_SIZE = ABSOLUTE(ST18_r3_st18_0_DATA_END - ST18_r3_st18_0_DATA_START);
    }
    __romPos += SIZEOF(.ST18_r3_st18_0);
    __romPos = ALIGN(__romPos, 16);
    ST18_r3_st18_0_ROM_END = __romPos;
    ST18_r3_st18_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
