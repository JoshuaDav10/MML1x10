SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03B_ST03_3_header_ROM_START = __romPos;
    ST03B_ST03_3_header_VRAM = ADDR(.ST03B_ST03_3_header);
    .ST03B_ST03_3_header : AT(ST03B_ST03_3_header_ROM_START) SUBALIGN(16)
    {
        ST03B_ST03_3_header_DATA_START = .;
        ST03B_ST03_3_header_s = .;
        build/asm/ST03B/ovl3__SCR_DATA_ST03.STG/ST03B_ST03_3_header.s.o(.data);
        ST03B_ST03_3_header_DATA_END = .;
        ST03B_ST03_3_header_DATA_SIZE = ABSOLUTE(ST03B_ST03_3_header_DATA_END - ST03B_ST03_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_3_header);
    ST03B_ST03_3_header_ROM_END = __romPos;
    ST03B_ST03_3_header_VRAM_END = .;

    ST03B_ST03_3_ROM_START = __romPos;
    ST03B_ST03_3_VRAM = ADDR(.ST03B_ST03_3);
    .ST03B_ST03_3 0x80194000 : AT(ST03B_ST03_3_ROM_START) SUBALIGN(4)
    {
        ST03B_ST03_3_DATA_START = .;
        ST03_3_data__s = .;
        build/asm/ST03B/ovl3__SCR_DATA_ST03.STG/data/ST03_3.data.s.o(.data);
        ST03B_ST03_3_DATA_END = .;
        ST03B_ST03_3_DATA_SIZE = ABSOLUTE(ST03B_ST03_3_DATA_END - ST03B_ST03_3_DATA_START);
    }
    __romPos += SIZEOF(.ST03B_ST03_3);
    __romPos = ALIGN(__romPos, 16);
    ST03B_ST03_3_ROM_END = __romPos;
    ST03B_ST03_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
