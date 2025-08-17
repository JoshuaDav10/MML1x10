SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0F_02_ST0F_02_15_header_ROM_START = __romPos;
    ST0F_02_ST0F_02_15_header_VRAM = ADDR(.ST0F_02_ST0F_02_15_header);
    .ST0F_02_ST0F_02_15_header : AT(ST0F_02_ST0F_02_15_header_ROM_START) SUBALIGN(16)
    {
        ST0F_02_ST0F_02_15_header_DATA_START = .;
        ST0F_02_ST0F_02_15_header_s = .;
        build/asm/ST0F_02/ovl15__MESS_ST0F_02.MSG/ST0F_02_ST0F_02_15_header.s.o(.data);
        ST0F_02_ST0F_02_15_header_DATA_END = .;
        ST0F_02_ST0F_02_15_header_DATA_SIZE = ABSOLUTE(ST0F_02_ST0F_02_15_header_DATA_END - ST0F_02_ST0F_02_15_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_02_ST0F_02_15_header);
    ST0F_02_ST0F_02_15_header_ROM_END = __romPos;
    ST0F_02_ST0F_02_15_header_VRAM_END = .;

    ST0F_02_ST0F_02_15_ROM_START = __romPos;
    ST0F_02_ST0F_02_15_VRAM = ADDR(.ST0F_02_ST0F_02_15);
    .ST0F_02_ST0F_02_15 0x80153000 : AT(ST0F_02_ST0F_02_15_ROM_START) SUBALIGN(4)
    {
        ST0F_02_ST0F_02_15_DATA_START = .;
        ST0F_02_15_data__s = .;
        build/asm/ST0F_02/ovl15__MESS_ST0F_02.MSG/data/ST0F_02_15.data.s.o(.data);
        ST0F_02_ST0F_02_15_DATA_END = .;
        ST0F_02_ST0F_02_15_DATA_SIZE = ABSOLUTE(ST0F_02_ST0F_02_15_DATA_END - ST0F_02_ST0F_02_15_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_02_ST0F_02_15);
    __romPos = ALIGN(__romPos, 16);
    ST0F_02_ST0F_02_15_ROM_END = __romPos;
    ST0F_02_ST0F_02_15_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
