SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03B_R3_ST03_0_header_ROM_START = __romPos;
    ST03B_R3_ST03_0_header_VRAM = ADDR(.ST03B_R3_ST03_0_header);
    .ST03B_R3_ST03_0_header : AT(ST03B_R3_ST03_0_header_ROM_START) SUBALIGN(16)
    {
        ST03B_R3_ST03_0_header_DATA_START = .;
        ST03B_R3_ST03_0_header_s = .;
        build/asm/ST03B/ovl0__PROGBIN_R3_ST03.BIN/ST03B_R3_ST03_0_header.s.o(.data);
        ST03B_R3_ST03_0_header_DATA_END = .;
        ST03B_R3_ST03_0_header_DATA_SIZE = ABSOLUTE(ST03B_R3_ST03_0_header_DATA_END - ST03B_R3_ST03_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_R3_ST03_0_header);
    ST03B_R3_ST03_0_header_ROM_END = __romPos;
    ST03B_R3_ST03_0_header_VRAM_END = .;

    ST03B_R3_ST03_0_ROM_START = __romPos;
    ST03B_R3_ST03_0_VRAM = ADDR(.ST03B_R3_ST03_0);
    .ST03B_R3_ST03_0 0x80100000 : AT(ST03B_R3_ST03_0_ROM_START) SUBALIGN(4)
    {
        ST03B_R3_ST03_0_RODATA_START = .;
        build/asm/ST03B/ovl0__PROGBIN_R3_ST03.BIN/data/800.rodata.s.o(.rodata);
        ST03B_R3_ST03_0_RODATA_END = .;
        ST03B_R3_ST03_0_RODATA_SIZE = ABSOLUTE(ST03B_R3_ST03_0_RODATA_END - ST03B_R3_ST03_0_RODATA_START);
        ST03B_R3_ST03_0_TEXT_START = .;
        build/asm/ST03B/ovl0__PROGBIN_R3_ST03.BIN/CBC.s.o(.text);
        ST03B_R3_ST03_0_TEXT_END = .;
        ST03B_R3_ST03_0_TEXT_SIZE = ABSOLUTE(ST03B_R3_ST03_0_TEXT_END - ST03B_R3_ST03_0_TEXT_START);
        ST03B_R3_ST03_0_DATA_START = .;
        _14AE8_data__s = .;
        build/asm/ST03B/ovl0__PROGBIN_R3_ST03.BIN/data/14AE8.data.s.o(.data);
        ST03B_R3_ST03_0_DATA_END = .;
        ST03B_R3_ST03_0_DATA_SIZE = ABSOLUTE(ST03B_R3_ST03_0_DATA_END - ST03B_R3_ST03_0_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_R3_ST03_0);
    __romPos = ALIGN(__romPos, 16);
    ST03B_R3_ST03_0_ROM_END = __romPos;
    ST03B_R3_ST03_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
