SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_ST18_MAP_1_header_ROM_START = __romPos;
    ST18_ST18_MAP_1_header_VRAM = ADDR(.ST18_ST18_MAP_1_header);
    .ST18_ST18_MAP_1_header : AT(ST18_ST18_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST18_ST18_MAP_1_header_DATA_START = .;
        ST18_ST18_MAP_1_header_s = .;
        build/asm/ST18/ovl1__MAP_DATA_ST18_MAP.IDX/ST18_ST18_MAP_1_header.s.o(.data);
        ST18_ST18_MAP_1_header_DATA_END = .;
        ST18_ST18_MAP_1_header_DATA_SIZE = ABSOLUTE(ST18_ST18_MAP_1_header_DATA_END - ST18_ST18_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_MAP_1_header);
    ST18_ST18_MAP_1_header_ROM_END = __romPos;
    ST18_ST18_MAP_1_header_VRAM_END = .;

    ST18_ST18_MAP_1_ROM_START = __romPos;
    ST18_ST18_MAP_1_VRAM = ADDR(.ST18_ST18_MAP_1);
    .ST18_ST18_MAP_1 0x8015C000 : AT(ST18_ST18_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST18_ST18_MAP_1_DATA_START = .;
        ST18_MAP_1_data__s = .;
        build/asm/ST18/ovl1__MAP_DATA_ST18_MAP.IDX/data/ST18_MAP_1.data.s.o(.data);
        ST18_ST18_MAP_1_DATA_END = .;
        ST18_ST18_MAP_1_DATA_SIZE = ABSOLUTE(ST18_ST18_MAP_1_DATA_END - ST18_ST18_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST18_ST18_MAP_1_ROM_END = __romPos;
    ST18_ST18_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
