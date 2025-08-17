SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_ST13_6_header_ROM_START = __romPos;
    ST13_ST13_6_header_VRAM = ADDR(.ST13_ST13_6_header);
    .ST13_ST13_6_header : AT(ST13_ST13_6_header_ROM_START) SUBALIGN(16)
    {
        ST13_ST13_6_header_DATA_START = .;
        ST13_ST13_6_header_s = .;
        build/asm/ST13/ovl6__SCR_DATA_ST13.STG/ST13_ST13_6_header.s.o(.data);
        ST13_ST13_6_header_DATA_END = .;
        ST13_ST13_6_header_DATA_SIZE = ABSOLUTE(ST13_ST13_6_header_DATA_END - ST13_ST13_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_6_header);
    ST13_ST13_6_header_ROM_END = __romPos;
    ST13_ST13_6_header_VRAM_END = .;

    ST13_ST13_6_ROM_START = __romPos;
    ST13_ST13_6_VRAM = ADDR(.ST13_ST13_6);
    .ST13_ST13_6 0x80194000 : AT(ST13_ST13_6_ROM_START) SUBALIGN(4)
    {
        ST13_ST13_6_DATA_START = .;
        ST13_6_data__s = .;
        build/asm/ST13/ovl6__SCR_DATA_ST13.STG/data/ST13_6.data.s.o(.data);
        ST13_ST13_6_DATA_END = .;
        ST13_ST13_6_DATA_SIZE = ABSOLUTE(ST13_ST13_6_DATA_END - ST13_ST13_6_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_6);
    __romPos = ALIGN(__romPos, 16);
    ST13_ST13_6_ROM_END = __romPos;
    ST13_ST13_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
