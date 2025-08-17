SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_ST11_MAP_2_header_ROM_START = __romPos;
    ST11_ST11_MAP_2_header_VRAM = ADDR(.ST11_ST11_MAP_2_header);
    .ST11_ST11_MAP_2_header : AT(ST11_ST11_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST11_ST11_MAP_2_header_DATA_START = .;
        ST11_ST11_MAP_2_header_s = .;
        build/asm/ST11/ovl2__MAP_DATA_ST11_MAP.MDT/ST11_ST11_MAP_2_header.s.o(.data);
        ST11_ST11_MAP_2_header_DATA_END = .;
        ST11_ST11_MAP_2_header_DATA_SIZE = ABSOLUTE(ST11_ST11_MAP_2_header_DATA_END - ST11_ST11_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_ST11_MAP_2_header);
    ST11_ST11_MAP_2_header_ROM_END = __romPos;
    ST11_ST11_MAP_2_header_VRAM_END = .;

    ST11_ST11_MAP_2_ROM_START = __romPos;
    ST11_ST11_MAP_2_VRAM = ADDR(.ST11_ST11_MAP_2);
    .ST11_ST11_MAP_2 0x80164000 : AT(ST11_ST11_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST11_ST11_MAP_2_DATA_START = .;
        ST11_MAP_2_data__s = .;
        build/asm/ST11/ovl2__MAP_DATA_ST11_MAP.MDT/data/ST11_MAP_2.data.s.o(.data);
        ST11_ST11_MAP_2_DATA_END = .;
        ST11_ST11_MAP_2_DATA_SIZE = ABSOLUTE(ST11_ST11_MAP_2_DATA_END - ST11_ST11_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST11_ST11_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST11_ST11_MAP_2_ROM_END = __romPos;
    ST11_ST11_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
