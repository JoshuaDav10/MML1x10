SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_ST18_MAP_2_header_ROM_START = __romPos;
    ST18_ST18_MAP_2_header_VRAM = ADDR(.ST18_ST18_MAP_2_header);
    .ST18_ST18_MAP_2_header : AT(ST18_ST18_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST18_ST18_MAP_2_header_DATA_START = .;
        ST18_ST18_MAP_2_header_s = .;
        build/asm/ST18/ovl2__MAP_DATA_ST18_MAP.MDT/ST18_ST18_MAP_2_header.s.o(.data);
        ST18_ST18_MAP_2_header_DATA_END = .;
        ST18_ST18_MAP_2_header_DATA_SIZE = ABSOLUTE(ST18_ST18_MAP_2_header_DATA_END - ST18_ST18_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_MAP_2_header);
    ST18_ST18_MAP_2_header_ROM_END = __romPos;
    ST18_ST18_MAP_2_header_VRAM_END = .;

    ST18_ST18_MAP_2_ROM_START = __romPos;
    ST18_ST18_MAP_2_VRAM = ADDR(.ST18_ST18_MAP_2);
    .ST18_ST18_MAP_2 0x80164000 : AT(ST18_ST18_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST18_ST18_MAP_2_DATA_START = .;
        ST18_MAP_2_data__s = .;
        build/asm/ST18/ovl2__MAP_DATA_ST18_MAP.MDT/data/ST18_MAP_2.data.s.o(.data);
        ST18_ST18_MAP_2_DATA_END = .;
        ST18_ST18_MAP_2_DATA_SIZE = ABSOLUTE(ST18_ST18_MAP_2_DATA_END - ST18_ST18_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST18_ST18_MAP_2_ROM_END = __romPos;
    ST18_ST18_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
