SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_ST08_MAP_1_header_ROM_START = __romPos;
    ST08_ST08_MAP_1_header_VRAM = ADDR(.ST08_ST08_MAP_1_header);
    .ST08_ST08_MAP_1_header : AT(ST08_ST08_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST08_ST08_MAP_1_header_DATA_START = .;
        ST08_ST08_MAP_1_header_s = .;
        build/asm/ST08/ovl1__MAP_DATA_ST08_MAP.IDX/ST08_ST08_MAP_1_header.s.o(.data);
        ST08_ST08_MAP_1_header_DATA_END = .;
        ST08_ST08_MAP_1_header_DATA_SIZE = ABSOLUTE(ST08_ST08_MAP_1_header_DATA_END - ST08_ST08_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_MAP_1_header);
    ST08_ST08_MAP_1_header_ROM_END = __romPos;
    ST08_ST08_MAP_1_header_VRAM_END = .;

    ST08_ST08_MAP_1_ROM_START = __romPos;
    ST08_ST08_MAP_1_VRAM = ADDR(.ST08_ST08_MAP_1);
    .ST08_ST08_MAP_1 0x8015C000 : AT(ST08_ST08_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST08_ST08_MAP_1_DATA_START = .;
        ST08_MAP_1_data__s = .;
        build/asm/ST08/ovl1__MAP_DATA_ST08_MAP.IDX/data/ST08_MAP_1.data.s.o(.data);
        ST08_ST08_MAP_1_DATA_END = .;
        ST08_ST08_MAP_1_DATA_SIZE = ABSOLUTE(ST08_ST08_MAP_1_DATA_END - ST08_ST08_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST08_ST08_MAP_1_ROM_END = __romPos;
    ST08_ST08_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
