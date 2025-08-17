SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_ST00_MAP_1_header_ROM_START = __romPos;
    ST00_ST00_MAP_1_header_VRAM = ADDR(.ST00_ST00_MAP_1_header);
    .ST00_ST00_MAP_1_header : AT(ST00_ST00_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST00_ST00_MAP_1_header_DATA_START = .;
        ST00_ST00_MAP_1_header_s = .;
        build/asm/ST00/ovl1__MAP_DATA_ST00_MAP.IDX/ST00_ST00_MAP_1_header.s.o(.data);
        ST00_ST00_MAP_1_header_DATA_END = .;
        ST00_ST00_MAP_1_header_DATA_SIZE = ABSOLUTE(ST00_ST00_MAP_1_header_DATA_END - ST00_ST00_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_MAP_1_header);
    ST00_ST00_MAP_1_header_ROM_END = __romPos;
    ST00_ST00_MAP_1_header_VRAM_END = .;

    ST00_ST00_MAP_1_ROM_START = __romPos;
    ST00_ST00_MAP_1_VRAM = ADDR(.ST00_ST00_MAP_1);
    .ST00_ST00_MAP_1 0x8015C000 : AT(ST00_ST00_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST00_ST00_MAP_1_DATA_START = .;
        ST00_MAP_1_data__s = .;
        build/asm/ST00/ovl1__MAP_DATA_ST00_MAP.IDX/data/ST00_MAP_1.data.s.o(.data);
        ST00_ST00_MAP_1_DATA_END = .;
        ST00_ST00_MAP_1_DATA_SIZE = ABSOLUTE(ST00_ST00_MAP_1_DATA_END - ST00_ST00_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST00_ST00_MAP_1_ROM_END = __romPos;
    ST00_ST00_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
