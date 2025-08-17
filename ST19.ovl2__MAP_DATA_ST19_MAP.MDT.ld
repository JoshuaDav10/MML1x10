SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_ST19_MAP_2_header_ROM_START = __romPos;
    ST19_ST19_MAP_2_header_VRAM = ADDR(.ST19_ST19_MAP_2_header);
    .ST19_ST19_MAP_2_header : AT(ST19_ST19_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST19_ST19_MAP_2_header_DATA_START = .;
        ST19_ST19_MAP_2_header_s = .;
        build/asm/ST19/ovl2__MAP_DATA_ST19_MAP.MDT/ST19_ST19_MAP_2_header.s.o(.data);
        ST19_ST19_MAP_2_header_DATA_END = .;
        ST19_ST19_MAP_2_header_DATA_SIZE = ABSOLUTE(ST19_ST19_MAP_2_header_DATA_END - ST19_ST19_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_MAP_2_header);
    ST19_ST19_MAP_2_header_ROM_END = __romPos;
    ST19_ST19_MAP_2_header_VRAM_END = .;

    ST19_ST19_MAP_2_ROM_START = __romPos;
    ST19_ST19_MAP_2_VRAM = ADDR(.ST19_ST19_MAP_2);
    .ST19_ST19_MAP_2 0x80164000 : AT(ST19_ST19_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST19_ST19_MAP_2_DATA_START = .;
        ST19_MAP_2_data__s = .;
        build/asm/ST19/ovl2__MAP_DATA_ST19_MAP.MDT/data/ST19_MAP_2.data.s.o(.data);
        ST19_ST19_MAP_2_DATA_END = .;
        ST19_ST19_MAP_2_DATA_SIZE = ABSOLUTE(ST19_ST19_MAP_2_DATA_END - ST19_ST19_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST19_ST19_MAP_2_ROM_END = __romPos;
    ST19_ST19_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
