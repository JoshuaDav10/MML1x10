SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_ST07_MAP_1_header_ROM_START = __romPos;
    ST07_ST07_MAP_1_header_VRAM = ADDR(.ST07_ST07_MAP_1_header);
    .ST07_ST07_MAP_1_header : AT(ST07_ST07_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST07_ST07_MAP_1_header_DATA_START = .;
        ST07_ST07_MAP_1_header_s = .;
        build/asm/ST07/ovl1__MAP_DATA_ST07_MAP.IDX/ST07_ST07_MAP_1_header.s.o(.data);
        ST07_ST07_MAP_1_header_DATA_END = .;
        ST07_ST07_MAP_1_header_DATA_SIZE = ABSOLUTE(ST07_ST07_MAP_1_header_DATA_END - ST07_ST07_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_MAP_1_header);
    ST07_ST07_MAP_1_header_ROM_END = __romPos;
    ST07_ST07_MAP_1_header_VRAM_END = .;

    ST07_ST07_MAP_1_ROM_START = __romPos;
    ST07_ST07_MAP_1_VRAM = ADDR(.ST07_ST07_MAP_1);
    .ST07_ST07_MAP_1 0x8015C000 : AT(ST07_ST07_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST07_ST07_MAP_1_DATA_START = .;
        ST07_MAP_1_data__s = .;
        build/asm/ST07/ovl1__MAP_DATA_ST07_MAP.IDX/data/ST07_MAP_1.data.s.o(.data);
        ST07_ST07_MAP_1_DATA_END = .;
        ST07_ST07_MAP_1_DATA_SIZE = ABSOLUTE(ST07_ST07_MAP_1_DATA_END - ST07_ST07_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST07_ST07_MAP_1_ROM_END = __romPos;
    ST07_ST07_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
