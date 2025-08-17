SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_ST00_4_header_ROM_START = __romPos;
    ST00_ST00_4_header_VRAM = ADDR(.ST00_ST00_4_header);
    .ST00_ST00_4_header : AT(ST00_ST00_4_header_ROM_START) SUBALIGN(16)
    {
        ST00_ST00_4_header_DATA_START = .;
        ST00_ST00_4_header_s = .;
        build/asm/ST00/ovl4__SCR_DATA_ST00.HED/ST00_ST00_4_header.s.o(.data);
        ST00_ST00_4_header_DATA_END = .;
        ST00_ST00_4_header_DATA_SIZE = ABSOLUTE(ST00_ST00_4_header_DATA_END - ST00_ST00_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_4_header);
    ST00_ST00_4_header_ROM_END = __romPos;
    ST00_ST00_4_header_VRAM_END = .;

    ST00_ST00_4_ROM_START = __romPos;
    ST00_ST00_4_VRAM = ADDR(.ST00_ST00_4);
    .ST00_ST00_4 0x8013A000 : AT(ST00_ST00_4_ROM_START) SUBALIGN(4)
    {
        ST00_ST00_4_DATA_START = .;
        ST00_4_data__s = .;
        build/asm/ST00/ovl4__SCR_DATA_ST00.HED/data/ST00_4.data.s.o(.data);
        ST00_ST00_4_DATA_END = .;
        ST00_ST00_4_DATA_SIZE = ABSOLUTE(ST00_ST00_4_DATA_END - ST00_ST00_4_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_4);
    __romPos = ALIGN(__romPos, 16);
    ST00_ST00_4_ROM_END = __romPos;
    ST00_ST00_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
