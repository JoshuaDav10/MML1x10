SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_00D_ST0A_00_26_header_ROM_START = __romPos;
    ST0A_00D_ST0A_00_26_header_VRAM = ADDR(.ST0A_00D_ST0A_00_26_header);
    .ST0A_00D_ST0A_00_26_header : AT(ST0A_00D_ST0A_00_26_header_ROM_START) SUBALIGN(16)
    {
        ST0A_00D_ST0A_00_26_header_DATA_START = .;
        ST0A_00D_ST0A_00_26_header_s = .;
        build/asm/ST0A_00D/ovl26__MESS_ST0A_00.MSG/ST0A_00D_ST0A_00_26_header.s.o(.data);
        ST0A_00D_ST0A_00_26_header_DATA_END = .;
        ST0A_00D_ST0A_00_26_header_DATA_SIZE = ABSOLUTE(ST0A_00D_ST0A_00_26_header_DATA_END - ST0A_00D_ST0A_00_26_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00D_ST0A_00_26_header);
    ST0A_00D_ST0A_00_26_header_ROM_END = __romPos;
    ST0A_00D_ST0A_00_26_header_VRAM_END = .;

    ST0A_00D_ST0A_00_26_ROM_START = __romPos;
    ST0A_00D_ST0A_00_26_VRAM = ADDR(.ST0A_00D_ST0A_00_26);
    .ST0A_00D_ST0A_00_26 0x80153000 : AT(ST0A_00D_ST0A_00_26_ROM_START) SUBALIGN(4)
    {
        ST0A_00D_ST0A_00_26_DATA_START = .;
        ST0A_00_26_data__s = .;
        build/asm/ST0A_00D/ovl26__MESS_ST0A_00.MSG/data/ST0A_00_26.data.s.o(.data);
        ST0A_00D_ST0A_00_26_DATA_END = .;
        ST0A_00D_ST0A_00_26_DATA_SIZE = ABSOLUTE(ST0A_00D_ST0A_00_26_DATA_END - ST0A_00D_ST0A_00_26_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00D_ST0A_00_26);
    __romPos = ALIGN(__romPos, 16);
    ST0A_00D_ST0A_00_26_ROM_END = __romPos;
    ST0A_00D_ST0A_00_26_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
