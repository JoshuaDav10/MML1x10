SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0B_ST0B_3_header_ROM_START = __romPos;
    ST0B_ST0B_3_header_VRAM = ADDR(.ST0B_ST0B_3_header);
    .ST0B_ST0B_3_header : AT(ST0B_ST0B_3_header_ROM_START) SUBALIGN(16)
    {
        ST0B_ST0B_3_header_DATA_START = .;
        ST0B_ST0B_3_header_s = .;
        build/asm/ST0B/ovl3__SCR_DATA_ST0B.STG/ST0B_ST0B_3_header.s.o(.data);
        ST0B_ST0B_3_header_DATA_END = .;
        ST0B_ST0B_3_header_DATA_SIZE = ABSOLUTE(ST0B_ST0B_3_header_DATA_END - ST0B_ST0B_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_ST0B_3_header);
    ST0B_ST0B_3_header_ROM_END = __romPos;
    ST0B_ST0B_3_header_VRAM_END = .;

    ST0B_ST0B_3_ROM_START = __romPos;
    ST0B_ST0B_3_VRAM = ADDR(.ST0B_ST0B_3);
    .ST0B_ST0B_3 0x80194000 : AT(ST0B_ST0B_3_ROM_START) SUBALIGN(4)
    {
        ST0B_ST0B_3_DATA_START = .;
        ST0B_3_data__s = .;
        build/asm/ST0B/ovl3__SCR_DATA_ST0B.STG/data/ST0B_3.data.s.o(.data);
        ST0B_ST0B_3_DATA_END = .;
        ST0B_ST0B_3_DATA_SIZE = ABSOLUTE(ST0B_ST0B_3_DATA_END - ST0B_ST0B_3_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_ST0B_3);
    __romPos = ALIGN(__romPos, 16);
    ST0B_ST0B_3_ROM_END = __romPos;
    ST0B_ST0B_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
