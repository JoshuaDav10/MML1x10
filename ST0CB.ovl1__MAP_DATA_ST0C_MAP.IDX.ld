SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0CB_ST0C_MAP_1_header_ROM_START = __romPos;
    ST0CB_ST0C_MAP_1_header_VRAM = ADDR(.ST0CB_ST0C_MAP_1_header);
    .ST0CB_ST0C_MAP_1_header : AT(ST0CB_ST0C_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST0CB_ST0C_MAP_1_header_DATA_START = .;
        ST0CB_ST0C_MAP_1_header_s = .;
        build/asm/ST0CB/ovl1__MAP_DATA_ST0C_MAP.IDX/ST0CB_ST0C_MAP_1_header.s.o(.data);
        ST0CB_ST0C_MAP_1_header_DATA_END = .;
        ST0CB_ST0C_MAP_1_header_DATA_SIZE = ABSOLUTE(ST0CB_ST0C_MAP_1_header_DATA_END - ST0CB_ST0C_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0CB_ST0C_MAP_1_header);
    ST0CB_ST0C_MAP_1_header_ROM_END = __romPos;
    ST0CB_ST0C_MAP_1_header_VRAM_END = .;

    ST0CB_ST0C_MAP_1_ROM_START = __romPos;
    ST0CB_ST0C_MAP_1_VRAM = ADDR(.ST0CB_ST0C_MAP_1);
    .ST0CB_ST0C_MAP_1 0x8015C000 : AT(ST0CB_ST0C_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST0CB_ST0C_MAP_1_DATA_START = .;
        ST0C_MAP_1_data__s = .;
        build/asm/ST0CB/ovl1__MAP_DATA_ST0C_MAP.IDX/data/ST0C_MAP_1.data.s.o(.data);
        ST0CB_ST0C_MAP_1_DATA_END = .;
        ST0CB_ST0C_MAP_1_DATA_SIZE = ABSOLUTE(ST0CB_ST0C_MAP_1_DATA_END - ST0CB_ST0C_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST0CB_ST0C_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST0CB_ST0C_MAP_1_ROM_END = __romPos;
    ST0CB_ST0C_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
