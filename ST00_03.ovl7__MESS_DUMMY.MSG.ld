SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_03_DUMMY_7_header_ROM_START = __romPos;
    ST00_03_DUMMY_7_header_VRAM = ADDR(.ST00_03_DUMMY_7_header);
    .ST00_03_DUMMY_7_header : AT(ST00_03_DUMMY_7_header_ROM_START) SUBALIGN(16)
    {
        ST00_03_DUMMY_7_header_DATA_START = .;
        ST00_03_DUMMY_7_header_s = .;
        build/asm/ST00_03/ovl7__MESS_DUMMY.MSG/ST00_03_DUMMY_7_header.s.o(.data);
        ST00_03_DUMMY_7_header_DATA_END = .;
        ST00_03_DUMMY_7_header_DATA_SIZE = ABSOLUTE(ST00_03_DUMMY_7_header_DATA_END - ST00_03_DUMMY_7_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_03_DUMMY_7_header);
    ST00_03_DUMMY_7_header_ROM_END = __romPos;
    ST00_03_DUMMY_7_header_VRAM_END = .;

    ST00_03_DUMMY_7_ROM_START = __romPos;
    ST00_03_DUMMY_7_VRAM = ADDR(.ST00_03_DUMMY_7);
    .ST00_03_DUMMY_7 0x80153000 : AT(ST00_03_DUMMY_7_ROM_START) SUBALIGN(4)
    {
        ST00_03_DUMMY_7_DATA_START = .;
        DUMMY_7_data__s = .;
        build/asm/ST00_03/ovl7__MESS_DUMMY.MSG/data/DUMMY_7.data.s.o(.data);
        ST00_03_DUMMY_7_DATA_END = .;
        ST00_03_DUMMY_7_DATA_SIZE = ABSOLUTE(ST00_03_DUMMY_7_DATA_END - ST00_03_DUMMY_7_DATA_START);
    }
    __romPos += SIZEOF(.ST00_03_DUMMY_7);
    __romPos = ALIGN(__romPos, 16);
    ST00_03_DUMMY_7_ROM_END = __romPos;
    ST00_03_DUMMY_7_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
