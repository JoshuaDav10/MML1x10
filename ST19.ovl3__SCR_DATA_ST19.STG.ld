SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_ST19_3_header_ROM_START = __romPos;
    ST19_ST19_3_header_VRAM = ADDR(.ST19_ST19_3_header);
    .ST19_ST19_3_header : AT(ST19_ST19_3_header_ROM_START) SUBALIGN(16)
    {
        ST19_ST19_3_header_DATA_START = .;
        ST19_ST19_3_header_s = .;
        build/asm/ST19/ovl3__SCR_DATA_ST19.STG/ST19_ST19_3_header.s.o(.data);
        ST19_ST19_3_header_DATA_END = .;
        ST19_ST19_3_header_DATA_SIZE = ABSOLUTE(ST19_ST19_3_header_DATA_END - ST19_ST19_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_3_header);
    ST19_ST19_3_header_ROM_END = __romPos;
    ST19_ST19_3_header_VRAM_END = .;

    ST19_ST19_3_ROM_START = __romPos;
    ST19_ST19_3_VRAM = ADDR(.ST19_ST19_3);
    .ST19_ST19_3 0x80194000 : AT(ST19_ST19_3_ROM_START) SUBALIGN(4)
    {
        ST19_ST19_3_DATA_START = .;
        ST19_3_data__s = .;
        build/asm/ST19/ovl3__SCR_DATA_ST19.STG/data/ST19_3.data.s.o(.data);
        ST19_ST19_3_DATA_END = .;
        ST19_ST19_3_DATA_SIZE = ABSOLUTE(ST19_ST19_3_DATA_END - ST19_ST19_3_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_3);
    __romPos = ALIGN(__romPos, 16);
    ST19_ST19_3_ROM_END = __romPos;
    ST19_ST19_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
