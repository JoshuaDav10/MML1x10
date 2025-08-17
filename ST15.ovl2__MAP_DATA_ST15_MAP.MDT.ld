SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_ST15_MAP_2_header_ROM_START = __romPos;
    ST15_ST15_MAP_2_header_VRAM = ADDR(.ST15_ST15_MAP_2_header);
    .ST15_ST15_MAP_2_header : AT(ST15_ST15_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST15_ST15_MAP_2_header_DATA_START = .;
        ST15_ST15_MAP_2_header_s = .;
        build/asm/ST15/ovl2__MAP_DATA_ST15_MAP.MDT/ST15_ST15_MAP_2_header.s.o(.data);
        ST15_ST15_MAP_2_header_DATA_END = .;
        ST15_ST15_MAP_2_header_DATA_SIZE = ABSOLUTE(ST15_ST15_MAP_2_header_DATA_END - ST15_ST15_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_MAP_2_header);
    ST15_ST15_MAP_2_header_ROM_END = __romPos;
    ST15_ST15_MAP_2_header_VRAM_END = .;

    ST15_ST15_MAP_2_ROM_START = __romPos;
    ST15_ST15_MAP_2_VRAM = ADDR(.ST15_ST15_MAP_2);
    .ST15_ST15_MAP_2 0x80164000 : AT(ST15_ST15_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST15_ST15_MAP_2_DATA_START = .;
        ST15_MAP_2_data__s = .;
        build/asm/ST15/ovl2__MAP_DATA_ST15_MAP.MDT/data/ST15_MAP_2.data.s.o(.data);
        ST15_ST15_MAP_2_DATA_END = .;
        ST15_ST15_MAP_2_DATA_SIZE = ABSOLUTE(ST15_ST15_MAP_2_DATA_END - ST15_ST15_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST15_ST15_MAP_2_ROM_END = __romPos;
    ST15_ST15_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
