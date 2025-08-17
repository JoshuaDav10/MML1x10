SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_ST09_3_header_ROM_START = __romPos;
    ST09_ST09_3_header_VRAM = ADDR(.ST09_ST09_3_header);
    .ST09_ST09_3_header : AT(ST09_ST09_3_header_ROM_START) SUBALIGN(16)
    {
        ST09_ST09_3_header_DATA_START = .;
        ST09_ST09_3_header_s = .;
        build/asm/ST09/ovl3__SCR_DATA_ST09.STG/ST09_ST09_3_header.s.o(.data);
        ST09_ST09_3_header_DATA_END = .;
        ST09_ST09_3_header_DATA_SIZE = ABSOLUTE(ST09_ST09_3_header_DATA_END - ST09_ST09_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_3_header);
    ST09_ST09_3_header_ROM_END = __romPos;
    ST09_ST09_3_header_VRAM_END = .;

    ST09_ST09_3_ROM_START = __romPos;
    ST09_ST09_3_VRAM = ADDR(.ST09_ST09_3);
    .ST09_ST09_3 0x80194000 : AT(ST09_ST09_3_ROM_START) SUBALIGN(4)
    {
        ST09_ST09_3_DATA_START = .;
        ST09_3_data__s = .;
        build/asm/ST09/ovl3__SCR_DATA_ST09.STG/data/ST09_3.data.s.o(.data);
        ST09_ST09_3_DATA_END = .;
        ST09_ST09_3_DATA_SIZE = ABSOLUTE(ST09_ST09_3_DATA_END - ST09_ST09_3_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_3);
    __romPos = ALIGN(__romPos, 16);
    ST09_ST09_3_ROM_END = __romPos;
    ST09_ST09_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
