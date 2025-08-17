SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_ST13_MAP_5_header_ROM_START = __romPos;
    ST13_ST13_MAP_5_header_VRAM = ADDR(.ST13_ST13_MAP_5_header);
    .ST13_ST13_MAP_5_header : AT(ST13_ST13_MAP_5_header_ROM_START) SUBALIGN(16)
    {
        ST13_ST13_MAP_5_header_DATA_START = .;
        ST13_ST13_MAP_5_header_s = .;
        build/asm/ST13/ovl5__MAP_DATA_ST13_MAP.MDT/ST13_ST13_MAP_5_header.s.o(.data);
        ST13_ST13_MAP_5_header_DATA_END = .;
        ST13_ST13_MAP_5_header_DATA_SIZE = ABSOLUTE(ST13_ST13_MAP_5_header_DATA_END - ST13_ST13_MAP_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_MAP_5_header);
    ST13_ST13_MAP_5_header_ROM_END = __romPos;
    ST13_ST13_MAP_5_header_VRAM_END = .;

    ST13_ST13_MAP_5_ROM_START = __romPos;
    ST13_ST13_MAP_5_VRAM = ADDR(.ST13_ST13_MAP_5);
    .ST13_ST13_MAP_5 0x80164000 : AT(ST13_ST13_MAP_5_ROM_START) SUBALIGN(4)
    {
        ST13_ST13_MAP_5_DATA_START = .;
        ST13_MAP_5_data__s = .;
        build/asm/ST13/ovl5__MAP_DATA_ST13_MAP.MDT/data/ST13_MAP_5.data.s.o(.data);
        ST13_ST13_MAP_5_DATA_END = .;
        ST13_ST13_MAP_5_DATA_SIZE = ABSOLUTE(ST13_ST13_MAP_5_DATA_END - ST13_ST13_MAP_5_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_MAP_5);
    __romPos = ALIGN(__romPos, 16);
    ST13_ST13_MAP_5_ROM_END = __romPos;
    ST13_ST13_MAP_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
