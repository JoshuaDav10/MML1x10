SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04B_R3_ST04_0_header_ROM_START = __romPos;
    ST04B_R3_ST04_0_header_VRAM = ADDR(.ST04B_R3_ST04_0_header);
    .ST04B_R3_ST04_0_header : AT(ST04B_R3_ST04_0_header_ROM_START) SUBALIGN(16)
    {
        ST04B_R3_ST04_0_header_DATA_START = .;
        ST04B_R3_ST04_0_header_s = .;
        build/asm/ST04B/ovl0__PROGBIN_R3_ST04.BIN/ST04B_R3_ST04_0_header.s.o(.data);
        ST04B_R3_ST04_0_header_DATA_END = .;
        ST04B_R3_ST04_0_header_DATA_SIZE = ABSOLUTE(ST04B_R3_ST04_0_header_DATA_END - ST04B_R3_ST04_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_R3_ST04_0_header);
    ST04B_R3_ST04_0_header_ROM_END = __romPos;
    ST04B_R3_ST04_0_header_VRAM_END = .;

    ST04B_R3_ST04_0_ROM_START = __romPos;
    ST04B_R3_ST04_0_VRAM = ADDR(.ST04B_R3_ST04_0);
    .ST04B_R3_ST04_0 0x80100000 : AT(ST04B_R3_ST04_0_ROM_START) SUBALIGN(4)
    {
        ST04B_R3_ST04_0_RODATA_START = .;
        build/asm/ST04B/ovl0__PROGBIN_R3_ST04.BIN/data/800.rodata.s.o(.rodata);
        ST04B_R3_ST04_0_RODATA_END = .;
        ST04B_R3_ST04_0_RODATA_SIZE = ABSOLUTE(ST04B_R3_ST04_0_RODATA_END - ST04B_R3_ST04_0_RODATA_START);
        ST04B_R3_ST04_0_TEXT_START = .;
        build/asm/ST04B/ovl0__PROGBIN_R3_ST04.BIN/A00.s.o(.text);
        ST04B_R3_ST04_0_TEXT_END = .;
        ST04B_R3_ST04_0_TEXT_SIZE = ABSOLUTE(ST04B_R3_ST04_0_TEXT_END - ST04B_R3_ST04_0_TEXT_START);
        ST04B_R3_ST04_0_DATA_START = .;
        AD24_data__s = .;
        build/asm/ST04B/ovl0__PROGBIN_R3_ST04.BIN/data/AD24.data.s.o(.data);
        ST04B_R3_ST04_0_DATA_END = .;
        ST04B_R3_ST04_0_DATA_SIZE = ABSOLUTE(ST04B_R3_ST04_0_DATA_END - ST04B_R3_ST04_0_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_R3_ST04_0);
    __romPos = ALIGN(__romPos, 16);
    ST04B_R3_ST04_0_ROM_END = __romPos;
    ST04B_R3_ST04_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
