SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_ST19_00_26_header_ROM_START = __romPos;
    ST19_ST19_00_26_header_VRAM = ADDR(.ST19_ST19_00_26_header);
    .ST19_ST19_00_26_header : AT(ST19_ST19_00_26_header_ROM_START) SUBALIGN(16)
    {
        ST19_ST19_00_26_header_DATA_START = .;
        ST19_ST19_00_26_header_s = .;
        build/asm/ST19/ovl26__MESS_ST19_00.MSG/ST19_ST19_00_26_header.s.o(.data);
        ST19_ST19_00_26_header_DATA_END = .;
        ST19_ST19_00_26_header_DATA_SIZE = ABSOLUTE(ST19_ST19_00_26_header_DATA_END - ST19_ST19_00_26_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_00_26_header);
    ST19_ST19_00_26_header_ROM_END = __romPos;
    ST19_ST19_00_26_header_VRAM_END = .;

    ST19_ST19_00_26_ROM_START = __romPos;
    ST19_ST19_00_26_VRAM = ADDR(.ST19_ST19_00_26);
    .ST19_ST19_00_26 0x80153000 : AT(ST19_ST19_00_26_ROM_START) SUBALIGN(4)
    {
        ST19_ST19_00_26_DATA_START = .;
        ST19_00_26_data__s = .;
        build/asm/ST19/ovl26__MESS_ST19_00.MSG/data/ST19_00_26.data.s.o(.data);
        ST19_ST19_00_26_DATA_END = .;
        ST19_ST19_00_26_DATA_SIZE = ABSOLUTE(ST19_ST19_00_26_DATA_END - ST19_ST19_00_26_DATA_START);
    }
    __romPos += SIZEOF(.ST19_ST19_00_26);
    __romPos = ALIGN(__romPos, 16);
    ST19_ST19_00_26_ROM_END = __romPos;
    ST19_ST19_00_26_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
