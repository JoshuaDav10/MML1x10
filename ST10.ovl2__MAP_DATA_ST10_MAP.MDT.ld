SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_ST10_MAP_2_header_ROM_START = __romPos;
    ST10_ST10_MAP_2_header_VRAM = ADDR(.ST10_ST10_MAP_2_header);
    .ST10_ST10_MAP_2_header : AT(ST10_ST10_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST10_ST10_MAP_2_header_DATA_START = .;
        ST10_ST10_MAP_2_header_s = .;
        build/asm/ST10/ovl2__MAP_DATA_ST10_MAP.MDT/ST10_ST10_MAP_2_header.s.o(.data);
        ST10_ST10_MAP_2_header_DATA_END = .;
        ST10_ST10_MAP_2_header_DATA_SIZE = ABSOLUTE(ST10_ST10_MAP_2_header_DATA_END - ST10_ST10_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_ST10_MAP_2_header);
    ST10_ST10_MAP_2_header_ROM_END = __romPos;
    ST10_ST10_MAP_2_header_VRAM_END = .;

    ST10_ST10_MAP_2_ROM_START = __romPos;
    ST10_ST10_MAP_2_VRAM = ADDR(.ST10_ST10_MAP_2);
    .ST10_ST10_MAP_2 0x80164000 : AT(ST10_ST10_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST10_ST10_MAP_2_DATA_START = .;
        ST10_MAP_2_data__s = .;
        build/asm/ST10/ovl2__MAP_DATA_ST10_MAP.MDT/data/ST10_MAP_2.data.s.o(.data);
        ST10_ST10_MAP_2_DATA_END = .;
        ST10_ST10_MAP_2_DATA_SIZE = ABSOLUTE(ST10_ST10_MAP_2_DATA_END - ST10_ST10_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST10_ST10_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST10_ST10_MAP_2_ROM_END = __romPos;
    ST10_ST10_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
