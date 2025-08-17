SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_ST02_3_header_ROM_START = __romPos;
    ST02_ST02_3_header_VRAM = ADDR(.ST02_ST02_3_header);
    .ST02_ST02_3_header : AT(ST02_ST02_3_header_ROM_START) SUBALIGN(16)
    {
        ST02_ST02_3_header_DATA_START = .;
        ST02_ST02_3_header_s = .;
        build/asm/ST02/ovl3__SCR_DATA_ST02.STG/ST02_ST02_3_header.s.o(.data);
        ST02_ST02_3_header_DATA_END = .;
        ST02_ST02_3_header_DATA_SIZE = ABSOLUTE(ST02_ST02_3_header_DATA_END - ST02_ST02_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_3_header);
    ST02_ST02_3_header_ROM_END = __romPos;
    ST02_ST02_3_header_VRAM_END = .;

    ST02_ST02_3_ROM_START = __romPos;
    ST02_ST02_3_VRAM = ADDR(.ST02_ST02_3);
    .ST02_ST02_3 0x80194000 : AT(ST02_ST02_3_ROM_START) SUBALIGN(4)
    {
        ST02_ST02_3_DATA_START = .;
        ST02_3_data__s = .;
        build/asm/ST02/ovl3__SCR_DATA_ST02.STG/data/ST02_3.data.s.o(.data);
        ST02_ST02_3_DATA_END = .;
        ST02_ST02_3_DATA_SIZE = ABSOLUTE(ST02_ST02_3_DATA_END - ST02_ST02_3_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_3);
    __romPos = ALIGN(__romPos, 16);
    ST02_ST02_3_ROM_END = __romPos;
    ST02_ST02_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
