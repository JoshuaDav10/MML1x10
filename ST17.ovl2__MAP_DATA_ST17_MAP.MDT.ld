SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_MAP_2_header_ROM_START = __romPos;
    ST17_ST17_MAP_2_header_VRAM = ADDR(.ST17_ST17_MAP_2_header);
    .ST17_ST17_MAP_2_header : AT(ST17_ST17_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_MAP_2_header_DATA_START = .;
        ST17_ST17_MAP_2_header_s = .;
        build/asm/ST17/ovl2__MAP_DATA_ST17_MAP.MDT/ST17_ST17_MAP_2_header.s.o(.data);
        ST17_ST17_MAP_2_header_DATA_END = .;
        ST17_ST17_MAP_2_header_DATA_SIZE = ABSOLUTE(ST17_ST17_MAP_2_header_DATA_END - ST17_ST17_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_MAP_2_header);
    ST17_ST17_MAP_2_header_ROM_END = __romPos;
    ST17_ST17_MAP_2_header_VRAM_END = .;

    ST17_ST17_MAP_2_ROM_START = __romPos;
    ST17_ST17_MAP_2_VRAM = ADDR(.ST17_ST17_MAP_2);
    .ST17_ST17_MAP_2 0x80164000 : AT(ST17_ST17_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_MAP_2_DATA_START = .;
        ST17_MAP_2_data__s = .;
        build/asm/ST17/ovl2__MAP_DATA_ST17_MAP.MDT/data/ST17_MAP_2.data.s.o(.data);
        ST17_ST17_MAP_2_DATA_END = .;
        ST17_ST17_MAP_2_DATA_SIZE = ABSOLUTE(ST17_ST17_MAP_2_DATA_END - ST17_ST17_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_MAP_2_ROM_END = __romPos;
    ST17_ST17_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
