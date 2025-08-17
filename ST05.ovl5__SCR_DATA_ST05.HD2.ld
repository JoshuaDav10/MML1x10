SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_ST05_5_header_ROM_START = __romPos;
    ST05_ST05_5_header_VRAM = ADDR(.ST05_ST05_5_header);
    .ST05_ST05_5_header : AT(ST05_ST05_5_header_ROM_START) SUBALIGN(16)
    {
        ST05_ST05_5_header_DATA_START = .;
        ST05_ST05_5_header_s = .;
        build/asm/ST05/ovl5__SCR_DATA_ST05.HD2/ST05_ST05_5_header.s.o(.data);
        ST05_ST05_5_header_DATA_END = .;
        ST05_ST05_5_header_DATA_SIZE = ABSOLUTE(ST05_ST05_5_header_DATA_END - ST05_ST05_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_5_header);
    ST05_ST05_5_header_ROM_END = __romPos;
    ST05_ST05_5_header_VRAM_END = .;

    ST05_ST05_5_ROM_START = __romPos;
    ST05_ST05_5_VRAM = ADDR(.ST05_ST05_5);
    .ST05_ST05_5 0x80139F00 : AT(ST05_ST05_5_ROM_START) SUBALIGN(4)
    {
        ST05_ST05_5_DATA_START = .;
        ST05_5_data__s = .;
        build/asm/ST05/ovl5__SCR_DATA_ST05.HD2/data/ST05_5.data.s.o(.data);
        ST05_ST05_5_DATA_END = .;
        ST05_ST05_5_DATA_SIZE = ABSOLUTE(ST05_ST05_5_DATA_END - ST05_ST05_5_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_5);
    __romPos = ALIGN(__romPos, 16);
    ST05_ST05_5_ROM_END = __romPos;
    ST05_ST05_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
