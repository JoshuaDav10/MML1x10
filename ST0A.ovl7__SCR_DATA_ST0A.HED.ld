SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_ST0A_7_header_ROM_START = __romPos;
    ST0A_ST0A_7_header_VRAM = ADDR(.ST0A_ST0A_7_header);
    .ST0A_ST0A_7_header : AT(ST0A_ST0A_7_header_ROM_START) SUBALIGN(16)
    {
        ST0A_ST0A_7_header_DATA_START = .;
        ST0A_ST0A_7_header_s = .;
        build/asm/ST0A/ovl7__SCR_DATA_ST0A.HED/ST0A_ST0A_7_header.s.o(.data);
        ST0A_ST0A_7_header_DATA_END = .;
        ST0A_ST0A_7_header_DATA_SIZE = ABSOLUTE(ST0A_ST0A_7_header_DATA_END - ST0A_ST0A_7_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_7_header);
    ST0A_ST0A_7_header_ROM_END = __romPos;
    ST0A_ST0A_7_header_VRAM_END = .;

    ST0A_ST0A_7_ROM_START = __romPos;
    ST0A_ST0A_7_VRAM = ADDR(.ST0A_ST0A_7);
    .ST0A_ST0A_7 0x8013A000 : AT(ST0A_ST0A_7_ROM_START) SUBALIGN(4)
    {
        ST0A_ST0A_7_DATA_START = .;
        ST0A_7_data__s = .;
        build/asm/ST0A/ovl7__SCR_DATA_ST0A.HED/data/ST0A_7.data.s.o(.data);
        ST0A_ST0A_7_DATA_END = .;
        ST0A_ST0A_7_DATA_SIZE = ABSOLUTE(ST0A_ST0A_7_DATA_END - ST0A_ST0A_7_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_ST0A_7);
    __romPos = ALIGN(__romPos, 16);
    ST0A_ST0A_7_ROM_END = __romPos;
    ST0A_ST0A_7_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
