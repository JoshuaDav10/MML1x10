SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_ST09_MAP_2_header_ROM_START = __romPos;
    ST09_ST09_MAP_2_header_VRAM = ADDR(.ST09_ST09_MAP_2_header);
    .ST09_ST09_MAP_2_header : AT(ST09_ST09_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST09_ST09_MAP_2_header_DATA_START = .;
        ST09_ST09_MAP_2_header_s = .;
        build/asm/ST09/ovl2__MAP_DATA_ST09_MAP.MDT/ST09_ST09_MAP_2_header.s.o(.data);
        ST09_ST09_MAP_2_header_DATA_END = .;
        ST09_ST09_MAP_2_header_DATA_SIZE = ABSOLUTE(ST09_ST09_MAP_2_header_DATA_END - ST09_ST09_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_MAP_2_header);
    ST09_ST09_MAP_2_header_ROM_END = __romPos;
    ST09_ST09_MAP_2_header_VRAM_END = .;

    ST09_ST09_MAP_2_ROM_START = __romPos;
    ST09_ST09_MAP_2_VRAM = ADDR(.ST09_ST09_MAP_2);
    .ST09_ST09_MAP_2 0x80164000 : AT(ST09_ST09_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST09_ST09_MAP_2_DATA_START = .;
        ST09_MAP_2_data__s = .;
        build/asm/ST09/ovl2__MAP_DATA_ST09_MAP.MDT/data/ST09_MAP_2.data.s.o(.data);
        ST09_ST09_MAP_2_DATA_END = .;
        ST09_ST09_MAP_2_DATA_SIZE = ABSOLUTE(ST09_ST09_MAP_2_DATA_END - ST09_ST09_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST09_ST09_MAP_2_ROM_END = __romPos;
    ST09_ST09_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
