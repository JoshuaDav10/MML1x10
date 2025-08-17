SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03B_ST03_MAP_1_header_ROM_START = __romPos;
    ST03B_ST03_MAP_1_header_VRAM = ADDR(.ST03B_ST03_MAP_1_header);
    .ST03B_ST03_MAP_1_header : AT(ST03B_ST03_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST03B_ST03_MAP_1_header_DATA_START = .;
        ST03B_ST03_MAP_1_header_s = .;
        build/asm/ST03B/ovl1__MAP_DATA_ST03_MAP.IDX/ST03B_ST03_MAP_1_header.s.o(.data);
        ST03B_ST03_MAP_1_header_DATA_END = .;
        ST03B_ST03_MAP_1_header_DATA_SIZE = ABSOLUTE(ST03B_ST03_MAP_1_header_DATA_END - ST03B_ST03_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_MAP_1_header);
    ST03B_ST03_MAP_1_header_ROM_END = __romPos;
    ST03B_ST03_MAP_1_header_VRAM_END = .;

    ST03B_ST03_MAP_1_ROM_START = __romPos;
    ST03B_ST03_MAP_1_VRAM = ADDR(.ST03B_ST03_MAP_1);
    .ST03B_ST03_MAP_1 0x8015C000 : AT(ST03B_ST03_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST03B_ST03_MAP_1_DATA_START = .;
        ST03_MAP_1_data__s = .;
        build/asm/ST03B/ovl1__MAP_DATA_ST03_MAP.IDX/data/ST03_MAP_1.data.s.o(.data);
        ST03B_ST03_MAP_1_DATA_END = .;
        ST03B_ST03_MAP_1_DATA_SIZE = ABSOLUTE(ST03B_ST03_MAP_1_DATA_END - ST03B_ST03_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST03B_ST03_MAP_1_ROM_END = __romPos;
    ST03B_ST03_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
