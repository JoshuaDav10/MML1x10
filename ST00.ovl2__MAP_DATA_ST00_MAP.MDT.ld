SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_ST00_MAP_2_header_ROM_START = __romPos;
    ST00_ST00_MAP_2_header_VRAM = ADDR(.ST00_ST00_MAP_2_header);
    .ST00_ST00_MAP_2_header : AT(ST00_ST00_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST00_ST00_MAP_2_header_DATA_START = .;
        ST00_ST00_MAP_2_header_s = .;
        build/asm/ST00/ovl2__MAP_DATA_ST00_MAP.MDT/ST00_ST00_MAP_2_header.s.o(.data);
        ST00_ST00_MAP_2_header_DATA_END = .;
        ST00_ST00_MAP_2_header_DATA_SIZE = ABSOLUTE(ST00_ST00_MAP_2_header_DATA_END - ST00_ST00_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_MAP_2_header);
    ST00_ST00_MAP_2_header_ROM_END = __romPos;
    ST00_ST00_MAP_2_header_VRAM_END = .;

    ST00_ST00_MAP_2_ROM_START = __romPos;
    ST00_ST00_MAP_2_VRAM = ADDR(.ST00_ST00_MAP_2);
    .ST00_ST00_MAP_2 0x80164000 : AT(ST00_ST00_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST00_ST00_MAP_2_DATA_START = .;
        ST00_MAP_2_data__s = .;
        build/asm/ST00/ovl2__MAP_DATA_ST00_MAP.MDT/data/ST00_MAP_2.data.s.o(.data);
        ST00_ST00_MAP_2_DATA_END = .;
        ST00_ST00_MAP_2_DATA_SIZE = ABSOLUTE(ST00_ST00_MAP_2_DATA_END - ST00_ST00_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST00_ST00_MAP_2_ROM_END = __romPos;
    ST00_ST00_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
