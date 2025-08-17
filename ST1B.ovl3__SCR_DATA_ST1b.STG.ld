SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1B_ST1b_3_header_ROM_START = __romPos;
    ST1B_ST1b_3_header_VRAM = ADDR(.ST1B_ST1b_3_header);
    .ST1B_ST1b_3_header : AT(ST1B_ST1b_3_header_ROM_START) SUBALIGN(16)
    {
        ST1B_ST1b_3_header_DATA_START = .;
        ST1B_ST1b_3_header_s = .;
        build/asm/ST1B/ovl3__SCR_DATA_ST1b.STG/ST1B_ST1b_3_header.s.o(.data);
        ST1B_ST1b_3_header_DATA_END = .;
        ST1B_ST1b_3_header_DATA_SIZE = ABSOLUTE(ST1B_ST1b_3_header_DATA_END - ST1B_ST1b_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_ST1b_3_header);
    ST1B_ST1b_3_header_ROM_END = __romPos;
    ST1B_ST1b_3_header_VRAM_END = .;

    ST1B_ST1b_3_ROM_START = __romPos;
    ST1B_ST1b_3_VRAM = ADDR(.ST1B_ST1b_3);
    .ST1B_ST1b_3 0x80194000 : AT(ST1B_ST1b_3_ROM_START) SUBALIGN(4)
    {
        ST1B_ST1b_3_DATA_START = .;
        ST1b_3_data__s = .;
        build/asm/ST1B/ovl3__SCR_DATA_ST1b.STG/data/ST1b_3.data.s.o(.data);
        ST1B_ST1b_3_DATA_END = .;
        ST1B_ST1b_3_DATA_SIZE = ABSOLUTE(ST1B_ST1b_3_DATA_END - ST1B_ST1b_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_ST1b_3);
    __romPos = ALIGN(__romPos, 16);
    ST1B_ST1b_3_ROM_END = __romPos;
    ST1B_ST1b_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
