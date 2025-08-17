SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_r3_st07_0_header_ROM_START = __romPos;
    ST07_r3_st07_0_header_VRAM = ADDR(.ST07_r3_st07_0_header);
    .ST07_r3_st07_0_header : AT(ST07_r3_st07_0_header_ROM_START) SUBALIGN(16)
    {
        ST07_r3_st07_0_header_DATA_START = .;
        ST07_r3_st07_0_header_s = .;
        build/asm/ST07/ovl0__progbin_r3_st07.bin/ST07_r3_st07_0_header.s.o(.data);
        ST07_r3_st07_0_header_DATA_END = .;
        ST07_r3_st07_0_header_DATA_SIZE = ABSOLUTE(ST07_r3_st07_0_header_DATA_END - ST07_r3_st07_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_r3_st07_0_header);
    ST07_r3_st07_0_header_ROM_END = __romPos;
    ST07_r3_st07_0_header_VRAM_END = .;

    ST07_r3_st07_0_ROM_START = __romPos;
    ST07_r3_st07_0_VRAM = ADDR(.ST07_r3_st07_0);
    .ST07_r3_st07_0 0x80100000 : AT(ST07_r3_st07_0_ROM_START) SUBALIGN(4)
    {
        ST07_r3_st07_0_RODATA_START = .;
        build/asm/ST07/ovl0__progbin_r3_st07.bin/data/r3_st07_0.rodata.s.o(.rodata);
        ST07_r3_st07_0_RODATA_END = .;
        ST07_r3_st07_0_RODATA_SIZE = ABSOLUTE(ST07_r3_st07_0_RODATA_END - ST07_r3_st07_0_RODATA_START);
        ST07_r3_st07_0_TEXT_START = .;
        build/asm/ST07/ovl0__progbin_r3_st07.bin/848.s.o(.text);
        ST07_r3_st07_0_TEXT_END = .;
        ST07_r3_st07_0_TEXT_SIZE = ABSOLUTE(ST07_r3_st07_0_TEXT_END - ST07_r3_st07_0_TEXT_START);
        ST07_r3_st07_0_DATA_START = .;
        _5ADC_data__s = .;
        build/asm/ST07/ovl0__progbin_r3_st07.bin/data/5ADC.data.s.o(.data);
        ST07_r3_st07_0_DATA_END = .;
        ST07_r3_st07_0_DATA_SIZE = ABSOLUTE(ST07_r3_st07_0_DATA_END - ST07_r3_st07_0_DATA_START);
    }
    __romPos += SIZEOF(.ST07_r3_st07_0);
    __romPos = ALIGN(__romPos, 16);
    ST07_r3_st07_0_ROM_END = __romPos;
    ST07_r3_st07_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
