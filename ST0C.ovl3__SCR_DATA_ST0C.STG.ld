SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0C_ST0C_3_header_ROM_START = __romPos;
    ST0C_ST0C_3_header_VRAM = ADDR(.ST0C_ST0C_3_header);
    .ST0C_ST0C_3_header : AT(ST0C_ST0C_3_header_ROM_START) SUBALIGN(16)
    {
        ST0C_ST0C_3_header_DATA_START = .;
        ST0C_ST0C_3_header_s = .;
        build/asm/ST0C/ovl3__SCR_DATA_ST0C.STG/ST0C_ST0C_3_header.s.o(.data);
        ST0C_ST0C_3_header_DATA_END = .;
        ST0C_ST0C_3_header_DATA_SIZE = ABSOLUTE(ST0C_ST0C_3_header_DATA_END - ST0C_ST0C_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_3_header);
    ST0C_ST0C_3_header_ROM_END = __romPos;
    ST0C_ST0C_3_header_VRAM_END = .;

    ST0C_ST0C_3_ROM_START = __romPos;
    ST0C_ST0C_3_VRAM = ADDR(.ST0C_ST0C_3);
    .ST0C_ST0C_3 0x80194000 : AT(ST0C_ST0C_3_ROM_START) SUBALIGN(4)
    {
        ST0C_ST0C_3_DATA_START = .;
        ST0C_3_data__s = .;
        build/asm/ST0C/ovl3__SCR_DATA_ST0C.STG/data/ST0C_3.data.s.o(.data);
        ST0C_ST0C_3_DATA_END = .;
        ST0C_ST0C_3_DATA_SIZE = ABSOLUTE(ST0C_ST0C_3_DATA_END - ST0C_ST0C_3_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_3);
    __romPos = ALIGN(__romPos, 16);
    ST0C_ST0C_3_ROM_END = __romPos;
    ST0C_ST0C_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
