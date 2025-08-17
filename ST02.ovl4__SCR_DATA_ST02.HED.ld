SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_ST02_4_header_ROM_START = __romPos;
    ST02_ST02_4_header_VRAM = ADDR(.ST02_ST02_4_header);
    .ST02_ST02_4_header : AT(ST02_ST02_4_header_ROM_START) SUBALIGN(16)
    {
        ST02_ST02_4_header_DATA_START = .;
        ST02_ST02_4_header_s = .;
        build/asm/ST02/ovl4__SCR_DATA_ST02.HED/ST02_ST02_4_header.s.o(.data);
        ST02_ST02_4_header_DATA_END = .;
        ST02_ST02_4_header_DATA_SIZE = ABSOLUTE(ST02_ST02_4_header_DATA_END - ST02_ST02_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_4_header);
    ST02_ST02_4_header_ROM_END = __romPos;
    ST02_ST02_4_header_VRAM_END = .;

    ST02_ST02_4_ROM_START = __romPos;
    ST02_ST02_4_VRAM = ADDR(.ST02_ST02_4);
    .ST02_ST02_4 0x8013A000 : AT(ST02_ST02_4_ROM_START) SUBALIGN(4)
    {
        ST02_ST02_4_DATA_START = .;
        ST02_4_data__s = .;
        build/asm/ST02/ovl4__SCR_DATA_ST02.HED/data/ST02_4.data.s.o(.data);
        ST02_ST02_4_DATA_END = .;
        ST02_ST02_4_DATA_SIZE = ABSOLUTE(ST02_ST02_4_DATA_END - ST02_ST02_4_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_4);
    __romPos = ALIGN(__romPos, 16);
    ST02_ST02_4_ROM_END = __romPos;
    ST02_ST02_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
