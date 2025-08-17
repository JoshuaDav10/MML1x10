SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_ST0D_MAP_2_header_ROM_START = __romPos;
    ST0D_ST0D_MAP_2_header_VRAM = ADDR(.ST0D_ST0D_MAP_2_header);
    .ST0D_ST0D_MAP_2_header : AT(ST0D_ST0D_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST0D_ST0D_MAP_2_header_DATA_START = .;
        ST0D_ST0D_MAP_2_header_s = .;
        build/asm/ST0D/ovl2__MAP_DATA_ST0D_MAP.MDT/ST0D_ST0D_MAP_2_header.s.o(.data);
        ST0D_ST0D_MAP_2_header_DATA_END = .;
        ST0D_ST0D_MAP_2_header_DATA_SIZE = ABSOLUTE(ST0D_ST0D_MAP_2_header_DATA_END - ST0D_ST0D_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_ST0D_MAP_2_header);
    ST0D_ST0D_MAP_2_header_ROM_END = __romPos;
    ST0D_ST0D_MAP_2_header_VRAM_END = .;

    ST0D_ST0D_MAP_2_ROM_START = __romPos;
    ST0D_ST0D_MAP_2_VRAM = ADDR(.ST0D_ST0D_MAP_2);
    .ST0D_ST0D_MAP_2 0x80164000 : AT(ST0D_ST0D_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST0D_ST0D_MAP_2_DATA_START = .;
        ST0D_MAP_2_data__s = .;
        build/asm/ST0D/ovl2__MAP_DATA_ST0D_MAP.MDT/data/ST0D_MAP_2.data.s.o(.data);
        ST0D_ST0D_MAP_2_DATA_END = .;
        ST0D_ST0D_MAP_2_DATA_SIZE = ABSOLUTE(ST0D_ST0D_MAP_2_DATA_END - ST0D_ST0D_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_ST0D_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST0D_ST0D_MAP_2_ROM_END = __romPos;
    ST0D_ST0D_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
