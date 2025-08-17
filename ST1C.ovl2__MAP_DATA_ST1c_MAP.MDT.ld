SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1C_ST1c_MAP_2_header_ROM_START = __romPos;
    ST1C_ST1c_MAP_2_header_VRAM = ADDR(.ST1C_ST1c_MAP_2_header);
    .ST1C_ST1c_MAP_2_header : AT(ST1C_ST1c_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST1C_ST1c_MAP_2_header_DATA_START = .;
        ST1C_ST1c_MAP_2_header_s = .;
        build/asm/ST1C/ovl2__MAP_DATA_ST1c_MAP.MDT/ST1C_ST1c_MAP_2_header.s.o(.data);
        ST1C_ST1c_MAP_2_header_DATA_END = .;
        ST1C_ST1c_MAP_2_header_DATA_SIZE = ABSOLUTE(ST1C_ST1c_MAP_2_header_DATA_END - ST1C_ST1c_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1c_MAP_2_header);
    ST1C_ST1c_MAP_2_header_ROM_END = __romPos;
    ST1C_ST1c_MAP_2_header_VRAM_END = .;

    ST1C_ST1c_MAP_2_ROM_START = __romPos;
    ST1C_ST1c_MAP_2_VRAM = ADDR(.ST1C_ST1c_MAP_2);
    .ST1C_ST1c_MAP_2 0x80164000 : AT(ST1C_ST1c_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST1C_ST1c_MAP_2_DATA_START = .;
        ST1c_MAP_2_data__s = .;
        build/asm/ST1C/ovl2__MAP_DATA_ST1c_MAP.MDT/data/ST1c_MAP_2.data.s.o(.data);
        ST1C_ST1c_MAP_2_DATA_END = .;
        ST1C_ST1c_MAP_2_DATA_SIZE = ABSOLUTE(ST1C_ST1c_MAP_2_DATA_END - ST1C_ST1c_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1c_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST1C_ST1c_MAP_2_ROM_END = __romPos;
    ST1C_ST1c_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
