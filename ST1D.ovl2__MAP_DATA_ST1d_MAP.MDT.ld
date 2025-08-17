SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1D_ST1d_MAP_2_header_ROM_START = __romPos;
    ST1D_ST1d_MAP_2_header_VRAM = ADDR(.ST1D_ST1d_MAP_2_header);
    .ST1D_ST1d_MAP_2_header : AT(ST1D_ST1d_MAP_2_header_ROM_START) SUBALIGN(16)
    {
        ST1D_ST1d_MAP_2_header_DATA_START = .;
        ST1D_ST1d_MAP_2_header_s = .;
        build/asm/ST1D/ovl2__MAP_DATA_ST1d_MAP.MDT/ST1D_ST1d_MAP_2_header.s.o(.data);
        ST1D_ST1d_MAP_2_header_DATA_END = .;
        ST1D_ST1d_MAP_2_header_DATA_SIZE = ABSOLUTE(ST1D_ST1d_MAP_2_header_DATA_END - ST1D_ST1d_MAP_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1d_MAP_2_header);
    ST1D_ST1d_MAP_2_header_ROM_END = __romPos;
    ST1D_ST1d_MAP_2_header_VRAM_END = .;

    ST1D_ST1d_MAP_2_ROM_START = __romPos;
    ST1D_ST1d_MAP_2_VRAM = ADDR(.ST1D_ST1d_MAP_2);
    .ST1D_ST1d_MAP_2 0x80164000 : AT(ST1D_ST1d_MAP_2_ROM_START) SUBALIGN(4)
    {
        ST1D_ST1d_MAP_2_DATA_START = .;
        ST1d_MAP_2_data__s = .;
        build/asm/ST1D/ovl2__MAP_DATA_ST1d_MAP.MDT/data/ST1d_MAP_2.data.s.o(.data);
        ST1D_ST1d_MAP_2_DATA_END = .;
        ST1D_ST1d_MAP_2_DATA_SIZE = ABSOLUTE(ST1D_ST1d_MAP_2_DATA_END - ST1D_ST1d_MAP_2_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1d_MAP_2);
    __romPos = ALIGN(__romPos, 16);
    ST1D_ST1d_MAP_2_ROM_END = __romPos;
    ST1D_ST1d_MAP_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
