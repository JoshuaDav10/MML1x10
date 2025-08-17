SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_02_ST04_02_17_header_ROM_START = __romPos;
    ST04_02_ST04_02_17_header_VRAM = ADDR(.ST04_02_ST04_02_17_header);
    .ST04_02_ST04_02_17_header : AT(ST04_02_ST04_02_17_header_ROM_START) SUBALIGN(16)
    {
        ST04_02_ST04_02_17_header_DATA_START = .;
        ST04_02_ST04_02_17_header_s = .;
        build/asm/ST04_02/ovl17__MESS_ST04_02.MSG/ST04_02_ST04_02_17_header.s.o(.data);
        ST04_02_ST04_02_17_header_DATA_END = .;
        ST04_02_ST04_02_17_header_DATA_SIZE = ABSOLUTE(ST04_02_ST04_02_17_header_DATA_END - ST04_02_ST04_02_17_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_02_ST04_02_17_header);
    ST04_02_ST04_02_17_header_ROM_END = __romPos;
    ST04_02_ST04_02_17_header_VRAM_END = .;

    ST04_02_ST04_02_17_ROM_START = __romPos;
    ST04_02_ST04_02_17_VRAM = ADDR(.ST04_02_ST04_02_17);
    .ST04_02_ST04_02_17 0x80153000 : AT(ST04_02_ST04_02_17_ROM_START) SUBALIGN(4)
    {
        ST04_02_ST04_02_17_DATA_START = .;
        ST04_02_17_data__s = .;
        build/asm/ST04_02/ovl17__MESS_ST04_02.MSG/data/ST04_02_17.data.s.o(.data);
        ST04_02_ST04_02_17_DATA_END = .;
        ST04_02_ST04_02_17_DATA_SIZE = ABSOLUTE(ST04_02_ST04_02_17_DATA_END - ST04_02_ST04_02_17_DATA_START);
    }
    __romPos += SIZEOF(.ST04_02_ST04_02_17);
    __romPos = ALIGN(__romPos, 16);
    ST04_02_ST04_02_17_ROM_END = __romPos;
    ST04_02_ST04_02_17_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
