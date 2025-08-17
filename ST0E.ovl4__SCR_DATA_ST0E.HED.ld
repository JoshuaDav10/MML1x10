SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0E_ST0E_4_header_ROM_START = __romPos;
    ST0E_ST0E_4_header_VRAM = ADDR(.ST0E_ST0E_4_header);
    .ST0E_ST0E_4_header : AT(ST0E_ST0E_4_header_ROM_START) SUBALIGN(16)
    {
        ST0E_ST0E_4_header_DATA_START = .;
        ST0E_ST0E_4_header_s = .;
        build/asm/ST0E/ovl4__SCR_DATA_ST0E.HED/ST0E_ST0E_4_header.s.o(.data);
        ST0E_ST0E_4_header_DATA_END = .;
        ST0E_ST0E_4_header_DATA_SIZE = ABSOLUTE(ST0E_ST0E_4_header_DATA_END - ST0E_ST0E_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_4_header);
    ST0E_ST0E_4_header_ROM_END = __romPos;
    ST0E_ST0E_4_header_VRAM_END = .;

    ST0E_ST0E_4_ROM_START = __romPos;
    ST0E_ST0E_4_VRAM = ADDR(.ST0E_ST0E_4);
    .ST0E_ST0E_4 0x8013A000 : AT(ST0E_ST0E_4_ROM_START) SUBALIGN(4)
    {
        ST0E_ST0E_4_DATA_START = .;
        ST0E_4_data__s = .;
        build/asm/ST0E/ovl4__SCR_DATA_ST0E.HED/data/ST0E_4.data.s.o(.data);
        ST0E_ST0E_4_DATA_END = .;
        ST0E_ST0E_4_DATA_SIZE = ABSOLUTE(ST0E_ST0E_4_DATA_END - ST0E_ST0E_4_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_4);
    __romPos = ALIGN(__romPos, 16);
    ST0E_ST0E_4_ROM_END = __romPos;
    ST0E_ST0E_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
