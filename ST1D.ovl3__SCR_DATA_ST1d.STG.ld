SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1D_ST1d_3_header_ROM_START = __romPos;
    ST1D_ST1d_3_header_VRAM = ADDR(.ST1D_ST1d_3_header);
    .ST1D_ST1d_3_header : AT(ST1D_ST1d_3_header_ROM_START) SUBALIGN(16)
    {
        ST1D_ST1d_3_header_DATA_START = .;
        ST1D_ST1d_3_header_s = .;
        build/asm/ST1D/ovl3__SCR_DATA_ST1d.STG/ST1D_ST1d_3_header.s.o(.data);
        ST1D_ST1d_3_header_DATA_END = .;
        ST1D_ST1d_3_header_DATA_SIZE = ABSOLUTE(ST1D_ST1d_3_header_DATA_END - ST1D_ST1d_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1d_3_header);
    ST1D_ST1d_3_header_ROM_END = __romPos;
    ST1D_ST1d_3_header_VRAM_END = .;

    ST1D_ST1d_3_ROM_START = __romPos;
    ST1D_ST1d_3_VRAM = ADDR(.ST1D_ST1d_3);
    .ST1D_ST1d_3 0x80194000 : AT(ST1D_ST1d_3_ROM_START) SUBALIGN(4)
    {
        ST1D_ST1d_3_DATA_START = .;
        ST1d_3_data__s = .;
        build/asm/ST1D/ovl3__SCR_DATA_ST1d.STG/data/ST1d_3.data.s.o(.data);
        ST1D_ST1d_3_DATA_END = .;
        ST1D_ST1d_3_DATA_SIZE = ABSOLUTE(ST1D_ST1d_3_DATA_END - ST1D_ST1d_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1d_3);
    __romPos = ALIGN(__romPos, 16);
    ST1D_ST1d_3_ROM_END = __romPos;
    ST1D_ST1d_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
