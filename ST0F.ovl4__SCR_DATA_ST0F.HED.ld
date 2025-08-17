SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0F_ST0F_4_header_ROM_START = __romPos;
    ST0F_ST0F_4_header_VRAM = ADDR(.ST0F_ST0F_4_header);
    .ST0F_ST0F_4_header : AT(ST0F_ST0F_4_header_ROM_START) SUBALIGN(16)
    {
        ST0F_ST0F_4_header_DATA_START = .;
        ST0F_ST0F_4_header_s = .;
        build/asm/ST0F/ovl4__SCR_DATA_ST0F.HED/ST0F_ST0F_4_header.s.o(.data);
        ST0F_ST0F_4_header_DATA_END = .;
        ST0F_ST0F_4_header_DATA_SIZE = ABSOLUTE(ST0F_ST0F_4_header_DATA_END - ST0F_ST0F_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_ST0F_4_header);
    ST0F_ST0F_4_header_ROM_END = __romPos;
    ST0F_ST0F_4_header_VRAM_END = .;

    ST0F_ST0F_4_ROM_START = __romPos;
    ST0F_ST0F_4_VRAM = ADDR(.ST0F_ST0F_4);
    .ST0F_ST0F_4 0x8013A000 : AT(ST0F_ST0F_4_ROM_START) SUBALIGN(4)
    {
        ST0F_ST0F_4_DATA_START = .;
        ST0F_4_data__s = .;
        build/asm/ST0F/ovl4__SCR_DATA_ST0F.HED/data/ST0F_4.data.s.o(.data);
        ST0F_ST0F_4_DATA_END = .;
        ST0F_ST0F_4_DATA_SIZE = ABSOLUTE(ST0F_ST0F_4_DATA_END - ST0F_ST0F_4_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_ST0F_4);
    __romPos = ALIGN(__romPos, 16);
    ST0F_ST0F_4_ROM_END = __romPos;
    ST0F_ST0F_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
