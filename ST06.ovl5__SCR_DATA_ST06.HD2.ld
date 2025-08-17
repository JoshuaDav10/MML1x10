SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_ST06_5_header_ROM_START = __romPos;
    ST06_ST06_5_header_VRAM = ADDR(.ST06_ST06_5_header);
    .ST06_ST06_5_header : AT(ST06_ST06_5_header_ROM_START) SUBALIGN(16)
    {
        ST06_ST06_5_header_DATA_START = .;
        ST06_ST06_5_header_s = .;
        build/asm/ST06/ovl5__SCR_DATA_ST06.HD2/ST06_ST06_5_header.s.o(.data);
        ST06_ST06_5_header_DATA_END = .;
        ST06_ST06_5_header_DATA_SIZE = ABSOLUTE(ST06_ST06_5_header_DATA_END - ST06_ST06_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_5_header);
    ST06_ST06_5_header_ROM_END = __romPos;
    ST06_ST06_5_header_VRAM_END = .;

    ST06_ST06_5_ROM_START = __romPos;
    ST06_ST06_5_VRAM = ADDR(.ST06_ST06_5);
    .ST06_ST06_5 0x80139F00 : AT(ST06_ST06_5_ROM_START) SUBALIGN(4)
    {
        ST06_ST06_5_DATA_START = .;
        ST06_5_data__s = .;
        build/asm/ST06/ovl5__SCR_DATA_ST06.HD2/data/ST06_5.data.s.o(.data);
        ST06_ST06_5_DATA_END = .;
        ST06_ST06_5_DATA_SIZE = ABSOLUTE(ST06_ST06_5_DATA_END - ST06_ST06_5_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_5);
    __romPos = ALIGN(__romPos, 16);
    ST06_ST06_5_ROM_END = __romPos;
    ST06_ST06_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
