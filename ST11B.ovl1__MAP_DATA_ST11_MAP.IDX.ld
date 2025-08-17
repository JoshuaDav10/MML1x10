SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11B_ST11_MAP_1_header_ROM_START = __romPos;
    ST11B_ST11_MAP_1_header_VRAM = ADDR(.ST11B_ST11_MAP_1_header);
    .ST11B_ST11_MAP_1_header : AT(ST11B_ST11_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST11B_ST11_MAP_1_header_DATA_START = .;
        ST11B_ST11_MAP_1_header_s = .;
        build/asm/ST11B/ovl1__MAP_DATA_ST11_MAP.IDX/ST11B_ST11_MAP_1_header.s.o(.data);
        ST11B_ST11_MAP_1_header_DATA_END = .;
        ST11B_ST11_MAP_1_header_DATA_SIZE = ABSOLUTE(ST11B_ST11_MAP_1_header_DATA_END - ST11B_ST11_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_MAP_1_header);
    ST11B_ST11_MAP_1_header_ROM_END = __romPos;
    ST11B_ST11_MAP_1_header_VRAM_END = .;

    ST11B_ST11_MAP_1_ROM_START = __romPos;
    ST11B_ST11_MAP_1_VRAM = ADDR(.ST11B_ST11_MAP_1);
    .ST11B_ST11_MAP_1 0x8015C000 : AT(ST11B_ST11_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST11B_ST11_MAP_1_DATA_START = .;
        ST11_MAP_1_data__s = .;
        build/asm/ST11B/ovl1__MAP_DATA_ST11_MAP.IDX/data/ST11_MAP_1.data.s.o(.data);
        ST11B_ST11_MAP_1_DATA_END = .;
        ST11B_ST11_MAP_1_DATA_SIZE = ABSOLUTE(ST11B_ST11_MAP_1_DATA_END - ST11B_ST11_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST11B_ST11_MAP_1_ROM_END = __romPos;
    ST11B_ST11_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
