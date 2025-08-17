SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1E_ST1e_MAP_2_header_ROM_START = __romPos;
    ST1E_ST1e_MAP_2_header_VRAM = ADDR(.ST1E_ST1e_MAP_2_header);
    .ST1E_ST1e_MAP_2_header : AT(ST1E_ST1e_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST1E_ST1e_MAP_2_header_DATA_START = .;
        ST1E_ST1e_MAP_2_header_s = .;
        build/asm/ST1E/ovl2__MAP_DATA_ST1e_MAP.MDT/ST1E_ST1e_MAP_2_header.s.o(.data);
        ST1E_ST1e_MAP_2_header_DATA_END = .;
        ST1E_ST1e_MAP_2_header_DATA_SIZE = ABSOLUTE(ST1E_ST1e_MAP_2_header_DATA_END - ST1E_ST1e_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_MAP_2_header);
    ST1E_ST1e_MAP_2_header_ROM_END = __romPos;
    ST1E_ST1e_MAP_2_header_VRAM_END = .;

    ST1E_ST1e_MAP_2_ROM_START = __romPos;
    ST1E_ST1e_MAP_2_VRAM = ADDR(.ST1E_ST1e_MAP_2);
    .ST1E_ST1e_MAP_2 0x80164000 : AT(ST1E_ST1e_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST1E_ST1e_MAP_2_DATA_START = .;
        ST1e_MAP_2_data__s = .;
        build/asm/ST1E/ovl2__MAP_DATA_ST1e_MAP.MDT/data/ST1e_MAP_2.data.s.o(.data);
        ST1E_ST1e_MAP_2_DATA_END = .;
        ST1E_ST1e_MAP_2_DATA_SIZE = ABSOLUTE(ST1E_ST1e_MAP_2_DATA_END - ST1E_ST1e_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST1E_ST1e_MAP_2_ROM_END = __romPos;
    ST1E_ST1e_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
