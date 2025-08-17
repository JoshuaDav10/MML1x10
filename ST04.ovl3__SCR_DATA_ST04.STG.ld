SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_ST04_3_header_ROM_START = __romPos;
    ST04_ST04_3_header_VRAM = ADDR(.ST04_ST04_3_header);
    .ST04_ST04_3_header : AT(ST04_ST04_3_header_ROM_START) SUBALIGN(16)
    {
        ST04_ST04_3_header_DATA_START = .;
        ST04_ST04_3_header_s = .;
        build/asm/ST04/ovl3__SCR_DATA_ST04.STG/ST04_ST04_3_header.s.o(.data);
        ST04_ST04_3_header_DATA_END = .;
        ST04_ST04_3_header_DATA_SIZE = ABSOLUTE(ST04_ST04_3_header_DATA_END - ST04_ST04_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_ST04_3_header);
    ST04_ST04_3_header_ROM_END = __romPos;
    ST04_ST04_3_header_VRAM_END = .;

    ST04_ST04_3_ROM_START = __romPos;
    ST04_ST04_3_VRAM = ADDR(.ST04_ST04_3);
    .ST04_ST04_3 0x80194000 : AT(ST04_ST04_3_ROM_START) SUBALIGN(4)
    {
        ST04_ST04_3_DATA_START = .;
        ST04_3_data__s = .;
        build/asm/ST04/ovl3__SCR_DATA_ST04.STG/data/ST04_3.data.s.o(.data);
        ST04_ST04_3_DATA_END = .;
        ST04_ST04_3_DATA_SIZE = ABSOLUTE(ST04_ST04_3_DATA_END - ST04_ST04_3_DATA_START);
    }
    __romPos += SIZEOF(.ST04_ST04_3);
    __romPos = ALIGN(__romPos, 16);
    ST04_ST04_3_ROM_END = __romPos;
    ST04_ST04_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
