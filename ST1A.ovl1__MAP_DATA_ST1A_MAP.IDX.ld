SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_ST1A_MAP_1_header_ROM_START = __romPos;
    ST1A_ST1A_MAP_1_header_VRAM = ADDR(.ST1A_ST1A_MAP_1_header);
    .ST1A_ST1A_MAP_1_header : AT(ST1A_ST1A_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST1A_ST1A_MAP_1_header_DATA_START = .;
        ST1A_ST1A_MAP_1_header_s = .;
        build/asm/ST1A/ovl1__MAP_DATA_ST1A_MAP.IDX/ST1A_ST1A_MAP_1_header.s.o(.data);
        ST1A_ST1A_MAP_1_header_DATA_END = .;
        ST1A_ST1A_MAP_1_header_DATA_SIZE = ABSOLUTE(ST1A_ST1A_MAP_1_header_DATA_END - ST1A_ST1A_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_ST1A_MAP_1_header);
    ST1A_ST1A_MAP_1_header_ROM_END = __romPos;
    ST1A_ST1A_MAP_1_header_VRAM_END = .;

    ST1A_ST1A_MAP_1_ROM_START = __romPos;
    ST1A_ST1A_MAP_1_VRAM = ADDR(.ST1A_ST1A_MAP_1);
    .ST1A_ST1A_MAP_1 0x8015C000 : AT(ST1A_ST1A_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST1A_ST1A_MAP_1_DATA_START = .;
        ST1A_MAP_1_data__s = .;
        build/asm/ST1A/ovl1__MAP_DATA_ST1A_MAP.IDX/data/ST1A_MAP_1.data.s.o(.data);
        ST1A_ST1A_MAP_1_DATA_END = .;
        ST1A_ST1A_MAP_1_DATA_SIZE = ABSOLUTE(ST1A_ST1A_MAP_1_DATA_END - ST1A_ST1A_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_ST1A_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST1A_ST1A_MAP_1_ROM_END = __romPos;
    ST1A_ST1A_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
