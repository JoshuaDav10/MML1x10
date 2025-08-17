SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1E_ST1e_3_header_ROM_START = __romPos;
    ST1E_ST1e_3_header_VRAM = ADDR(.ST1E_ST1e_3_header);
    .ST1E_ST1e_3_header : AT(ST1E_ST1e_3_header_ROM_START) SUBALIGN(16)
    {
        ST1E_ST1e_3_header_DATA_START = .;
        ST1E_ST1e_3_header_s = .;
        build/asm/ST1E/ovl3__SCR_DATA_ST1e.STG/ST1E_ST1e_3_header.s.o(.data);
        ST1E_ST1e_3_header_DATA_END = .;
        ST1E_ST1e_3_header_DATA_SIZE = ABSOLUTE(ST1E_ST1e_3_header_DATA_END - ST1E_ST1e_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_3_header);
    ST1E_ST1e_3_header_ROM_END = __romPos;
    ST1E_ST1e_3_header_VRAM_END = .;

    ST1E_ST1e_3_ROM_START = __romPos;
    ST1E_ST1e_3_VRAM = ADDR(.ST1E_ST1e_3);
    .ST1E_ST1e_3 0x80194000 : AT(ST1E_ST1e_3_ROM_START) SUBALIGN(4)
    {
        ST1E_ST1e_3_DATA_START = .;
        ST1e_3_data__s = .;
        build/asm/ST1E/ovl3__SCR_DATA_ST1e.STG/data/ST1e_3.data.s.o(.data);
        ST1E_ST1e_3_DATA_END = .;
        ST1E_ST1e_3_DATA_SIZE = ABSOLUTE(ST1E_ST1e_3_DATA_END - ST1E_ST1e_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_3);
    __romPos = ALIGN(__romPos, 16);
    ST1E_ST1e_3_ROM_END = __romPos;
    ST1E_ST1e_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
