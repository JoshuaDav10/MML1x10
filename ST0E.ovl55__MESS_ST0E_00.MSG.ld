SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0E_ST0E_00_55_header_ROM_START = __romPos;
    ST0E_ST0E_00_55_header_VRAM = ADDR(.ST0E_ST0E_00_55_header);
    .ST0E_ST0E_00_55_header : AT(ST0E_ST0E_00_55_header_ROM_START) SUBALIGN(16)
    {
        ST0E_ST0E_00_55_header_DATA_START = .;
        ST0E_ST0E_00_55_header_s = .;
        build/asm/ST0E/ovl55__MESS_ST0E_00.MSG/ST0E_ST0E_00_55_header.s.o(.data);
        ST0E_ST0E_00_55_header_DATA_END = .;
        ST0E_ST0E_00_55_header_DATA_SIZE = ABSOLUTE(ST0E_ST0E_00_55_header_DATA_END - ST0E_ST0E_00_55_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_00_55_header);
    ST0E_ST0E_00_55_header_ROM_END = __romPos;
    ST0E_ST0E_00_55_header_VRAM_END = .;

    ST0E_ST0E_00_55_ROM_START = __romPos;
    ST0E_ST0E_00_55_VRAM = ADDR(.ST0E_ST0E_00_55);
    .ST0E_ST0E_00_55 0x80153000 : AT(ST0E_ST0E_00_55_ROM_START) SUBALIGN(4)
    {
        ST0E_ST0E_00_55_DATA_START = .;
        ST0E_00_55_data__s = .;
        build/asm/ST0E/ovl55__MESS_ST0E_00.MSG/data/ST0E_00_55.data.s.o(.data);
        ST0E_ST0E_00_55_DATA_END = .;
        ST0E_ST0E_00_55_DATA_SIZE = ABSOLUTE(ST0E_ST0E_00_55_DATA_END - ST0E_ST0E_00_55_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_00_55);
    __romPos = ALIGN(__romPos, 16);
    ST0E_ST0E_00_55_ROM_END = __romPos;
    ST0E_ST0E_00_55_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
