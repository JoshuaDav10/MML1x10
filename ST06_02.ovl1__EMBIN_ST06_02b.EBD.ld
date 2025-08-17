SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_02_ST06_02b_1_header_ROM_START = __romPos;
    ST06_02_ST06_02b_1_header_VRAM = ADDR(.ST06_02_ST06_02b_1_header);
    .ST06_02_ST06_02b_1_header : AT(ST06_02_ST06_02b_1_header_ROM_START) SUBALIGN(16)
    {
        ST06_02_ST06_02b_1_header_DATA_START = .;
        ST06_02_ST06_02b_1_header_s = .;
        build/asm/ST06_02/ovl1__EMBIN_ST06_02b.EBD/ST06_02_ST06_02b_1_header.s.o(.data);
        ST06_02_ST06_02b_1_header_DATA_END = .;
        ST06_02_ST06_02b_1_header_DATA_SIZE = ABSOLUTE(ST06_02_ST06_02b_1_header_DATA_END - ST06_02_ST06_02b_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_ST06_02b_1_header);
    ST06_02_ST06_02b_1_header_ROM_END = __romPos;
    ST06_02_ST06_02b_1_header_VRAM_END = .;

    ST06_02_ST06_02b_1_ROM_START = __romPos;
    ST06_02_ST06_02b_1_VRAM = ADDR(.ST06_02_ST06_02b_1);
    .ST06_02_ST06_02b_1 0x80190000 : AT(ST06_02_ST06_02b_1_ROM_START) SUBALIGN(4)
    {
        ST06_02_ST06_02b_1_DATA_START = .;
        ST06_02b_1_data__s = .;
        build/asm/ST06_02/ovl1__EMBIN_ST06_02b.EBD/data/ST06_02b_1.data.s.o(.data);
        ST06_02_ST06_02b_1_DATA_END = .;
        ST06_02_ST06_02b_1_DATA_SIZE = ABSOLUTE(ST06_02_ST06_02b_1_DATA_END - ST06_02_ST06_02b_1_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_ST06_02b_1);
    __romPos = ALIGN(__romPos, 16);
    ST06_02_ST06_02b_1_ROM_END = __romPos;
    ST06_02_ST06_02b_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
