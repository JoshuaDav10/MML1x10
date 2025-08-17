SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_R3_ST05_0_header_ROM_START = __romPos;
    ST05_R3_ST05_0_header_VRAM = ADDR(.ST05_R3_ST05_0_header);
    .ST05_R3_ST05_0_header : AT(ST05_R3_ST05_0_header_ROM_START) SUBALIGN(16)
    {
        ST05_R3_ST05_0_header_DATA_START = .;
        ST05_R3_ST05_0_header_s = .;
        build/asm/ST05/ovl0__PROGBIN_R3_ST05.BIN/ST05_R3_ST05_0_header.s.o(.data);
        ST05_R3_ST05_0_header_DATA_END = .;
        ST05_R3_ST05_0_header_DATA_SIZE = ABSOLUTE(ST05_R3_ST05_0_header_DATA_END - ST05_R3_ST05_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_R3_ST05_0_header);
    ST05_R3_ST05_0_header_ROM_END = __romPos;
    ST05_R3_ST05_0_header_VRAM_END = .;

    ST05_R3_ST05_0_ROM_START = __romPos;
    ST05_R3_ST05_0_VRAM = ADDR(.ST05_R3_ST05_0);
    .ST05_R3_ST05_0 0x80100000 : AT(ST05_R3_ST05_0_ROM_START) SUBALIGN(4)
    {
        ST05_R3_ST05_0_RODATA_START = .;
        build/asm/ST05/ovl0__PROGBIN_R3_ST05.BIN/data/800.rodata.s.o(.rodata);
        ST05_R3_ST05_0_RODATA_END = .;
        ST05_R3_ST05_0_RODATA_SIZE = ABSOLUTE(ST05_R3_ST05_0_RODATA_END - ST05_R3_ST05_0_RODATA_START);
        ST05_R3_ST05_0_TEXT_START = .;
        build/asm/ST05/ovl0__PROGBIN_R3_ST05.BIN/108C.s.o(.text);
        ST05_R3_ST05_0_TEXT_END = .;
        ST05_R3_ST05_0_TEXT_SIZE = ABSOLUTE(ST05_R3_ST05_0_TEXT_END - ST05_R3_ST05_0_TEXT_START);
        ST05_R3_ST05_0_DATA_START = .;
        _2E0C4_data__s = .;
        build/asm/ST05/ovl0__PROGBIN_R3_ST05.BIN/data/2E0C4.data.s.o(.data);
        ST05_R3_ST05_0_DATA_END = .;
        ST05_R3_ST05_0_DATA_SIZE = ABSOLUTE(ST05_R3_ST05_0_DATA_END - ST05_R3_ST05_0_DATA_START);
    }
    __romPos += SIZEOF(.ST05_R3_ST05_0);
    __romPos = ALIGN(__romPos, 16);
    ST05_R3_ST05_0_ROM_END = __romPos;
    ST05_R3_ST05_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
