SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_ST13_MAP_4_header_ROM_START = __romPos;
    ST13_ST13_MAP_4_header_VRAM = ADDR(.ST13_ST13_MAP_4_header);
    .ST13_ST13_MAP_4_header : AT(ST13_ST13_MAP_4_header_ROM_START) SUBALIGN(16)
    {
        ST13_ST13_MAP_4_header_DATA_START = .;
        ST13_ST13_MAP_4_header_s = .;
        build/asm/ST13/ovl4__MAP_DATA_ST13_MAP.IDX/ST13_ST13_MAP_4_header.s.o(.data);
        ST13_ST13_MAP_4_header_DATA_END = .;
        ST13_ST13_MAP_4_header_DATA_SIZE = ABSOLUTE(ST13_ST13_MAP_4_header_DATA_END - ST13_ST13_MAP_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_MAP_4_header);
    ST13_ST13_MAP_4_header_ROM_END = __romPos;
    ST13_ST13_MAP_4_header_VRAM_END = .;

    ST13_ST13_MAP_4_ROM_START = __romPos;
    ST13_ST13_MAP_4_VRAM = ADDR(.ST13_ST13_MAP_4);
    .ST13_ST13_MAP_4 0x8015C000 : AT(ST13_ST13_MAP_4_ROM_START) SUBALIGN(4)
    {
        ST13_ST13_MAP_4_DATA_START = .;
        ST13_MAP_4_data__s = .;
        build/asm/ST13/ovl4__MAP_DATA_ST13_MAP.IDX/data/ST13_MAP_4.data.s.o(.data);
        ST13_ST13_MAP_4_DATA_END = .;
        ST13_ST13_MAP_4_DATA_SIZE = ABSOLUTE(ST13_ST13_MAP_4_DATA_END - ST13_ST13_MAP_4_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_MAP_4);
    __romPos = ALIGN(__romPos, 16);
    ST13_ST13_MAP_4_ROM_END = __romPos;
    ST13_ST13_MAP_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
