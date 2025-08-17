SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_ST19_4_header_ROM_START = __romPos;
    ST19_ST19_4_header_VRAM = ADDR(.ST19_ST19_4_header);
    .ST19_ST19_4_header : AT(ST19_ST19_4_header_ROM_START) SUBALIGN(16)
    {
        ST19_ST19_4_header_DATA_START = .;
        ST19_ST19_4_header_s = .;
        build/asm/ST19/ovl4__SCR_DATA_ST19.HED/ST19_ST19_4_header.s.o(.data);
        ST19_ST19_4_header_DATA_END = .;
        ST19_ST19_4_header_DATA_SIZE = ABSOLUTE(ST19_ST19_4_header_DATA_END - ST19_ST19_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_4_header);
    ST19_ST19_4_header_ROM_END = __romPos;
    ST19_ST19_4_header_VRAM_END = .;

    ST19_ST19_4_ROM_START = __romPos;
    ST19_ST19_4_VRAM = ADDR(.ST19_ST19_4);
    .ST19_ST19_4 0x8013A000 : AT(ST19_ST19_4_ROM_START) SUBALIGN(4)
    {
        ST19_ST19_4_DATA_START = .;
        ST19_4_data__s = .;
        build/asm/ST19/ovl4__SCR_DATA_ST19.HED/data/ST19_4.data.s.o(.data);
        ST19_ST19_4_DATA_END = .;
        ST19_ST19_4_DATA_SIZE = ABSOLUTE(ST19_ST19_4_DATA_END - ST19_ST19_4_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_4);
    __romPos = ALIGN(__romPos, 16);
    ST19_ST19_4_ROM_END = __romPos;
    ST19_ST19_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
