SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_R3_ST02_0_header_ROM_START = __romPos;
    ST02_R3_ST02_0_header_VRAM = ADDR(.ST02_R3_ST02_0_header);
    .ST02_R3_ST02_0_header : AT(ST02_R3_ST02_0_header_ROM_START) SUBALIGN(16)
    {
        ST02_R3_ST02_0_header_DATA_START = .;
        ST02_R3_ST02_0_header_s = .;
        build/asm/ST02/ovl0__PROGBIN_R3_ST02.BIN/ST02_R3_ST02_0_header.s.o(.data);
        ST02_R3_ST02_0_header_DATA_END = .;
        ST02_R3_ST02_0_header_DATA_SIZE = ABSOLUTE(ST02_R3_ST02_0_header_DATA_END - ST02_R3_ST02_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_R3_ST02_0_header);
    ST02_R3_ST02_0_header_ROM_END = __romPos;
    ST02_R3_ST02_0_header_VRAM_END = .;

    ST02_R3_ST02_0_ROM_START = __romPos;
    ST02_R3_ST02_0_VRAM = ADDR(.ST02_R3_ST02_0);
    .ST02_R3_ST02_0 0x80100000 : AT(ST02_R3_ST02_0_ROM_START) SUBALIGN(4)
    {
        ST02_R3_ST02_0_RODATA_START = .;
        build/asm/ST02/ovl0__PROGBIN_R3_ST02.BIN/data/800.rodata.s.o(.rodata);
        ST02_R3_ST02_0_RODATA_END = .;
        ST02_R3_ST02_0_RODATA_SIZE = ABSOLUTE(ST02_R3_ST02_0_RODATA_END - ST02_R3_ST02_0_RODATA_START);
        ST02_R3_ST02_0_TEXT_START = .;
        build/asm/ST02/ovl0__PROGBIN_R3_ST02.BIN/848.s.o(.text);
        ST02_R3_ST02_0_TEXT_END = .;
        ST02_R3_ST02_0_TEXT_SIZE = ABSOLUTE(ST02_R3_ST02_0_TEXT_END - ST02_R3_ST02_0_TEXT_START);
        ST02_R3_ST02_0_DATA_START = .;
        _6F40_data__s = .;
        build/asm/ST02/ovl0__PROGBIN_R3_ST02.BIN/data/6F40.data.s.o(.data);
        ST02_R3_ST02_0_DATA_END = .;
        ST02_R3_ST02_0_DATA_SIZE = ABSOLUTE(ST02_R3_ST02_0_DATA_END - ST02_R3_ST02_0_DATA_START);
    }
    __romPos += SIZEOF(.ST02_R3_ST02_0);
    __romPos = ALIGN(__romPos, 16);
    ST02_R3_ST02_0_ROM_END = __romPos;
    ST02_R3_ST02_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
