SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_ST06_MAP_1_header_ROM_START = __romPos;
    ST06_ST06_MAP_1_header_VRAM = ADDR(.ST06_ST06_MAP_1_header);
    .ST06_ST06_MAP_1_header : AT(ST06_ST06_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST06_ST06_MAP_1_header_DATA_START = .;
        ST06_ST06_MAP_1_header_s = .;
        build/asm/ST06/ovl1__MAP_DATA_ST06_MAP.IDX/ST06_ST06_MAP_1_header.s.o(.data);
        ST06_ST06_MAP_1_header_DATA_END = .;
        ST06_ST06_MAP_1_header_DATA_SIZE = ABSOLUTE(ST06_ST06_MAP_1_header_DATA_END - ST06_ST06_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_MAP_1_header);
    ST06_ST06_MAP_1_header_ROM_END = __romPos;
    ST06_ST06_MAP_1_header_VRAM_END = .;

    ST06_ST06_MAP_1_ROM_START = __romPos;
    ST06_ST06_MAP_1_VRAM = ADDR(.ST06_ST06_MAP_1);
    .ST06_ST06_MAP_1 0x8015C000 : AT(ST06_ST06_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST06_ST06_MAP_1_DATA_START = .;
        ST06_MAP_1_data__s = .;
        build/asm/ST06/ovl1__MAP_DATA_ST06_MAP.IDX/data/ST06_MAP_1.data.s.o(.data);
        ST06_ST06_MAP_1_DATA_END = .;
        ST06_ST06_MAP_1_DATA_SIZE = ABSOLUTE(ST06_ST06_MAP_1_DATA_END - ST06_ST06_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST06_ST06_MAP_1_ROM_END = __romPos;
    ST06_ST06_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
