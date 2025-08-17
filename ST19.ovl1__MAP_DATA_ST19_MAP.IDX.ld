SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_ST19_MAP_1_header_ROM_START = __romPos;
    ST19_ST19_MAP_1_header_VRAM = ADDR(.ST19_ST19_MAP_1_header);
    .ST19_ST19_MAP_1_header : AT(ST19_ST19_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST19_ST19_MAP_1_header_DATA_START = .;
        ST19_ST19_MAP_1_header_s = .;
        build/asm/ST19/ovl1__MAP_DATA_ST19_MAP.IDX/ST19_ST19_MAP_1_header.s.o(.data);
        ST19_ST19_MAP_1_header_DATA_END = .;
        ST19_ST19_MAP_1_header_DATA_SIZE = ABSOLUTE(ST19_ST19_MAP_1_header_DATA_END - ST19_ST19_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_MAP_1_header);
    ST19_ST19_MAP_1_header_ROM_END = __romPos;
    ST19_ST19_MAP_1_header_VRAM_END = .;

    ST19_ST19_MAP_1_ROM_START = __romPos;
    ST19_ST19_MAP_1_VRAM = ADDR(.ST19_ST19_MAP_1);
    .ST19_ST19_MAP_1 0x8015C000 : AT(ST19_ST19_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST19_ST19_MAP_1_DATA_START = .;
        ST19_MAP_1_data__s = .;
        build/asm/ST19/ovl1__MAP_DATA_ST19_MAP.IDX/data/ST19_MAP_1.data.s.o(.data);
        ST19_ST19_MAP_1_DATA_END = .;
        ST19_ST19_MAP_1_DATA_SIZE = ABSOLUTE(ST19_ST19_MAP_1_DATA_END - ST19_ST19_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST19_ST19_MAP_1_ROM_END = __romPos;
    ST19_ST19_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
