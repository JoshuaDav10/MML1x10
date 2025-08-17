SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_ST15_4_header_ROM_START = __romPos;
    ST15_ST15_4_header_VRAM = ADDR(.ST15_ST15_4_header);
    .ST15_ST15_4_header : AT(ST15_ST15_4_header_ROM_START) SUBALIGN(16)
    {
        ST15_ST15_4_header_DATA_START = .;
        ST15_ST15_4_header_s = .;
        build/asm/ST15/ovl4__SCR_DATA_ST15.HED/ST15_ST15_4_header.s.o(.data);
        ST15_ST15_4_header_DATA_END = .;
        ST15_ST15_4_header_DATA_SIZE = ABSOLUTE(ST15_ST15_4_header_DATA_END - ST15_ST15_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_4_header);
    ST15_ST15_4_header_ROM_END = __romPos;
    ST15_ST15_4_header_VRAM_END = .;

    ST15_ST15_4_ROM_START = __romPos;
    ST15_ST15_4_VRAM = ADDR(.ST15_ST15_4);
    .ST15_ST15_4 0x8013A000 : AT(ST15_ST15_4_ROM_START) SUBALIGN(4)
    {
        ST15_ST15_4_DATA_START = .;
        ST15_4_data__s = .;
        build/asm/ST15/ovl4__SCR_DATA_ST15.HED/data/ST15_4.data.s.o(.data);
        ST15_ST15_4_DATA_END = .;
        ST15_ST15_4_DATA_SIZE = ABSOLUTE(ST15_ST15_4_DATA_END - ST15_ST15_4_DATA_START);
    }
    __romPos += SIZEOF(.ST15_ST15_4);
    __romPos = ALIGN(__romPos, 16);
    ST15_ST15_4_ROM_END = __romPos;
    ST15_ST15_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
