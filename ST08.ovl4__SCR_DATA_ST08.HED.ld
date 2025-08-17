SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_ST08_4_header_ROM_START = __romPos;
    ST08_ST08_4_header_VRAM = ADDR(.ST08_ST08_4_header);
    .ST08_ST08_4_header : AT(ST08_ST08_4_header_ROM_START) SUBALIGN(16)
    {
        ST08_ST08_4_header_DATA_START = .;
        ST08_ST08_4_header_s = .;
        build/asm/ST08/ovl4__SCR_DATA_ST08.HED/ST08_ST08_4_header.s.o(.data);
        ST08_ST08_4_header_DATA_END = .;
        ST08_ST08_4_header_DATA_SIZE = ABSOLUTE(ST08_ST08_4_header_DATA_END - ST08_ST08_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_4_header);
    ST08_ST08_4_header_ROM_END = __romPos;
    ST08_ST08_4_header_VRAM_END = .;

    ST08_ST08_4_ROM_START = __romPos;
    ST08_ST08_4_VRAM = ADDR(.ST08_ST08_4);
    .ST08_ST08_4 0x8013A000 : AT(ST08_ST08_4_ROM_START) SUBALIGN(4)
    {
        ST08_ST08_4_DATA_START = .;
        ST08_4_data__s = .;
        build/asm/ST08/ovl4__SCR_DATA_ST08.HED/data/ST08_4.data.s.o(.data);
        ST08_ST08_4_DATA_END = .;
        ST08_ST08_4_DATA_SIZE = ABSOLUTE(ST08_ST08_4_DATA_END - ST08_ST08_4_DATA_START);
    }
    __romPos += SIZEOF(.ST08_ST08_4);
    __romPos = ALIGN(__romPos, 16);
    ST08_ST08_4_ROM_END = __romPos;
    ST08_ST08_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
