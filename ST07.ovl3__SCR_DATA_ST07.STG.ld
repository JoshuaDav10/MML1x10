SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_ST07_3_header_ROM_START = __romPos;
    ST07_ST07_3_header_VRAM = ADDR(.ST07_ST07_3_header);
    .ST07_ST07_3_header : AT(ST07_ST07_3_header_ROM_START) SUBALIGN(16)
    {
        ST07_ST07_3_header_DATA_START = .;
        ST07_ST07_3_header_s = .;
        build/asm/ST07/ovl3__SCR_DATA_ST07.STG/ST07_ST07_3_header.s.o(.data);
        ST07_ST07_3_header_DATA_END = .;
        ST07_ST07_3_header_DATA_SIZE = ABSOLUTE(ST07_ST07_3_header_DATA_END - ST07_ST07_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_3_header);
    ST07_ST07_3_header_ROM_END = __romPos;
    ST07_ST07_3_header_VRAM_END = .;

    ST07_ST07_3_ROM_START = __romPos;
    ST07_ST07_3_VRAM = ADDR(.ST07_ST07_3);
    .ST07_ST07_3 0x80194000 : AT(ST07_ST07_3_ROM_START) SUBALIGN(4)
    {
        ST07_ST07_3_DATA_START = .;
        ST07_3_data__s = .;
        build/asm/ST07/ovl3__SCR_DATA_ST07.STG/data/ST07_3.data.s.o(.data);
        ST07_ST07_3_DATA_END = .;
        ST07_ST07_3_DATA_SIZE = ABSOLUTE(ST07_ST07_3_DATA_END - ST07_ST07_3_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_3);
    __romPos = ALIGN(__romPos, 16);
    ST07_ST07_3_ROM_END = __romPos;
    ST07_ST07_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
