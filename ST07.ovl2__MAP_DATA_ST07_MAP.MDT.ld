SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_ST07_MAP_2_header_ROM_START = __romPos;
    ST07_ST07_MAP_2_header_VRAM = ADDR(.ST07_ST07_MAP_2_header);
    .ST07_ST07_MAP_2_header : AT(ST07_ST07_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST07_ST07_MAP_2_header_DATA_START = .;
        ST07_ST07_MAP_2_header_s = .;
        build/asm/ST07/ovl2__MAP_DATA_ST07_MAP.MDT/ST07_ST07_MAP_2_header.s.o(.data);
        ST07_ST07_MAP_2_header_DATA_END = .;
        ST07_ST07_MAP_2_header_DATA_SIZE = ABSOLUTE(ST07_ST07_MAP_2_header_DATA_END - ST07_ST07_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_MAP_2_header);
    ST07_ST07_MAP_2_header_ROM_END = __romPos;
    ST07_ST07_MAP_2_header_VRAM_END = .;

    ST07_ST07_MAP_2_ROM_START = __romPos;
    ST07_ST07_MAP_2_VRAM = ADDR(.ST07_ST07_MAP_2);
    .ST07_ST07_MAP_2 0x80164000 : AT(ST07_ST07_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST07_ST07_MAP_2_DATA_START = .;
        ST07_MAP_2_data__s = .;
        build/asm/ST07/ovl2__MAP_DATA_ST07_MAP.MDT/data/ST07_MAP_2.data.s.o(.data);
        ST07_ST07_MAP_2_DATA_END = .;
        ST07_ST07_MAP_2_DATA_SIZE = ABSOLUTE(ST07_ST07_MAP_2_DATA_END - ST07_ST07_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST07_ST07_MAP_2_ROM_END = __romPos;
    ST07_ST07_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
