SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_ST14_7_header_ROM_START = __romPos;
    ST14_ST14_7_header_VRAM = ADDR(.ST14_ST14_7_header);
    .ST14_ST14_7_header : AT(ST14_ST14_7_header_ROM_START) SUBALIGN(16)
    {
        ST14_ST14_7_header_DATA_START = .;
        ST14_ST14_7_header_s = .;
        build/asm/ST14/ovl7__SCR_DATA_ST14.STG/ST14_ST14_7_header.s.o(.data);
        ST14_ST14_7_header_DATA_END = .;
        ST14_ST14_7_header_DATA_SIZE = ABSOLUTE(ST14_ST14_7_header_DATA_END - ST14_ST14_7_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_7_header);
    ST14_ST14_7_header_ROM_END = __romPos;
    ST14_ST14_7_header_VRAM_END = .;

    ST14_ST14_7_ROM_START = __romPos;
    ST14_ST14_7_VRAM = ADDR(.ST14_ST14_7);
    .ST14_ST14_7 0x80194000 : AT(ST14_ST14_7_ROM_START) SUBALIGN(4)
    {
        ST14_ST14_7_DATA_START = .;
        ST14_7_data__s = .;
        build/asm/ST14/ovl7__SCR_DATA_ST14.STG/data/ST14_7.data.s.o(.data);
        ST14_ST14_7_DATA_END = .;
        ST14_ST14_7_DATA_SIZE = ABSOLUTE(ST14_ST14_7_DATA_END - ST14_ST14_7_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_7);
    __romPos = ALIGN(__romPos, 16);
    ST14_ST14_7_ROM_END = __romPos;
    ST14_ST14_7_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
