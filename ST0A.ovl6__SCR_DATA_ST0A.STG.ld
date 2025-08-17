SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_ST0A_6_header_ROM_START = __romPos;
    ST0A_ST0A_6_header_VRAM = ADDR(.ST0A_ST0A_6_header);
    .ST0A_ST0A_6_header : AT(ST0A_ST0A_6_header_ROM_START) SUBALIGN(16)
    {
        ST0A_ST0A_6_header_DATA_START = .;
        ST0A_ST0A_6_header_s = .;
        build/asm/ST0A/ovl6__SCR_DATA_ST0A.STG/ST0A_ST0A_6_header.s.o(.data);
        ST0A_ST0A_6_header_DATA_END = .;
        ST0A_ST0A_6_header_DATA_SIZE = ABSOLUTE(ST0A_ST0A_6_header_DATA_END - ST0A_ST0A_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_6_header);
    ST0A_ST0A_6_header_ROM_END = __romPos;
    ST0A_ST0A_6_header_VRAM_END = .;

    ST0A_ST0A_6_ROM_START = __romPos;
    ST0A_ST0A_6_VRAM = ADDR(.ST0A_ST0A_6);
    .ST0A_ST0A_6 0x80194000 : AT(ST0A_ST0A_6_ROM_START) SUBALIGN(4)
    {
        ST0A_ST0A_6_DATA_START = .;
        ST0A_6_data__s = .;
        build/asm/ST0A/ovl6__SCR_DATA_ST0A.STG/data/ST0A_6.data.s.o(.data);
        ST0A_ST0A_6_DATA_END = .;
        ST0A_ST0A_6_DATA_SIZE = ABSOLUTE(ST0A_ST0A_6_DATA_END - ST0A_ST0A_6_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_6);
    __romPos = ALIGN(__romPos, 16);
    ST0A_ST0A_6_ROM_END = __romPos;
    ST0A_ST0A_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
