SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03B_ST03_MAP_2_header_ROM_START = __romPos;
    ST03B_ST03_MAP_2_header_VRAM = ADDR(.ST03B_ST03_MAP_2_header);
    .ST03B_ST03_MAP_2_header : AT(ST03B_ST03_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST03B_ST03_MAP_2_header_DATA_START = .;
        ST03B_ST03_MAP_2_header_s = .;
        build/asm/ST03B/ovl2__MAP_DATA_ST03_MAP.MDT/ST03B_ST03_MAP_2_header.s.o(.data);
        ST03B_ST03_MAP_2_header_DATA_END = .;
        ST03B_ST03_MAP_2_header_DATA_SIZE = ABSOLUTE(ST03B_ST03_MAP_2_header_DATA_END - ST03B_ST03_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_MAP_2_header);
    ST03B_ST03_MAP_2_header_ROM_END = __romPos;
    ST03B_ST03_MAP_2_header_VRAM_END = .;

    ST03B_ST03_MAP_2_ROM_START = __romPos;
    ST03B_ST03_MAP_2_VRAM = ADDR(.ST03B_ST03_MAP_2);
    .ST03B_ST03_MAP_2 0x80164000 : AT(ST03B_ST03_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST03B_ST03_MAP_2_DATA_START = .;
        ST03_MAP_2_data__s = .;
        build/asm/ST03B/ovl2__MAP_DATA_ST03_MAP.MDT/data/ST03_MAP_2.data.s.o(.data);
        ST03B_ST03_MAP_2_DATA_END = .;
        ST03B_ST03_MAP_2_DATA_SIZE = ABSOLUTE(ST03B_ST03_MAP_2_DATA_END - ST03B_ST03_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST03B_ST03_MAP_2_ROM_END = __romPos;
    ST03B_ST03_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
