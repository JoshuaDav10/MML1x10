SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_ST05_3_header_ROM_START = __romPos;
    ST05_ST05_3_header_VRAM = ADDR(.ST05_ST05_3_header);
    .ST05_ST05_3_header : AT(ST05_ST05_3_header_ROM_START) SUBALIGN(16)
    {
        ST05_ST05_3_header_DATA_START = .;
        ST05_ST05_3_header_s = .;
        build/asm/ST05/ovl3__SCR_DATA_ST05.STG/ST05_ST05_3_header.s.o(.data);
        ST05_ST05_3_header_DATA_END = .;
        ST05_ST05_3_header_DATA_SIZE = ABSOLUTE(ST05_ST05_3_header_DATA_END - ST05_ST05_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_3_header);
    ST05_ST05_3_header_ROM_END = __romPos;
    ST05_ST05_3_header_VRAM_END = .;

    ST05_ST05_3_ROM_START = __romPos;
    ST05_ST05_3_VRAM = ADDR(.ST05_ST05_3);
    .ST05_ST05_3 0x80194000 : AT(ST05_ST05_3_ROM_START) SUBALIGN(4)
    {
        ST05_ST05_3_DATA_START = .;
        ST05_3_data__s = .;
        build/asm/ST05/ovl3__SCR_DATA_ST05.STG/data/ST05_3.data.s.o(.data);
        ST05_ST05_3_DATA_END = .;
        ST05_ST05_3_DATA_SIZE = ABSOLUTE(ST05_ST05_3_DATA_END - ST05_ST05_3_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_3);
    __romPos = ALIGN(__romPos, 16);
    ST05_ST05_3_ROM_END = __romPos;
    ST05_ST05_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
