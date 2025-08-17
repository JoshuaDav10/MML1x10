SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_ST05_MAP_1_header_ROM_START = __romPos;
    ST05_ST05_MAP_1_header_VRAM = ADDR(.ST05_ST05_MAP_1_header);
    .ST05_ST05_MAP_1_header : AT(ST05_ST05_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST05_ST05_MAP_1_header_DATA_START = .;
        ST05_ST05_MAP_1_header_s = .;
        build/asm/ST05/ovl1__MAP_DATA_ST05_MAP.IDX/ST05_ST05_MAP_1_header.s.o(.data);
        ST05_ST05_MAP_1_header_DATA_END = .;
        ST05_ST05_MAP_1_header_DATA_SIZE = ABSOLUTE(ST05_ST05_MAP_1_header_DATA_END - ST05_ST05_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_MAP_1_header);
    ST05_ST05_MAP_1_header_ROM_END = __romPos;
    ST05_ST05_MAP_1_header_VRAM_END = .;

    ST05_ST05_MAP_1_ROM_START = __romPos;
    ST05_ST05_MAP_1_VRAM = ADDR(.ST05_ST05_MAP_1);
    .ST05_ST05_MAP_1 0x8015C000 : AT(ST05_ST05_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST05_ST05_MAP_1_DATA_START = .;
        ST05_MAP_1_data__s = .;
        build/asm/ST05/ovl1__MAP_DATA_ST05_MAP.IDX/data/ST05_MAP_1.data.s.o(.data);
        ST05_ST05_MAP_1_DATA_END = .;
        ST05_ST05_MAP_1_DATA_SIZE = ABSOLUTE(ST05_ST05_MAP_1_DATA_END - ST05_ST05_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST05_ST05_MAP_1_ROM_END = __romPos;
    ST05_ST05_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
