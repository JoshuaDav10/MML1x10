SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_ST15_MAP_1_header_ROM_START = __romPos;
    ST15_ST15_MAP_1_header_VRAM = ADDR(.ST15_ST15_MAP_1_header);
    .ST15_ST15_MAP_1_header : AT(ST15_ST15_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST15_ST15_MAP_1_header_DATA_START = .;
        ST15_ST15_MAP_1_header_s = .;
        build/asm/ST15/ovl1__MAP_DATA_ST15_MAP.IDX/ST15_ST15_MAP_1_header.s.o(.data);
        ST15_ST15_MAP_1_header_DATA_END = .;
        ST15_ST15_MAP_1_header_DATA_SIZE = ABSOLUTE(ST15_ST15_MAP_1_header_DATA_END - ST15_ST15_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_MAP_1_header);
    ST15_ST15_MAP_1_header_ROM_END = __romPos;
    ST15_ST15_MAP_1_header_VRAM_END = .;

    ST15_ST15_MAP_1_ROM_START = __romPos;
    ST15_ST15_MAP_1_VRAM = ADDR(.ST15_ST15_MAP_1);
    .ST15_ST15_MAP_1 0x8015C000 : AT(ST15_ST15_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST15_ST15_MAP_1_DATA_START = .;
        ST15_MAP_1_data__s = .;
        build/asm/ST15/ovl1__MAP_DATA_ST15_MAP.IDX/data/ST15_MAP_1.data.s.o(.data);
        ST15_ST15_MAP_1_DATA_END = .;
        ST15_ST15_MAP_1_DATA_SIZE = ABSOLUTE(ST15_ST15_MAP_1_DATA_END - ST15_ST15_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST15_ST15_MAP_1_ROM_END = __romPos;
    ST15_ST15_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
