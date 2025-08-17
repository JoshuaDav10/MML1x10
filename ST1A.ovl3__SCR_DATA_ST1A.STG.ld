SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_ST1A_3_header_ROM_START = __romPos;
    ST1A_ST1A_3_header_VRAM = ADDR(.ST1A_ST1A_3_header);
    .ST1A_ST1A_3_header : AT(ST1A_ST1A_3_header_ROM_START) SUBALIGN(16)
    {
        ST1A_ST1A_3_header_DATA_START = .;
        ST1A_ST1A_3_header_s = .;
        build/asm/ST1A/ovl3__SCR_DATA_ST1A.STG/ST1A_ST1A_3_header.s.o(.data);
        ST1A_ST1A_3_header_DATA_END = .;
        ST1A_ST1A_3_header_DATA_SIZE = ABSOLUTE(ST1A_ST1A_3_header_DATA_END - ST1A_ST1A_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_ST1A_3_header);
    ST1A_ST1A_3_header_ROM_END = __romPos;
    ST1A_ST1A_3_header_VRAM_END = .;

    ST1A_ST1A_3_ROM_START = __romPos;
    ST1A_ST1A_3_VRAM = ADDR(.ST1A_ST1A_3);
    .ST1A_ST1A_3 0x80194000 : AT(ST1A_ST1A_3_ROM_START) SUBALIGN(4)
    {
        ST1A_ST1A_3_DATA_START = .;
        ST1A_3_data__s = .;
        build/asm/ST1A/ovl3__SCR_DATA_ST1A.STG/data/ST1A_3.data.s.o(.data);
        ST1A_ST1A_3_DATA_END = .;
        ST1A_ST1A_3_DATA_SIZE = ABSOLUTE(ST1A_ST1A_3_DATA_END - ST1A_ST1A_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_ST1A_3);
    __romPos = ALIGN(__romPos, 16);
    ST1A_ST1A_3_ROM_END = __romPos;
    ST1A_ST1A_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
