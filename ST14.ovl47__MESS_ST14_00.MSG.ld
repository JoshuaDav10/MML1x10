SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_ST14_00_47_header_ROM_START = __romPos;
    ST14_ST14_00_47_header_VRAM = ADDR(.ST14_ST14_00_47_header);
    .ST14_ST14_00_47_header : AT(ST14_ST14_00_47_header_ROM_START) SUBALIGN(16)
    {
        ST14_ST14_00_47_header_DATA_START = .;
        ST14_ST14_00_47_header_s = .;
        build/asm/ST14/ovl47__MESS_ST14_00.MSG/ST14_ST14_00_47_header.s.o(.data);
        ST14_ST14_00_47_header_DATA_END = .;
        ST14_ST14_00_47_header_DATA_SIZE = ABSOLUTE(ST14_ST14_00_47_header_DATA_END - ST14_ST14_00_47_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_00_47_header);
    ST14_ST14_00_47_header_ROM_END = __romPos;
    ST14_ST14_00_47_header_VRAM_END = .;

    ST14_ST14_00_47_ROM_START = __romPos;
    ST14_ST14_00_47_VRAM = ADDR(.ST14_ST14_00_47);
    .ST14_ST14_00_47 0x80153000 : AT(ST14_ST14_00_47_ROM_START) SUBALIGN(4)
    {
        ST14_ST14_00_47_DATA_START = .;
        ST14_00_47_data__s = .;
        build/asm/ST14/ovl47__MESS_ST14_00.MSG/data/ST14_00_47.data.s.o(.data);
        ST14_ST14_00_47_DATA_END = .;
        ST14_ST14_00_47_DATA_SIZE = ABSOLUTE(ST14_ST14_00_47_DATA_END - ST14_ST14_00_47_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_00_47);
    __romPos = ALIGN(__romPos, 16);
    ST14_ST14_00_47_ROM_END = __romPos;
    ST14_ST14_00_47_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
