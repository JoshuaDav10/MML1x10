SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0F_02B_ST0F_02_16_header_ROM_START = __romPos;
    ST0F_02B_ST0F_02_16_header_VRAM = ADDR(.ST0F_02B_ST0F_02_16_header);
    .ST0F_02B_ST0F_02_16_header : AT(ST0F_02B_ST0F_02_16_header_ROM_START) SUBALIGN(16)
    {
        ST0F_02B_ST0F_02_16_header_DATA_START = .;
        ST0F_02B_ST0F_02_16_header_s = .;
        build/asm/ST0F_02B/ovl16__MESS_ST0F_02.MSG/ST0F_02B_ST0F_02_16_header.s.o(.data);
        ST0F_02B_ST0F_02_16_header_DATA_END = .;
        ST0F_02B_ST0F_02_16_header_DATA_SIZE = ABSOLUTE(ST0F_02B_ST0F_02_16_header_DATA_END - ST0F_02B_ST0F_02_16_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_02B_ST0F_02_16_header);
    ST0F_02B_ST0F_02_16_header_ROM_END = __romPos;
    ST0F_02B_ST0F_02_16_header_VRAM_END = .;

    ST0F_02B_ST0F_02_16_ROM_START = __romPos;
    ST0F_02B_ST0F_02_16_VRAM = ADDR(.ST0F_02B_ST0F_02_16);
    .ST0F_02B_ST0F_02_16 0x80153000 : AT(ST0F_02B_ST0F_02_16_ROM_START) SUBALIGN(4)
    {
        ST0F_02B_ST0F_02_16_DATA_START = .;
        ST0F_02_16_data__s = .;
        build/asm/ST0F_02B/ovl16__MESS_ST0F_02.MSG/data/ST0F_02_16.data.s.o(.data);
        ST0F_02B_ST0F_02_16_DATA_END = .;
        ST0F_02B_ST0F_02_16_DATA_SIZE = ABSOLUTE(ST0F_02B_ST0F_02_16_DATA_END - ST0F_02B_ST0F_02_16_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_02B_ST0F_02_16);
    __romPos = ALIGN(__romPos, 16);
    ST0F_02B_ST0F_02_16_ROM_END = __romPos;
    ST0F_02B_ST0F_02_16_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
