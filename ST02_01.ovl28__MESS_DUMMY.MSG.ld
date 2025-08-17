SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_01_DUMMY_28_header_ROM_START = __romPos;
    ST02_01_DUMMY_28_header_VRAM = ADDR(.ST02_01_DUMMY_28_header);
    .ST02_01_DUMMY_28_header : AT(ST02_01_DUMMY_28_header_ROM_START) SUBALIGN(16)
    {
        ST02_01_DUMMY_28_header_DATA_START = .;
        ST02_01_DUMMY_28_header_s = .;
        build/asm/ST02_01/ovl28__MESS_DUMMY.MSG/ST02_01_DUMMY_28_header.s.o(.data);
        ST02_01_DUMMY_28_header_DATA_END = .;
        ST02_01_DUMMY_28_header_DATA_SIZE = ABSOLUTE(ST02_01_DUMMY_28_header_DATA_END - ST02_01_DUMMY_28_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_01_DUMMY_28_header);
    ST02_01_DUMMY_28_header_ROM_END = __romPos;
    ST02_01_DUMMY_28_header_VRAM_END = .;

    ST02_01_DUMMY_28_ROM_START = __romPos;
    ST02_01_DUMMY_28_VRAM = ADDR(.ST02_01_DUMMY_28);
    .ST02_01_DUMMY_28 0x80153000 : AT(ST02_01_DUMMY_28_ROM_START) SUBALIGN(4)
    {
        ST02_01_DUMMY_28_DATA_START = .;
        DUMMY_28_data__s = .;
        build/asm/ST02_01/ovl28__MESS_DUMMY.MSG/data/DUMMY_28.data.s.o(.data);
        ST02_01_DUMMY_28_DATA_END = .;
        ST02_01_DUMMY_28_DATA_SIZE = ABSOLUTE(ST02_01_DUMMY_28_DATA_END - ST02_01_DUMMY_28_DATA_START);
    }
    __romPos += SIZEOF(.ST02_01_DUMMY_28);
    __romPos = ALIGN(__romPos, 16);
    ST02_01_DUMMY_28_ROM_END = __romPos;
    ST02_01_DUMMY_28_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
