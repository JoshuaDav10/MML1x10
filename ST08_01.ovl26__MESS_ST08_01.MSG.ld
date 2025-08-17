SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_01_ST08_01_26_header_ROM_START = __romPos;
    ST08_01_ST08_01_26_header_VRAM = ADDR(.ST08_01_ST08_01_26_header);
    .ST08_01_ST08_01_26_header : AT(ST08_01_ST08_01_26_header_ROM_START) SUBALIGN(16)
    {
        ST08_01_ST08_01_26_header_DATA_START = .;
        ST08_01_ST08_01_26_header_s = .;
        build/asm/ST08_01/ovl26__MESS_ST08_01.MSG/ST08_01_ST08_01_26_header.s.o(.data);
        ST08_01_ST08_01_26_header_DATA_END = .;
        ST08_01_ST08_01_26_header_DATA_SIZE = ABSOLUTE(ST08_01_ST08_01_26_header_DATA_END - ST08_01_ST08_01_26_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_01_ST08_01_26_header);
    ST08_01_ST08_01_26_header_ROM_END = __romPos;
    ST08_01_ST08_01_26_header_VRAM_END = .;

    ST08_01_ST08_01_26_ROM_START = __romPos;
    ST08_01_ST08_01_26_VRAM = ADDR(.ST08_01_ST08_01_26);
    .ST08_01_ST08_01_26 0x80153000 : AT(ST08_01_ST08_01_26_ROM_START) SUBALIGN(4)
    {
        ST08_01_ST08_01_26_DATA_START = .;
        ST08_01_26_data__s = .;
        build/asm/ST08_01/ovl26__MESS_ST08_01.MSG/data/ST08_01_26.data.s.o(.data);
        ST08_01_ST08_01_26_DATA_END = .;
        ST08_01_ST08_01_26_DATA_SIZE = ABSOLUTE(ST08_01_ST08_01_26_DATA_END - ST08_01_ST08_01_26_DATA_START);
    }
    __romPos += SIZEOF(.ST08_01_ST08_01_26);
    __romPos = ALIGN(__romPos, 16);
    ST08_01_ST08_01_26_ROM_END = __romPos;
    ST08_01_ST08_01_26_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
