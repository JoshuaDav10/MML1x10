SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_ST15_3_header_ROM_START = __romPos;
    ST15_ST15_3_header_VRAM = ADDR(.ST15_ST15_3_header);
    .ST15_ST15_3_header : AT(ST15_ST15_3_header_ROM_START) SUBALIGN(16)
    {
        ST15_ST15_3_header_DATA_START = .;
        ST15_ST15_3_header_s = .;
        build/asm/ST15/ovl3__SCR_DATA_ST15.STG/ST15_ST15_3_header.s.o(.data);
        ST15_ST15_3_header_DATA_END = .;
        ST15_ST15_3_header_DATA_SIZE = ABSOLUTE(ST15_ST15_3_header_DATA_END - ST15_ST15_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_3_header);
    ST15_ST15_3_header_ROM_END = __romPos;
    ST15_ST15_3_header_VRAM_END = .;

    ST15_ST15_3_ROM_START = __romPos;
    ST15_ST15_3_VRAM = ADDR(.ST15_ST15_3);
    .ST15_ST15_3 0x80194000 : AT(ST15_ST15_3_ROM_START) SUBALIGN(4)
    {
        ST15_ST15_3_DATA_START = .;
        ST15_3_data__s = .;
        build/asm/ST15/ovl3__SCR_DATA_ST15.STG/data/ST15_3.data.s.o(.data);
        ST15_ST15_3_DATA_END = .;
        ST15_ST15_3_DATA_SIZE = ABSOLUTE(ST15_ST15_3_DATA_END - ST15_ST15_3_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_3);
    __romPos = ALIGN(__romPos, 16);
    ST15_ST15_3_ROM_END = __romPos;
    ST15_ST15_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
