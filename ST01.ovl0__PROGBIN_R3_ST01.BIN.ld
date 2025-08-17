SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST01_R3_ST01_0_header_ROM_START = __romPos;
    ST01_R3_ST01_0_header_VRAM = ADDR(.ST01_R3_ST01_0_header);
    .ST01_R3_ST01_0_header : AT(ST01_R3_ST01_0_header_ROM_START) SUBALIGN(16)
    {
        ST01_R3_ST01_0_header_DATA_START = .;
        ST01_R3_ST01_0_header_s = .;
        build/asm/ST01/ovl0__PROGBIN_R3_ST01.BIN/ST01_R3_ST01_0_header.s.o(.data);
        ST01_R3_ST01_0_header_DATA_END = .;
        ST01_R3_ST01_0_header_DATA_SIZE = ABSOLUTE(ST01_R3_ST01_0_header_DATA_END - ST01_R3_ST01_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST01_R3_ST01_0_header);
    ST01_R3_ST01_0_header_ROM_END = __romPos;
    ST01_R3_ST01_0_header_VRAM_END = .;

    ST01_R3_ST01_0_ROM_START = __romPos;
    ST01_R3_ST01_0_VRAM = ADDR(.ST01_R3_ST01_0);
    .ST01_R3_ST01_0 0x80100000 : AT(ST01_R3_ST01_0_ROM_START) SUBALIGN(4)
    {
        ST01_R3_ST01_0_RODATA_START = .;
        build/asm/ST01/ovl0__PROGBIN_R3_ST01.BIN/data/800.rodata.s.o(.rodata);
        ST01_R3_ST01_0_RODATA_END = .;
        ST01_R3_ST01_0_RODATA_SIZE = ABSOLUTE(ST01_R3_ST01_0_RODATA_END - ST01_R3_ST01_0_RODATA_START);
        ST01_R3_ST01_0_TEXT_START = .;
        build/asm/ST01/ovl0__PROGBIN_R3_ST01.BIN/830.s.o(.text);
        ST01_R3_ST01_0_TEXT_END = .;
        ST01_R3_ST01_0_TEXT_SIZE = ABSOLUTE(ST01_R3_ST01_0_TEXT_END - ST01_R3_ST01_0_TEXT_START);
        ST01_R3_ST01_0_DATA_START = .;
        _1368_data__s = .;
        build/asm/ST01/ovl0__PROGBIN_R3_ST01.BIN/data/1368.data.s.o(.data);
        ST01_R3_ST01_0_DATA_END = .;
        ST01_R3_ST01_0_DATA_SIZE = ABSOLUTE(ST01_R3_ST01_0_DATA_END - ST01_R3_ST01_0_DATA_START);
    }
    __romPos += SIZEOF(.ST01_R3_ST01_0);
    __romPos = ALIGN(__romPos, 16);
    ST01_R3_ST01_0_ROM_END = __romPos;
    ST01_R3_ST01_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
