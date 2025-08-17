SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_ST08_MAP_2_header_ROM_START = __romPos;
    ST08_ST08_MAP_2_header_VRAM = ADDR(.ST08_ST08_MAP_2_header);
    .ST08_ST08_MAP_2_header : AT(ST08_ST08_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST08_ST08_MAP_2_header_DATA_START = .;
        ST08_ST08_MAP_2_header_s = .;
        build/asm/ST08/ovl2__MAP_DATA_ST08_MAP.MDT/ST08_ST08_MAP_2_header.s.o(.data);
        ST08_ST08_MAP_2_header_DATA_END = .;
        ST08_ST08_MAP_2_header_DATA_SIZE = ABSOLUTE(ST08_ST08_MAP_2_header_DATA_END - ST08_ST08_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_MAP_2_header);
    ST08_ST08_MAP_2_header_ROM_END = __romPos;
    ST08_ST08_MAP_2_header_VRAM_END = .;

    ST08_ST08_MAP_2_ROM_START = __romPos;
    ST08_ST08_MAP_2_VRAM = ADDR(.ST08_ST08_MAP_2);
    .ST08_ST08_MAP_2 0x80164000 : AT(ST08_ST08_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST08_ST08_MAP_2_DATA_START = .;
        ST08_MAP_2_data__s = .;
        build/asm/ST08/ovl2__MAP_DATA_ST08_MAP.MDT/data/ST08_MAP_2.data.s.o(.data);
        ST08_ST08_MAP_2_DATA_END = .;
        ST08_ST08_MAP_2_DATA_SIZE = ABSOLUTE(ST08_ST08_MAP_2_DATA_END - ST08_ST08_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST08_ST08_MAP_2_ROM_END = __romPos;
    ST08_ST08_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
