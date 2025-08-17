SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04B_ST04_5_header_ROM_START = __romPos;
    ST04B_ST04_5_header_VRAM = ADDR(.ST04B_ST04_5_header);
    .ST04B_ST04_5_header : AT(ST04B_ST04_5_header_ROM_START) SUBALIGN(16)
    {
        ST04B_ST04_5_header_DATA_START = .;
        ST04B_ST04_5_header_s = .;
        build/asm/ST04B/ovl5__SCR_DATA_ST04.HD2/ST04B_ST04_5_header.s.o(.data);
        ST04B_ST04_5_header_DATA_END = .;
        ST04B_ST04_5_header_DATA_SIZE = ABSOLUTE(ST04B_ST04_5_header_DATA_END - ST04B_ST04_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_5_header);
    ST04B_ST04_5_header_ROM_END = __romPos;
    ST04B_ST04_5_header_VRAM_END = .;

    ST04B_ST04_5_ROM_START = __romPos;
    ST04B_ST04_5_VRAM = ADDR(.ST04B_ST04_5);
    .ST04B_ST04_5 0x80139F00 : AT(ST04B_ST04_5_ROM_START) SUBALIGN(4)
    {
        ST04B_ST04_5_DATA_START = .;
        ST04_5_data__s = .;
        build/asm/ST04B/ovl5__SCR_DATA_ST04.HD2/data/ST04_5.data.s.o(.data);
        ST04B_ST04_5_DATA_END = .;
        ST04B_ST04_5_DATA_SIZE = ABSOLUTE(ST04B_ST04_5_DATA_END - ST04B_ST04_5_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_5);
    __romPos = ALIGN(__romPos, 16);
    ST04B_ST04_5_ROM_END = __romPos;
    ST04B_ST04_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
