SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10B_ST10_MAP_1_header_ROM_START = __romPos;
    ST10B_ST10_MAP_1_header_VRAM = ADDR(.ST10B_ST10_MAP_1_header);
    .ST10B_ST10_MAP_1_header : AT(ST10B_ST10_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST10B_ST10_MAP_1_header_DATA_START = .;
        ST10B_ST10_MAP_1_header_s = .;
        build/asm/ST10B/ovl1__MAP_DATA_ST10_MAP.IDX/ST10B_ST10_MAP_1_header.s.o(.data);
        ST10B_ST10_MAP_1_header_DATA_END = .;
        ST10B_ST10_MAP_1_header_DATA_SIZE = ABSOLUTE(ST10B_ST10_MAP_1_header_DATA_END - ST10B_ST10_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_MAP_1_header);
    ST10B_ST10_MAP_1_header_ROM_END = __romPos;
    ST10B_ST10_MAP_1_header_VRAM_END = .;

    ST10B_ST10_MAP_1_ROM_START = __romPos;
    ST10B_ST10_MAP_1_VRAM = ADDR(.ST10B_ST10_MAP_1);
    .ST10B_ST10_MAP_1 0x8015C000 : AT(ST10B_ST10_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST10B_ST10_MAP_1_DATA_START = .;
        ST10_MAP_1_data__s = .;
        build/asm/ST10B/ovl1__MAP_DATA_ST10_MAP.IDX/data/ST10_MAP_1.data.s.o(.data);
        ST10B_ST10_MAP_1_DATA_END = .;
        ST10B_ST10_MAP_1_DATA_SIZE = ABSOLUTE(ST10B_ST10_MAP_1_DATA_END - ST10B_ST10_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST10B_ST10_MAP_1_ROM_END = __romPos;
    ST10B_ST10_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
