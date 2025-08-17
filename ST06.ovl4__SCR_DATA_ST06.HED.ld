SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_ST06_4_header_ROM_START = __romPos;
    ST06_ST06_4_header_VRAM = ADDR(.ST06_ST06_4_header);
    .ST06_ST06_4_header : AT(ST06_ST06_4_header_ROM_START) SUBALIGN(16)
    {
        ST06_ST06_4_header_DATA_START = .;
        ST06_ST06_4_header_s = .;
        build/asm/ST06/ovl4__SCR_DATA_ST06.HED/ST06_ST06_4_header.s.o(.data);
        ST06_ST06_4_header_DATA_END = .;
        ST06_ST06_4_header_DATA_SIZE = ABSOLUTE(ST06_ST06_4_header_DATA_END - ST06_ST06_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_4_header);
    ST06_ST06_4_header_ROM_END = __romPos;
    ST06_ST06_4_header_VRAM_END = .;

    ST06_ST06_4_ROM_START = __romPos;
    ST06_ST06_4_VRAM = ADDR(.ST06_ST06_4);
    .ST06_ST06_4 0x8013A000 : AT(ST06_ST06_4_ROM_START) SUBALIGN(4)
    {
        ST06_ST06_4_DATA_START = .;
        ST06_4_data__s = .;
        build/asm/ST06/ovl4__SCR_DATA_ST06.HED/data/ST06_4.data.s.o(.data);
        ST06_ST06_4_DATA_END = .;
        ST06_ST06_4_DATA_SIZE = ABSOLUTE(ST06_ST06_4_DATA_END - ST06_ST06_4_DATA_START);
    }
    __romPos += SIZEOF(.ST06_ST06_4);
    __romPos = ALIGN(__romPos, 16);
    ST06_ST06_4_ROM_END = __romPos;
    ST06_ST06_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
