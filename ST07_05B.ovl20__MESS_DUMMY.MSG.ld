SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_05B_DUMMY_20_header_ROM_START = __romPos;
    ST07_05B_DUMMY_20_header_VRAM = ADDR(.ST07_05B_DUMMY_20_header);
    .ST07_05B_DUMMY_20_header : AT(ST07_05B_DUMMY_20_header_ROM_START) SUBALIGN(16)
    {
        ST07_05B_DUMMY_20_header_DATA_START = .;
        ST07_05B_DUMMY_20_header_s = .;
        build/asm/ST07_05B/ovl20__MESS_DUMMY.MSG/ST07_05B_DUMMY_20_header.s.o(.data);
        ST07_05B_DUMMY_20_header_DATA_END = .;
        ST07_05B_DUMMY_20_header_DATA_SIZE = ABSOLUTE(ST07_05B_DUMMY_20_header_DATA_END - ST07_05B_DUMMY_20_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_05B_DUMMY_20_header);
    ST07_05B_DUMMY_20_header_ROM_END = __romPos;
    ST07_05B_DUMMY_20_header_VRAM_END = .;

    ST07_05B_DUMMY_20_ROM_START = __romPos;
    ST07_05B_DUMMY_20_VRAM = ADDR(.ST07_05B_DUMMY_20);
    .ST07_05B_DUMMY_20 0x80153000 : AT(ST07_05B_DUMMY_20_ROM_START) SUBALIGN(4)
    {
        ST07_05B_DUMMY_20_DATA_START = .;
        DUMMY_20_data__s = .;
        build/asm/ST07_05B/ovl20__MESS_DUMMY.MSG/data/DUMMY_20.data.s.o(.data);
        ST07_05B_DUMMY_20_DATA_END = .;
        ST07_05B_DUMMY_20_DATA_SIZE = ABSOLUTE(ST07_05B_DUMMY_20_DATA_END - ST07_05B_DUMMY_20_DATA_START);
    }
    __romPos += SIZEOF(.ST07_05B_DUMMY_20);
    __romPos = ALIGN(__romPos, 16);
    ST07_05B_DUMMY_20_ROM_END = __romPos;
    ST07_05B_DUMMY_20_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
