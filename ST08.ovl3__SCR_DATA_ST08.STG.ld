SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_ST08_3_header_ROM_START = __romPos;
    ST08_ST08_3_header_VRAM = ADDR(.ST08_ST08_3_header);
    .ST08_ST08_3_header : AT(ST08_ST08_3_header_ROM_START) SUBALIGN(16)
    {
        ST08_ST08_3_header_DATA_START = .;
        ST08_ST08_3_header_s = .;
        build/asm/ST08/ovl3__SCR_DATA_ST08.STG/ST08_ST08_3_header.s.o(.data);
        ST08_ST08_3_header_DATA_END = .;
        ST08_ST08_3_header_DATA_SIZE = ABSOLUTE(ST08_ST08_3_header_DATA_END - ST08_ST08_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_3_header);
    ST08_ST08_3_header_ROM_END = __romPos;
    ST08_ST08_3_header_VRAM_END = .;

    ST08_ST08_3_ROM_START = __romPos;
    ST08_ST08_3_VRAM = ADDR(.ST08_ST08_3);
    .ST08_ST08_3 0x80194000 : AT(ST08_ST08_3_ROM_START) SUBALIGN(4)
    {
        ST08_ST08_3_DATA_START = .;
        ST08_3_data__s = .;
        build/asm/ST08/ovl3__SCR_DATA_ST08.STG/data/ST08_3.data.s.o(.data);
        ST08_ST08_3_DATA_END = .;
        ST08_ST08_3_DATA_SIZE = ABSOLUTE(ST08_ST08_3_DATA_END - ST08_ST08_3_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_3);
    __romPos = ALIGN(__romPos, 16);
    ST08_ST08_3_ROM_END = __romPos;
    ST08_ST08_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
