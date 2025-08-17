SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_R3_ST00_0_header_ROM_START = __romPos;
    ST00_R3_ST00_0_header_VRAM = ADDR(.ST00_R3_ST00_0_header);
    .ST00_R3_ST00_0_header : AT(ST00_R3_ST00_0_header_ROM_START) SUBALIGN(16)
    {
        ST00_R3_ST00_0_header_DATA_START = .;
        ST00_R3_ST00_0_header_s = .;
        build/asm/ST00/ovl0__PROGBIN_R3_ST00.BIN/ST00_R3_ST00_0_header.s.o(.data);
        ST00_R3_ST00_0_header_DATA_END = .;
        ST00_R3_ST00_0_header_DATA_SIZE = ABSOLUTE(ST00_R3_ST00_0_header_DATA_END - ST00_R3_ST00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_R3_ST00_0_header);
    ST00_R3_ST00_0_header_ROM_END = __romPos;
    ST00_R3_ST00_0_header_VRAM_END = .;

    ST00_R3_ST00_0_ROM_START = __romPos;
    ST00_R3_ST00_0_VRAM = ADDR(.ST00_R3_ST00_0);
    .ST00_R3_ST00_0 0x80100000 : AT(ST00_R3_ST00_0_ROM_START) SUBALIGN(4)
    {
        ST00_R3_ST00_0_RODATA_START = .;
        build/asm/ST00/ovl0__PROGBIN_R3_ST00.BIN/data/800.rodata.s.o(.rodata);
        ST00_R3_ST00_0_RODATA_END = .;
        ST00_R3_ST00_0_RODATA_SIZE = ABSOLUTE(ST00_R3_ST00_0_RODATA_END - ST00_R3_ST00_0_RODATA_START);
        ST00_R3_ST00_0_TEXT_START = .;
        build/asm/ST00/ovl0__PROGBIN_R3_ST00.BIN/B24.s.o(.text);
        ST00_R3_ST00_0_TEXT_END = .;
        ST00_R3_ST00_0_TEXT_SIZE = ABSOLUTE(ST00_R3_ST00_0_TEXT_END - ST00_R3_ST00_0_TEXT_START);
        ST00_R3_ST00_0_DATA_START = .;
        _1A454_data__s = .;
        build/asm/ST00/ovl0__PROGBIN_R3_ST00.BIN/data/1A454.data.s.o(.data);
        ST00_R3_ST00_0_DATA_END = .;
        ST00_R3_ST00_0_DATA_SIZE = ABSOLUTE(ST00_R3_ST00_0_DATA_END - ST00_R3_ST00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST00_R3_ST00_0);
    __romPos = ALIGN(__romPos, 16);
    ST00_R3_ST00_0_ROM_END = __romPos;
    ST00_R3_ST00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
