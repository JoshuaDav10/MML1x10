SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_ST18_3_header_ROM_START = __romPos;
    ST18_ST18_3_header_VRAM = ADDR(.ST18_ST18_3_header);
    .ST18_ST18_3_header : AT(ST18_ST18_3_header_ROM_START) SUBALIGN(16)
    {
        ST18_ST18_3_header_DATA_START = .;
        ST18_ST18_3_header_s = .;
        build/asm/ST18/ovl3__SCR_DATA_ST18.STG/ST18_ST18_3_header.s.o(.data);
        ST18_ST18_3_header_DATA_END = .;
        ST18_ST18_3_header_DATA_SIZE = ABSOLUTE(ST18_ST18_3_header_DATA_END - ST18_ST18_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_3_header);
    ST18_ST18_3_header_ROM_END = __romPos;
    ST18_ST18_3_header_VRAM_END = .;

    ST18_ST18_3_ROM_START = __romPos;
    ST18_ST18_3_VRAM = ADDR(.ST18_ST18_3);
    .ST18_ST18_3 0x80194000 : AT(ST18_ST18_3_ROM_START) SUBALIGN(4)
    {
        ST18_ST18_3_DATA_START = .;
        ST18_3_data__s = .;
        build/asm/ST18/ovl3__SCR_DATA_ST18.STG/data/ST18_3.data.s.o(.data);
        ST18_ST18_3_DATA_END = .;
        ST18_ST18_3_DATA_SIZE = ABSOLUTE(ST18_ST18_3_DATA_END - ST18_ST18_3_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_3);
    __romPos = ALIGN(__romPos, 16);
    ST18_ST18_3_ROM_END = __romPos;
    ST18_ST18_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
