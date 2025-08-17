SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11B_ST11_MAP_2_header_ROM_START = __romPos;
    ST11B_ST11_MAP_2_header_VRAM = ADDR(.ST11B_ST11_MAP_2_header);
    .ST11B_ST11_MAP_2_header : AT(ST11B_ST11_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST11B_ST11_MAP_2_header_DATA_START = .;
        ST11B_ST11_MAP_2_header_s = .;
        build/asm/ST11B/ovl2__MAP_DATA_ST11_MAP.MDT/ST11B_ST11_MAP_2_header.s.o(.data);
        ST11B_ST11_MAP_2_header_DATA_END = .;
        ST11B_ST11_MAP_2_header_DATA_SIZE = ABSOLUTE(ST11B_ST11_MAP_2_header_DATA_END - ST11B_ST11_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_MAP_2_header);
    ST11B_ST11_MAP_2_header_ROM_END = __romPos;
    ST11B_ST11_MAP_2_header_VRAM_END = .;

    ST11B_ST11_MAP_2_ROM_START = __romPos;
    ST11B_ST11_MAP_2_VRAM = ADDR(.ST11B_ST11_MAP_2);
    .ST11B_ST11_MAP_2 0x80164000 : AT(ST11B_ST11_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST11B_ST11_MAP_2_DATA_START = .;
        ST11_MAP_2_data__s = .;
        build/asm/ST11B/ovl2__MAP_DATA_ST11_MAP.MDT/data/ST11_MAP_2.data.s.o(.data);
        ST11B_ST11_MAP_2_DATA_END = .;
        ST11B_ST11_MAP_2_DATA_SIZE = ABSOLUTE(ST11B_ST11_MAP_2_DATA_END - ST11B_ST11_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST11B_ST11_MAP_2_ROM_END = __romPos;
    ST11B_ST11_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
