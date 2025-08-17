SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0C_ST0C_4_header_ROM_START = __romPos;
    ST0C_ST0C_4_header_VRAM = ADDR(.ST0C_ST0C_4_header);
    .ST0C_ST0C_4_header : AT(ST0C_ST0C_4_header_ROM_START) SUBALIGN(16)
    {
        ST0C_ST0C_4_header_DATA_START = .;
        ST0C_ST0C_4_header_s = .;
        build/asm/ST0C/ovl4__SCR_DATA_ST0C.HED/ST0C_ST0C_4_header.s.o(.data);
        ST0C_ST0C_4_header_DATA_END = .;
        ST0C_ST0C_4_header_DATA_SIZE = ABSOLUTE(ST0C_ST0C_4_header_DATA_END - ST0C_ST0C_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_4_header);
    ST0C_ST0C_4_header_ROM_END = __romPos;
    ST0C_ST0C_4_header_VRAM_END = .;

    ST0C_ST0C_4_ROM_START = __romPos;
    ST0C_ST0C_4_VRAM = ADDR(.ST0C_ST0C_4);
    .ST0C_ST0C_4 0x8013A000 : AT(ST0C_ST0C_4_ROM_START) SUBALIGN(4)
    {
        ST0C_ST0C_4_DATA_START = .;
        ST0C_4_data__s = .;
        build/asm/ST0C/ovl4__SCR_DATA_ST0C.HED/data/ST0C_4.data.s.o(.data);
        ST0C_ST0C_4_DATA_END = .;
        ST0C_ST0C_4_DATA_SIZE = ABSOLUTE(ST0C_ST0C_4_DATA_END - ST0C_ST0C_4_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_4);
    __romPos = ALIGN(__romPos, 16);
    ST0C_ST0C_4_ROM_END = __romPos;
    ST0C_ST0C_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
