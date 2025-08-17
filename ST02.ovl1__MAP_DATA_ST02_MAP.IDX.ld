SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_ST02_MAP_1_header_ROM_START = __romPos;
    ST02_ST02_MAP_1_header_VRAM = ADDR(.ST02_ST02_MAP_1_header);
    .ST02_ST02_MAP_1_header : AT(ST02_ST02_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST02_ST02_MAP_1_header_DATA_START = .;
        ST02_ST02_MAP_1_header_s = .;
        build/asm/ST02/ovl1__MAP_DATA_ST02_MAP.IDX/ST02_ST02_MAP_1_header.s.o(.data);
        ST02_ST02_MAP_1_header_DATA_END = .;
        ST02_ST02_MAP_1_header_DATA_SIZE = ABSOLUTE(ST02_ST02_MAP_1_header_DATA_END - ST02_ST02_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_MAP_1_header);
    ST02_ST02_MAP_1_header_ROM_END = __romPos;
    ST02_ST02_MAP_1_header_VRAM_END = .;

    ST02_ST02_MAP_1_ROM_START = __romPos;
    ST02_ST02_MAP_1_VRAM = ADDR(.ST02_ST02_MAP_1);
    .ST02_ST02_MAP_1 0x8015C000 : AT(ST02_ST02_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST02_ST02_MAP_1_DATA_START = .;
        ST02_MAP_1_data__s = .;
        build/asm/ST02/ovl1__MAP_DATA_ST02_MAP.IDX/data/ST02_MAP_1.data.s.o(.data);
        ST02_ST02_MAP_1_DATA_END = .;
        ST02_ST02_MAP_1_DATA_SIZE = ABSOLUTE(ST02_ST02_MAP_1_DATA_END - ST02_ST02_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST02_ST02_MAP_1_ROM_END = __romPos;
    ST02_ST02_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
