SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0F_03_ST0F_03_22_header_ROM_START = __romPos;
    ST0F_03_ST0F_03_22_header_VRAM = ADDR(.ST0F_03_ST0F_03_22_header);
    .ST0F_03_ST0F_03_22_header : AT(ST0F_03_ST0F_03_22_header_ROM_START) SUBALIGN(16)
    {
        ST0F_03_ST0F_03_22_header_DATA_START = .;
        ST0F_03_ST0F_03_22_header_s = .;
        build/asm/ST0F_03/ovl22__MESS_ST0F_03.MSG/ST0F_03_ST0F_03_22_header.s.o(.data);
        ST0F_03_ST0F_03_22_header_DATA_END = .;
        ST0F_03_ST0F_03_22_header_DATA_SIZE = ABSOLUTE(ST0F_03_ST0F_03_22_header_DATA_END - ST0F_03_ST0F_03_22_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_03_ST0F_03_22_header);
    ST0F_03_ST0F_03_22_header_ROM_END = __romPos;
    ST0F_03_ST0F_03_22_header_VRAM_END = .;

    ST0F_03_ST0F_03_22_ROM_START = __romPos;
    ST0F_03_ST0F_03_22_VRAM = ADDR(.ST0F_03_ST0F_03_22);
    .ST0F_03_ST0F_03_22 0x80153000 : AT(ST0F_03_ST0F_03_22_ROM_START) SUBALIGN(4)
    {
        ST0F_03_ST0F_03_22_DATA_START = .;
        ST0F_03_22_data__s = .;
        build/asm/ST0F_03/ovl22__MESS_ST0F_03.MSG/data/ST0F_03_22.data.s.o(.data);
        ST0F_03_ST0F_03_22_DATA_END = .;
        ST0F_03_ST0F_03_22_DATA_SIZE = ABSOLUTE(ST0F_03_ST0F_03_22_DATA_END - ST0F_03_ST0F_03_22_DATA_START);
    }
    __romPos += SIZEOF(.ST0F_03_ST0F_03_22);
    __romPos = ALIGN(__romPos, 16);
    ST0F_03_ST0F_03_22_ROM_END = __romPos;
    ST0F_03_ST0F_03_22_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
