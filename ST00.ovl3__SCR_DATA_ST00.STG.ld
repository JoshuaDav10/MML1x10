SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_ST00_3_header_ROM_START = __romPos;
    ST00_ST00_3_header_VRAM = ADDR(.ST00_ST00_3_header);
    .ST00_ST00_3_header : AT(ST00_ST00_3_header_ROM_START) SUBALIGN(16)
    {
        ST00_ST00_3_header_DATA_START = .;
        ST00_ST00_3_header_s = .;
        build/asm/ST00/ovl3__SCR_DATA_ST00.STG/ST00_ST00_3_header.s.o(.data);
        ST00_ST00_3_header_DATA_END = .;
        ST00_ST00_3_header_DATA_SIZE = ABSOLUTE(ST00_ST00_3_header_DATA_END - ST00_ST00_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_3_header);
    ST00_ST00_3_header_ROM_END = __romPos;
    ST00_ST00_3_header_VRAM_END = .;

    ST00_ST00_3_ROM_START = __romPos;
    ST00_ST00_3_VRAM = ADDR(.ST00_ST00_3);
    .ST00_ST00_3 0x80194000 : AT(ST00_ST00_3_ROM_START) SUBALIGN(4)
    {
        ST00_ST00_3_DATA_START = .;
        ST00_3_data__s = .;
        build/asm/ST00/ovl3__SCR_DATA_ST00.STG/data/ST00_3.data.s.o(.data);
        ST00_ST00_3_DATA_END = .;
        ST00_ST00_3_DATA_SIZE = ABSOLUTE(ST00_ST00_3_DATA_END - ST00_ST00_3_DATA_START);
    }
    __romPos += SIZEOF(.ST00_ST00_3);
    __romPos = ALIGN(__romPos, 16);
    ST00_ST00_3_ROM_END = __romPos;
    ST00_ST00_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
