SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04B_ST04_MAP_2_header_ROM_START = __romPos;
    ST04B_ST04_MAP_2_header_VRAM = ADDR(.ST04B_ST04_MAP_2_header);
    .ST04B_ST04_MAP_2_header : AT(ST04B_ST04_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST04B_ST04_MAP_2_header_DATA_START = .;
        ST04B_ST04_MAP_2_header_s = .;
        build/asm/ST04B/ovl2__MAP_DATA_ST04_MAP.MDT/ST04B_ST04_MAP_2_header.s.o(.data);
        ST04B_ST04_MAP_2_header_DATA_END = .;
        ST04B_ST04_MAP_2_header_DATA_SIZE = ABSOLUTE(ST04B_ST04_MAP_2_header_DATA_END - ST04B_ST04_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_MAP_2_header);
    ST04B_ST04_MAP_2_header_ROM_END = __romPos;
    ST04B_ST04_MAP_2_header_VRAM_END = .;

    ST04B_ST04_MAP_2_ROM_START = __romPos;
    ST04B_ST04_MAP_2_VRAM = ADDR(.ST04B_ST04_MAP_2);
    .ST04B_ST04_MAP_2 0x80164000 : AT(ST04B_ST04_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST04B_ST04_MAP_2_DATA_START = .;
        ST04_MAP_2_data__s = .;
        build/asm/ST04B/ovl2__MAP_DATA_ST04_MAP.MDT/data/ST04_MAP_2.data.s.o(.data);
        ST04B_ST04_MAP_2_DATA_END = .;
        ST04B_ST04_MAP_2_DATA_SIZE = ABSOLUTE(ST04B_ST04_MAP_2_DATA_END - ST04B_ST04_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST04B_ST04_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST04B_ST04_MAP_2_ROM_END = __romPos;
    ST04B_ST04_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
