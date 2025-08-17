SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_ST0A_MAP_2_header_ROM_START = __romPos;
    ST0A_ST0A_MAP_2_header_VRAM = ADDR(.ST0A_ST0A_MAP_2_header);
    .ST0A_ST0A_MAP_2_header : AT(ST0A_ST0A_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST0A_ST0A_MAP_2_header_DATA_START = .;
        ST0A_ST0A_MAP_2_header_s = .;
        build/asm/ST0A/ovl2__MAP_DATA_ST0A_MAP.MDT/ST0A_ST0A_MAP_2_header.s.o(.data);
        ST0A_ST0A_MAP_2_header_DATA_END = .;
        ST0A_ST0A_MAP_2_header_DATA_SIZE = ABSOLUTE(ST0A_ST0A_MAP_2_header_DATA_END - ST0A_ST0A_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_MAP_2_header);
    ST0A_ST0A_MAP_2_header_ROM_END = __romPos;
    ST0A_ST0A_MAP_2_header_VRAM_END = .;

    ST0A_ST0A_MAP_2_ROM_START = __romPos;
    ST0A_ST0A_MAP_2_VRAM = ADDR(.ST0A_ST0A_MAP_2);
    .ST0A_ST0A_MAP_2 0x80164000 : AT(ST0A_ST0A_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST0A_ST0A_MAP_2_DATA_START = .;
        ST0A_MAP_2_data__s = .;
        build/asm/ST0A/ovl2__MAP_DATA_ST0A_MAP.MDT/data/ST0A_MAP_2.data.s.o(.data);
        ST0A_ST0A_MAP_2_DATA_END = .;
        ST0A_ST0A_MAP_2_DATA_SIZE = ABSOLUTE(ST0A_ST0A_MAP_2_DATA_END - ST0A_ST0A_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST0A_ST0A_MAP_2_ROM_END = __romPos;
    ST0A_ST0A_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
