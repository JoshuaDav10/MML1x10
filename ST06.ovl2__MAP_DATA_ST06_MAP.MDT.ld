SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_ST06_MAP_2_header_ROM_START = __romPos;
    ST06_ST06_MAP_2_header_VRAM = ADDR(.ST06_ST06_MAP_2_header);
    .ST06_ST06_MAP_2_header : AT(ST06_ST06_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST06_ST06_MAP_2_header_DATA_START = .;
        ST06_ST06_MAP_2_header_s = .;
        build/asm/ST06/ovl2__MAP_DATA_ST06_MAP.MDT/ST06_ST06_MAP_2_header.s.o(.data);
        ST06_ST06_MAP_2_header_DATA_END = .;
        ST06_ST06_MAP_2_header_DATA_SIZE = ABSOLUTE(ST06_ST06_MAP_2_header_DATA_END - ST06_ST06_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_MAP_2_header);
    ST06_ST06_MAP_2_header_ROM_END = __romPos;
    ST06_ST06_MAP_2_header_VRAM_END = .;

    ST06_ST06_MAP_2_ROM_START = __romPos;
    ST06_ST06_MAP_2_VRAM = ADDR(.ST06_ST06_MAP_2);
    .ST06_ST06_MAP_2 0x80164000 : AT(ST06_ST06_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST06_ST06_MAP_2_DATA_START = .;
        ST06_MAP_2_data__s = .;
        build/asm/ST06/ovl2__MAP_DATA_ST06_MAP.MDT/data/ST06_MAP_2.data.s.o(.data);
        ST06_ST06_MAP_2_DATA_END = .;
        ST06_ST06_MAP_2_DATA_SIZE = ABSOLUTE(ST06_ST06_MAP_2_DATA_END - ST06_ST06_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST06_ST06_MAP_2_ROM_END = __romPos;
    ST06_ST06_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
