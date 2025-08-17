SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_ST08_5_header_ROM_START = __romPos;
    ST08_ST08_5_header_VRAM = ADDR(.ST08_ST08_5_header);
    .ST08_ST08_5_header : AT(ST08_ST08_5_header_ROM_START) SUBALIGN(16)
    {
        ST08_ST08_5_header_DATA_START = .;
        ST08_ST08_5_header_s = .;
        build/asm/ST08/ovl5__SCR_DATA_ST08.HD2/ST08_ST08_5_header.s.o(.data);
        ST08_ST08_5_header_DATA_END = .;
        ST08_ST08_5_header_DATA_SIZE = ABSOLUTE(ST08_ST08_5_header_DATA_END - ST08_ST08_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_5_header);
    ST08_ST08_5_header_ROM_END = __romPos;
    ST08_ST08_5_header_VRAM_END = .;

    ST08_ST08_5_ROM_START = __romPos;
    ST08_ST08_5_VRAM = ADDR(.ST08_ST08_5);
    .ST08_ST08_5 0x80139F00 : AT(ST08_ST08_5_ROM_START) SUBALIGN(4)
    {
        ST08_ST08_5_DATA_START = .;
        ST08_5_data__s = .;
        build/asm/ST08/ovl5__SCR_DATA_ST08.HD2/data/ST08_5.data.s.o(.data);
        ST08_ST08_5_DATA_END = .;
        ST08_ST08_5_DATA_SIZE = ABSOLUTE(ST08_ST08_5_DATA_END - ST08_ST08_5_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_5);
    __romPos = ALIGN(__romPos, 16);
    ST08_ST08_5_ROM_END = __romPos;
    ST08_ST08_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
