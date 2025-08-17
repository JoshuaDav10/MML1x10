SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_ST05_4_header_ROM_START = __romPos;
    ST05_ST05_4_header_VRAM = ADDR(.ST05_ST05_4_header);
    .ST05_ST05_4_header : AT(ST05_ST05_4_header_ROM_START) SUBALIGN(16)
    {
        ST05_ST05_4_header_DATA_START = .;
        ST05_ST05_4_header_s = .;
        build/asm/ST05/ovl4__SCR_DATA_ST05.HED/ST05_ST05_4_header.s.o(.data);
        ST05_ST05_4_header_DATA_END = .;
        ST05_ST05_4_header_DATA_SIZE = ABSOLUTE(ST05_ST05_4_header_DATA_END - ST05_ST05_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_4_header);
    ST05_ST05_4_header_ROM_END = __romPos;
    ST05_ST05_4_header_VRAM_END = .;

    ST05_ST05_4_ROM_START = __romPos;
    ST05_ST05_4_VRAM = ADDR(.ST05_ST05_4);
    .ST05_ST05_4 0x8013A000 : AT(ST05_ST05_4_ROM_START) SUBALIGN(4)
    {
        ST05_ST05_4_DATA_START = .;
        ST05_4_data__s = .;
        build/asm/ST05/ovl4__SCR_DATA_ST05.HED/data/ST05_4.data.s.o(.data);
        ST05_ST05_4_DATA_END = .;
        ST05_ST05_4_DATA_SIZE = ABSOLUTE(ST05_ST05_4_DATA_END - ST05_ST05_4_DATA_START);
    }
    __romPos += SIZEOF(.ST05_ST05_4);
    __romPos = ALIGN(__romPos, 16);
    ST05_ST05_4_ROM_END = __romPos;
    ST05_ST05_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
