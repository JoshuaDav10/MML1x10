SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_00_ST12_00_25_header_ROM_START = __romPos;
    ST12_00_ST12_00_25_header_VRAM = ADDR(.ST12_00_ST12_00_25_header);
    .ST12_00_ST12_00_25_header : AT(ST12_00_ST12_00_25_header_ROM_START) SUBALIGN(16)
    {
        ST12_00_ST12_00_25_header_DATA_START = .;
        ST12_00_ST12_00_25_header_s = .;
        build/asm/ST12_00/ovl25__MESS_ST12_00.MSG/ST12_00_ST12_00_25_header.s.o(.data);
        ST12_00_ST12_00_25_header_DATA_END = .;
        ST12_00_ST12_00_25_header_DATA_SIZE = ABSOLUTE(ST12_00_ST12_00_25_header_DATA_END - ST12_00_ST12_00_25_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_00_ST12_00_25_header);
    ST12_00_ST12_00_25_header_ROM_END = __romPos;
    ST12_00_ST12_00_25_header_VRAM_END = .;

    ST12_00_ST12_00_25_ROM_START = __romPos;
    ST12_00_ST12_00_25_VRAM = ADDR(.ST12_00_ST12_00_25);
    .ST12_00_ST12_00_25 0x80153000 : AT(ST12_00_ST12_00_25_ROM_START) SUBALIGN(4)
    {
        ST12_00_ST12_00_25_DATA_START = .;
        ST12_00_25_data__s = .;
        build/asm/ST12_00/ovl25__MESS_ST12_00.MSG/data/ST12_00_25.data.s.o(.data);
        ST12_00_ST12_00_25_DATA_END = .;
        ST12_00_ST12_00_25_DATA_SIZE = ABSOLUTE(ST12_00_ST12_00_25_DATA_END - ST12_00_ST12_00_25_DATA_START);
    }
    __romPos += SIZEOF(.ST12_00_ST12_00_25);
    __romPos = ALIGN(__romPos, 16);
    ST12_00_ST12_00_25_ROM_END = __romPos;
    ST12_00_ST12_00_25_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
