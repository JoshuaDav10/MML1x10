SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_ST16_MAP_1_header_ROM_START = __romPos;
    ST16_ST16_MAP_1_header_VRAM = ADDR(.ST16_ST16_MAP_1_header);
    .ST16_ST16_MAP_1_header : AT(ST16_ST16_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST16_ST16_MAP_1_header_DATA_START = .;
        ST16_ST16_MAP_1_header_s = .;
        build/asm/ST16/ovl1__MAP_DATA_ST16_MAP.IDX/ST16_ST16_MAP_1_header.s.o(.data);
        ST16_ST16_MAP_1_header_DATA_END = .;
        ST16_ST16_MAP_1_header_DATA_SIZE = ABSOLUTE(ST16_ST16_MAP_1_header_DATA_END - ST16_ST16_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_MAP_1_header);
    ST16_ST16_MAP_1_header_ROM_END = __romPos;
    ST16_ST16_MAP_1_header_VRAM_END = .;

    ST16_ST16_MAP_1_ROM_START = __romPos;
    ST16_ST16_MAP_1_VRAM = ADDR(.ST16_ST16_MAP_1);
    .ST16_ST16_MAP_1 0x8015C000 : AT(ST16_ST16_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST16_ST16_MAP_1_DATA_START = .;
        ST16_MAP_1_data__s = .;
        build/asm/ST16/ovl1__MAP_DATA_ST16_MAP.IDX/data/ST16_MAP_1.data.s.o(.data);
        ST16_ST16_MAP_1_DATA_END = .;
        ST16_ST16_MAP_1_DATA_SIZE = ABSOLUTE(ST16_ST16_MAP_1_DATA_END - ST16_ST16_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST16_ST16_MAP_1_ROM_END = __romPos;
    ST16_ST16_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
