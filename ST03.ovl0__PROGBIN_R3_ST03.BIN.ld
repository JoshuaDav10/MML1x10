SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_R3_ST03_0_header_ROM_START = __romPos;
    ST03_R3_ST03_0_header_VRAM = ADDR(.ST03_R3_ST03_0_header);
    .ST03_R3_ST03_0_header : AT(ST03_R3_ST03_0_header_ROM_START) SUBALIGN(16)
    {
        ST03_R3_ST03_0_header_DATA_START = .;
        ST03_R3_ST03_0_header_s = .;
        build/asm/ST03/ovl0__PROGBIN_R3_ST03.BIN/ST03_R3_ST03_0_header.s.o(.data);
        ST03_R3_ST03_0_header_DATA_END = .;
        ST03_R3_ST03_0_header_DATA_SIZE = ABSOLUTE(ST03_R3_ST03_0_header_DATA_END - ST03_R3_ST03_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_R3_ST03_0_header);
    ST03_R3_ST03_0_header_ROM_END = __romPos;
    ST03_R3_ST03_0_header_VRAM_END = .;

    ST03_R3_ST03_0_ROM_START = __romPos;
    ST03_R3_ST03_0_VRAM = ADDR(.ST03_R3_ST03_0);
    .ST03_R3_ST03_0 0x80100000 : AT(ST03_R3_ST03_0_ROM_START) SUBALIGN(4)
    {
        ST03_R3_ST03_0_RODATA_START = .;
        build/asm/ST03/ovl0__PROGBIN_R3_ST03.BIN/data/800.rodata.s.o(.rodata);
        ST03_R3_ST03_0_RODATA_END = .;
        ST03_R3_ST03_0_RODATA_SIZE = ABSOLUTE(ST03_R3_ST03_0_RODATA_END - ST03_R3_ST03_0_RODATA_START);
        ST03_R3_ST03_0_TEXT_START = .;
        build/asm/ST03/ovl0__PROGBIN_R3_ST03.BIN/CBC.s.o(.text);
        ST03_R3_ST03_0_TEXT_END = .;
        ST03_R3_ST03_0_TEXT_SIZE = ABSOLUTE(ST03_R3_ST03_0_TEXT_END - ST03_R3_ST03_0_TEXT_START);
        ST03_R3_ST03_0_DATA_START = .;
        _14AE8_data__s = .;
        build/asm/ST03/ovl0__PROGBIN_R3_ST03.BIN/data/14AE8.data.s.o(.data);
        ST03_R3_ST03_0_DATA_END = .;
        ST03_R3_ST03_0_DATA_SIZE = ABSOLUTE(ST03_R3_ST03_0_DATA_END - ST03_R3_ST03_0_DATA_START);
    }
    __romPos += SIZEOF(.ST03_R3_ST03_0);
    __romPos = ALIGN(__romPos, 16);
    ST03_R3_ST03_0_ROM_END = __romPos;
    ST03_R3_ST03_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
