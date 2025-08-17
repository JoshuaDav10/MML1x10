SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_ST09_MAP_1_header_ROM_START = __romPos;
    ST09_ST09_MAP_1_header_VRAM = ADDR(.ST09_ST09_MAP_1_header);
    .ST09_ST09_MAP_1_header : AT(ST09_ST09_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST09_ST09_MAP_1_header_DATA_START = .;
        ST09_ST09_MAP_1_header_s = .;
        build/asm/ST09/ovl1__MAP_DATA_ST09_MAP.IDX/ST09_ST09_MAP_1_header.s.o(.data);
        ST09_ST09_MAP_1_header_DATA_END = .;
        ST09_ST09_MAP_1_header_DATA_SIZE = ABSOLUTE(ST09_ST09_MAP_1_header_DATA_END - ST09_ST09_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_MAP_1_header);
    ST09_ST09_MAP_1_header_ROM_END = __romPos;
    ST09_ST09_MAP_1_header_VRAM_END = .;

    ST09_ST09_MAP_1_ROM_START = __romPos;
    ST09_ST09_MAP_1_VRAM = ADDR(.ST09_ST09_MAP_1);
    .ST09_ST09_MAP_1 0x8015C000 : AT(ST09_ST09_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST09_ST09_MAP_1_DATA_START = .;
        ST09_MAP_1_data__s = .;
        build/asm/ST09/ovl1__MAP_DATA_ST09_MAP.IDX/data/ST09_MAP_1.data.s.o(.data);
        ST09_ST09_MAP_1_DATA_END = .;
        ST09_ST09_MAP_1_DATA_SIZE = ABSOLUTE(ST09_ST09_MAP_1_DATA_END - ST09_ST09_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST09_ST09_MAP_1_ROM_END = __romPos;
    ST09_ST09_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
