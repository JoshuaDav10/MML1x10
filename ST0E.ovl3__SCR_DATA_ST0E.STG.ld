SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0E_ST0E_3_header_ROM_START = __romPos;
    ST0E_ST0E_3_header_VRAM = ADDR(.ST0E_ST0E_3_header);
    .ST0E_ST0E_3_header : AT(ST0E_ST0E_3_header_ROM_START) SUBALIGN(16)
    {
        ST0E_ST0E_3_header_DATA_START = .;
        ST0E_ST0E_3_header_s = .;
        build/asm/ST0E/ovl3__SCR_DATA_ST0E.STG/ST0E_ST0E_3_header.s.o(.data);
        ST0E_ST0E_3_header_DATA_END = .;
        ST0E_ST0E_3_header_DATA_SIZE = ABSOLUTE(ST0E_ST0E_3_header_DATA_END - ST0E_ST0E_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_3_header);
    ST0E_ST0E_3_header_ROM_END = __romPos;
    ST0E_ST0E_3_header_VRAM_END = .;

    ST0E_ST0E_3_ROM_START = __romPos;
    ST0E_ST0E_3_VRAM = ADDR(.ST0E_ST0E_3);
    .ST0E_ST0E_3 0x80194000 : AT(ST0E_ST0E_3_ROM_START) SUBALIGN(4)
    {
        ST0E_ST0E_3_DATA_START = .;
        ST0E_3_data__s = .;
        build/asm/ST0E/ovl3__SCR_DATA_ST0E.STG/data/ST0E_3.data.s.o(.data);
        ST0E_ST0E_3_DATA_END = .;
        ST0E_ST0E_3_DATA_SIZE = ABSOLUTE(ST0E_ST0E_3_DATA_END - ST0E_ST0E_3_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_3);
    __romPos = ALIGN(__romPos, 16);
    ST0E_ST0E_3_ROM_END = __romPos;
    ST0E_ST0E_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
