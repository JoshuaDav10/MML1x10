SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_ST02_MAP_2_header_ROM_START = __romPos;
    ST02_ST02_MAP_2_header_VRAM = ADDR(.ST02_ST02_MAP_2_header);
    .ST02_ST02_MAP_2_header : AT(ST02_ST02_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST02_ST02_MAP_2_header_DATA_START = .;
        ST02_ST02_MAP_2_header_s = .;
        build/asm/ST02/ovl2__MAP_DATA_ST02_MAP.MDT/ST02_ST02_MAP_2_header.s.o(.data);
        ST02_ST02_MAP_2_header_DATA_END = .;
        ST02_ST02_MAP_2_header_DATA_SIZE = ABSOLUTE(ST02_ST02_MAP_2_header_DATA_END - ST02_ST02_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_MAP_2_header);
    ST02_ST02_MAP_2_header_ROM_END = __romPos;
    ST02_ST02_MAP_2_header_VRAM_END = .;

    ST02_ST02_MAP_2_ROM_START = __romPos;
    ST02_ST02_MAP_2_VRAM = ADDR(.ST02_ST02_MAP_2);
    .ST02_ST02_MAP_2 0x80164000 : AT(ST02_ST02_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST02_ST02_MAP_2_DATA_START = .;
        ST02_MAP_2_data__s = .;
        build/asm/ST02/ovl2__MAP_DATA_ST02_MAP.MDT/data/ST02_MAP_2.data.s.o(.data);
        ST02_ST02_MAP_2_DATA_END = .;
        ST02_ST02_MAP_2_DATA_SIZE = ABSOLUTE(ST02_ST02_MAP_2_DATA_END - ST02_ST02_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST02_ST02_MAP_2_ROM_END = __romPos;
    ST02_ST02_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
