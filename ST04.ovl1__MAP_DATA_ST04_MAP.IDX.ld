SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_ST04_MAP_1_header_ROM_START = __romPos;
    ST04_ST04_MAP_1_header_VRAM = ADDR(.ST04_ST04_MAP_1_header);
    .ST04_ST04_MAP_1_header : AT(ST04_ST04_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST04_ST04_MAP_1_header_DATA_START = .;
        ST04_ST04_MAP_1_header_s = .;
        build/asm/ST04/ovl1__MAP_DATA_ST04_MAP.IDX/ST04_ST04_MAP_1_header.s.o(.data);
        ST04_ST04_MAP_1_header_DATA_END = .;
        ST04_ST04_MAP_1_header_DATA_SIZE = ABSOLUTE(ST04_ST04_MAP_1_header_DATA_END - ST04_ST04_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_ST04_MAP_1_header);
    ST04_ST04_MAP_1_header_ROM_END = __romPos;
    ST04_ST04_MAP_1_header_VRAM_END = .;

    ST04_ST04_MAP_1_ROM_START = __romPos;
    ST04_ST04_MAP_1_VRAM = ADDR(.ST04_ST04_MAP_1);
    .ST04_ST04_MAP_1 0x8015C000 : AT(ST04_ST04_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST04_ST04_MAP_1_DATA_START = .;
        ST04_MAP_1_data__s = .;
        build/asm/ST04/ovl1__MAP_DATA_ST04_MAP.IDX/data/ST04_MAP_1.data.s.o(.data);
        ST04_ST04_MAP_1_DATA_END = .;
        ST04_ST04_MAP_1_DATA_SIZE = ABSOLUTE(ST04_ST04_MAP_1_DATA_END - ST04_ST04_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST04_ST04_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST04_ST04_MAP_1_ROM_END = __romPos;
    ST04_ST04_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
