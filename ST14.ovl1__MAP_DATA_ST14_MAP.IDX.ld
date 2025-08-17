SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_ST14_MAP_1_header_ROM_START = __romPos;
    ST14_ST14_MAP_1_header_VRAM = ADDR(.ST14_ST14_MAP_1_header);
    .ST14_ST14_MAP_1_header : AT(ST14_ST14_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST14_ST14_MAP_1_header_DATA_START = .;
        ST14_ST14_MAP_1_header_s = .;
        build/asm/ST14/ovl1__MAP_DATA_ST14_MAP.IDX/ST14_ST14_MAP_1_header.s.o(.data);
        ST14_ST14_MAP_1_header_DATA_END = .;
        ST14_ST14_MAP_1_header_DATA_SIZE = ABSOLUTE(ST14_ST14_MAP_1_header_DATA_END - ST14_ST14_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_MAP_1_header);
    ST14_ST14_MAP_1_header_ROM_END = __romPos;
    ST14_ST14_MAP_1_header_VRAM_END = .;

    ST14_ST14_MAP_1_ROM_START = __romPos;
    ST14_ST14_MAP_1_VRAM = ADDR(.ST14_ST14_MAP_1);
    .ST14_ST14_MAP_1 0x8015C000 : AT(ST14_ST14_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST14_ST14_MAP_1_DATA_START = .;
        ST14_MAP_1_data__s = .;
        build/asm/ST14/ovl1__MAP_DATA_ST14_MAP.IDX/data/ST14_MAP_1.data.s.o(.data);
        ST14_ST14_MAP_1_DATA_END = .;
        ST14_ST14_MAP_1_DATA_SIZE = ABSOLUTE(ST14_ST14_MAP_1_DATA_END - ST14_ST14_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST14_ST14_MAP_1_ROM_END = __romPos;
    ST14_ST14_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
