SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_MAP_1_header_ROM_START = __romPos;
    ST17_ST17_MAP_1_header_VRAM = ADDR(.ST17_ST17_MAP_1_header);
    .ST17_ST17_MAP_1_header : AT(ST17_ST17_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_MAP_1_header_DATA_START = .;
        ST17_ST17_MAP_1_header_s = .;
        build/asm/ST17/ovl1__MAP_DATA_ST17_MAP.IDX/ST17_ST17_MAP_1_header.s.o(.data);
        ST17_ST17_MAP_1_header_DATA_END = .;
        ST17_ST17_MAP_1_header_DATA_SIZE = ABSOLUTE(ST17_ST17_MAP_1_header_DATA_END - ST17_ST17_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_MAP_1_header);
    ST17_ST17_MAP_1_header_ROM_END = __romPos;
    ST17_ST17_MAP_1_header_VRAM_END = .;

    ST17_ST17_MAP_1_ROM_START = __romPos;
    ST17_ST17_MAP_1_VRAM = ADDR(.ST17_ST17_MAP_1);
    .ST17_ST17_MAP_1 0x8015C000 : AT(ST17_ST17_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_MAP_1_DATA_START = .;
        ST17_MAP_1_data__s = .;
        build/asm/ST17/ovl1__MAP_DATA_ST17_MAP.IDX/data/ST17_MAP_1.data.s.o(.data);
        ST17_ST17_MAP_1_DATA_END = .;
        ST17_ST17_MAP_1_DATA_SIZE = ABSOLUTE(ST17_ST17_MAP_1_DATA_END - ST17_ST17_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_MAP_1_ROM_END = __romPos;
    ST17_ST17_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
