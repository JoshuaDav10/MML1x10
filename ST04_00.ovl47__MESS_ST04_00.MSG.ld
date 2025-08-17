SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_00_ST04_00_47_header_ROM_START = __romPos;
    ST04_00_ST04_00_47_header_VRAM = ADDR(.ST04_00_ST04_00_47_header);
    .ST04_00_ST04_00_47_header : AT(ST04_00_ST04_00_47_header_ROM_START) SUBALIGN(16)
    {
        ST04_00_ST04_00_47_header_DATA_START = .;
        ST04_00_ST04_00_47_header_s = .;
        build/asm/ST04_00/ovl47__MESS_ST04_00.MSG/ST04_00_ST04_00_47_header.s.o(.data);
        ST04_00_ST04_00_47_header_DATA_END = .;
        ST04_00_ST04_00_47_header_DATA_SIZE = ABSOLUTE(ST04_00_ST04_00_47_header_DATA_END - ST04_00_ST04_00_47_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00_ST04_00_47_header);
    ST04_00_ST04_00_47_header_ROM_END = __romPos;
    ST04_00_ST04_00_47_header_VRAM_END = .;

    ST04_00_ST04_00_47_ROM_START = __romPos;
    ST04_00_ST04_00_47_VRAM = ADDR(.ST04_00_ST04_00_47);
    .ST04_00_ST04_00_47 0x80153000 : AT(ST04_00_ST04_00_47_ROM_START) SUBALIGN(4)
    {
        ST04_00_ST04_00_47_DATA_START = .;
        ST04_00_47_data__s = .;
        build/asm/ST04_00/ovl47__MESS_ST04_00.MSG/data/ST04_00_47.data.s.o(.data);
        ST04_00_ST04_00_47_DATA_END = .;
        ST04_00_ST04_00_47_DATA_SIZE = ABSOLUTE(ST04_00_ST04_00_47_DATA_END - ST04_00_ST04_00_47_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00_ST04_00_47);
    __romPos = ALIGN(__romPos, 16);
    ST04_00_ST04_00_47_ROM_END = __romPos;
    ST04_00_ST04_00_47_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
