SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_ST12_MAP_1_header_ROM_START = __romPos;
    ST12_ST12_MAP_1_header_VRAM = ADDR(.ST12_ST12_MAP_1_header);
    .ST12_ST12_MAP_1_header : AT(ST12_ST12_MAP_1_header_ROM_START) SUBALIGN(16)
    {
        ST12_ST12_MAP_1_header_DATA_START = .;
        ST12_ST12_MAP_1_header_s = .;
        build/asm/ST12/ovl1__MAP_DATA_ST12_MAP.IDX/ST12_ST12_MAP_1_header.s.o(.data);
        ST12_ST12_MAP_1_header_DATA_END = .;
        ST12_ST12_MAP_1_header_DATA_SIZE = ABSOLUTE(ST12_ST12_MAP_1_header_DATA_END - ST12_ST12_MAP_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_MAP_1_header);
    ST12_ST12_MAP_1_header_ROM_END = __romPos;
    ST12_ST12_MAP_1_header_VRAM_END = .;

    ST12_ST12_MAP_1_ROM_START = __romPos;
    ST12_ST12_MAP_1_VRAM = ADDR(.ST12_ST12_MAP_1);
    .ST12_ST12_MAP_1 0x8015C000 : AT(ST12_ST12_MAP_1_ROM_START) SUBALIGN(4)
    {
        ST12_ST12_MAP_1_DATA_START = .;
        ST12_MAP_1_data__s = .;
        build/asm/ST12/ovl1__MAP_DATA_ST12_MAP.IDX/data/ST12_MAP_1.data.s.o(.data);
        ST12_ST12_MAP_1_DATA_END = .;
        ST12_ST12_MAP_1_DATA_SIZE = ABSOLUTE(ST12_ST12_MAP_1_DATA_END - ST12_ST12_MAP_1_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_MAP_1);
    __romPos = ALIGN(__romPos, 16);
    ST12_ST12_MAP_1_ROM_END = __romPos;
    ST12_ST12_MAP_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
