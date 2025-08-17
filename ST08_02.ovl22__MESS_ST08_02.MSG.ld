SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_02_ST08_02_22_header_ROM_START = __romPos;
    ST08_02_ST08_02_22_header_VRAM = ADDR(.ST08_02_ST08_02_22_header);
    .ST08_02_ST08_02_22_header : AT(ST08_02_ST08_02_22_header_ROM_START) SUBALIGN(16)
    {
        ST08_02_ST08_02_22_header_DATA_START = .;
        ST08_02_ST08_02_22_header_s = .;
        build/asm/ST08_02/ovl22__MESS_ST08_02.MSG/ST08_02_ST08_02_22_header.s.o(.data);
        ST08_02_ST08_02_22_header_DATA_END = .;
        ST08_02_ST08_02_22_header_DATA_SIZE = ABSOLUTE(ST08_02_ST08_02_22_header_DATA_END - ST08_02_ST08_02_22_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_02_ST08_02_22_header);
    ST08_02_ST08_02_22_header_ROM_END = __romPos;
    ST08_02_ST08_02_22_header_VRAM_END = .;

    ST08_02_ST08_02_22_ROM_START = __romPos;
    ST08_02_ST08_02_22_VRAM = ADDR(.ST08_02_ST08_02_22);
    .ST08_02_ST08_02_22 0x80153000 : AT(ST08_02_ST08_02_22_ROM_START) SUBALIGN(4)
    {
        ST08_02_ST08_02_22_DATA_START = .;
        ST08_02_22_data__s = .;
        build/asm/ST08_02/ovl22__MESS_ST08_02.MSG/data/ST08_02_22.data.s.o(.data);
        ST08_02_ST08_02_22_DATA_END = .;
        ST08_02_ST08_02_22_DATA_SIZE = ABSOLUTE(ST08_02_ST08_02_22_DATA_END - ST08_02_ST08_02_22_DATA_START);
    }
    __romPos += SIZEOF(.ST08_02_ST08_02_22);
    __romPos = ALIGN(__romPos, 16);
    ST08_02_ST08_02_22_ROM_END = __romPos;
    ST08_02_ST08_02_22_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
