SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_ST0D_4_header_ROM_START = __romPos;
    ST0D_ST0D_4_header_VRAM = ADDR(.ST0D_ST0D_4_header);
    .ST0D_ST0D_4_header : AT(ST0D_ST0D_4_header_ROM_START) SUBALIGN(16)
    {
        ST0D_ST0D_4_header_DATA_START = .;
        ST0D_ST0D_4_header_s = .;
        build/asm/ST0D/ovl4__SCR_DATA_ST0D.HED/ST0D_ST0D_4_header.s.o(.data);
        ST0D_ST0D_4_header_DATA_END = .;
        ST0D_ST0D_4_header_DATA_SIZE = ABSOLUTE(ST0D_ST0D_4_header_DATA_END - ST0D_ST0D_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_ST0D_4_header);
    ST0D_ST0D_4_header_ROM_END = __romPos;
    ST0D_ST0D_4_header_VRAM_END = .;

    ST0D_ST0D_4_ROM_START = __romPos;
    ST0D_ST0D_4_VRAM = ADDR(.ST0D_ST0D_4);
    .ST0D_ST0D_4 0x8013A000 : AT(ST0D_ST0D_4_ROM_START) SUBALIGN(4)
    {
        ST0D_ST0D_4_DATA_START = .;
        ST0D_4_data__s = .;
        build/asm/ST0D/ovl4__SCR_DATA_ST0D.HED/data/ST0D_4.data.s.o(.data);
        ST0D_ST0D_4_DATA_END = .;
        ST0D_ST0D_4_DATA_SIZE = ABSOLUTE(ST0D_ST0D_4_DATA_END - ST0D_ST0D_4_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_ST0D_4);
    __romPos = ALIGN(__romPos, 16);
    ST0D_ST0D_4_ROM_END = __romPos;
    ST0D_ST0D_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
