SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_ST06_3_header_ROM_START = __romPos;
    ST06_ST06_3_header_VRAM = ADDR(.ST06_ST06_3_header);
    .ST06_ST06_3_header : AT(ST06_ST06_3_header_ROM_START) SUBALIGN(16)
    {
        ST06_ST06_3_header_DATA_START = .;
        ST06_ST06_3_header_s = .;
        build/asm/ST06/ovl3__SCR_DATA_ST06.STG/ST06_ST06_3_header.s.o(.data);
        ST06_ST06_3_header_DATA_END = .;
        ST06_ST06_3_header_DATA_SIZE = ABSOLUTE(ST06_ST06_3_header_DATA_END - ST06_ST06_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_3_header);
    ST06_ST06_3_header_ROM_END = __romPos;
    ST06_ST06_3_header_VRAM_END = .;

    ST06_ST06_3_ROM_START = __romPos;
    ST06_ST06_3_VRAM = ADDR(.ST06_ST06_3);
    .ST06_ST06_3 0x80194000 : AT(ST06_ST06_3_ROM_START) SUBALIGN(4)
    {
        ST06_ST06_3_DATA_START = .;
        ST06_3_data__s = .;
        build/asm/ST06/ovl3__SCR_DATA_ST06.STG/data/ST06_3.data.s.o(.data);
        ST06_ST06_3_DATA_END = .;
        ST06_ST06_3_DATA_SIZE = ABSOLUTE(ST06_ST06_3_DATA_END - ST06_ST06_3_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_3);
    __romPos = ALIGN(__romPos, 16);
    ST06_ST06_3_ROM_END = __romPos;
    ST06_ST06_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
