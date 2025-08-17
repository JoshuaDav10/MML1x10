SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_ST14_MAP_2_header_ROM_START = __romPos;
    ST14_ST14_MAP_2_header_VRAM = ADDR(.ST14_ST14_MAP_2_header);
    .ST14_ST14_MAP_2_header : AT(ST14_ST14_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST14_ST14_MAP_2_header_DATA_START = .;
        ST14_ST14_MAP_2_header_s = .;
        build/asm/ST14/ovl2__MAP_DATA_ST14_MAP.MDT/ST14_ST14_MAP_2_header.s.o(.data);
        ST14_ST14_MAP_2_header_DATA_END = .;
        ST14_ST14_MAP_2_header_DATA_SIZE = ABSOLUTE(ST14_ST14_MAP_2_header_DATA_END - ST14_ST14_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_MAP_2_header);
    ST14_ST14_MAP_2_header_ROM_END = __romPos;
    ST14_ST14_MAP_2_header_VRAM_END = .;

    ST14_ST14_MAP_2_ROM_START = __romPos;
    ST14_ST14_MAP_2_VRAM = ADDR(.ST14_ST14_MAP_2);
    .ST14_ST14_MAP_2 0x80164000 : AT(ST14_ST14_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST14_ST14_MAP_2_DATA_START = .;
        ST14_MAP_2_data__s = .;
        build/asm/ST14/ovl2__MAP_DATA_ST14_MAP.MDT/data/ST14_MAP_2.data.s.o(.data);
        ST14_ST14_MAP_2_DATA_END = .;
        ST14_ST14_MAP_2_DATA_SIZE = ABSOLUTE(ST14_ST14_MAP_2_DATA_END - ST14_ST14_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST14_ST14_MAP_2_ROM_END = __romPos;
    ST14_ST14_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
