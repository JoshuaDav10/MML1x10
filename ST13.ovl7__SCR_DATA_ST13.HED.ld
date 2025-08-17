SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_ST13_7_header_ROM_START = __romPos;
    ST13_ST13_7_header_VRAM = ADDR(.ST13_ST13_7_header);
    .ST13_ST13_7_header : AT(ST13_ST13_7_header_ROM_START) SUBALIGN(16)
    {
        ST13_ST13_7_header_DATA_START = .;
        ST13_ST13_7_header_s = .;
        build/asm/ST13/ovl7__SCR_DATA_ST13.HED/ST13_ST13_7_header.s.o(.data);
        ST13_ST13_7_header_DATA_END = .;
        ST13_ST13_7_header_DATA_SIZE = ABSOLUTE(ST13_ST13_7_header_DATA_END - ST13_ST13_7_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_7_header);
    ST13_ST13_7_header_ROM_END = __romPos;
    ST13_ST13_7_header_VRAM_END = .;

    ST13_ST13_7_ROM_START = __romPos;
    ST13_ST13_7_VRAM = ADDR(.ST13_ST13_7);
    .ST13_ST13_7 0x8013A000 : AT(ST13_ST13_7_ROM_START) SUBALIGN(4)
    {
        ST13_ST13_7_DATA_START = .;
        ST13_7_data__s = .;
        build/asm/ST13/ovl7__SCR_DATA_ST13.HED/data/ST13_7.data.s.o(.data);
        ST13_ST13_7_DATA_END = .;
        ST13_ST13_7_DATA_SIZE = ABSOLUTE(ST13_ST13_7_DATA_END - ST13_ST13_7_DATA_START);
    }
    __romPos += SIZEOF(.ST13_ST13_7);
    __romPos = ALIGN(__romPos, 16);
    ST13_ST13_7_ROM_END = __romPos;
    ST13_ST13_7_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
