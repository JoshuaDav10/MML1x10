SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04B_ST04_4_header_ROM_START = __romPos;
    ST04B_ST04_4_header_VRAM = ADDR(.ST04B_ST04_4_header);
    .ST04B_ST04_4_header : AT(ST04B_ST04_4_header_ROM_START) SUBALIGN(16)
    {
        ST04B_ST04_4_header_DATA_START = .;
        ST04B_ST04_4_header_s = .;
        build/asm/ST04B/ovl4__SCR_DATA_ST04.HED/ST04B_ST04_4_header.s.o(.data);
        ST04B_ST04_4_header_DATA_END = .;
        ST04B_ST04_4_header_DATA_SIZE = ABSOLUTE(ST04B_ST04_4_header_DATA_END - ST04B_ST04_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_4_header);
    ST04B_ST04_4_header_ROM_END = __romPos;
    ST04B_ST04_4_header_VRAM_END = .;

    ST04B_ST04_4_ROM_START = __romPos;
    ST04B_ST04_4_VRAM = ADDR(.ST04B_ST04_4);
    .ST04B_ST04_4 0x8013A000 : AT(ST04B_ST04_4_ROM_START) SUBALIGN(4)
    {
        ST04B_ST04_4_DATA_START = .;
        ST04_4_data__s = .;
        build/asm/ST04B/ovl4__SCR_DATA_ST04.HED/data/ST04_4.data.s.o(.data);
        ST04B_ST04_4_DATA_END = .;
        ST04B_ST04_4_DATA_SIZE = ABSOLUTE(ST04B_ST04_4_DATA_END - ST04B_ST04_4_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_4);
    __romPos = ALIGN(__romPos, 16);
    ST04B_ST04_4_ROM_END = __romPos;
    ST04B_ST04_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
