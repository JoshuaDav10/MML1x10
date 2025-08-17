SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_02_DUMMY_18_header_ROM_START = __romPos;
    ST02_02_DUMMY_18_header_VRAM = ADDR(.ST02_02_DUMMY_18_header);
    .ST02_02_DUMMY_18_header : AT(ST02_02_DUMMY_18_header_ROM_START) SUBALIGN(16)
    {
        ST02_02_DUMMY_18_header_DATA_START = .;
        ST02_02_DUMMY_18_header_s = .;
        build/asm/ST02_02/ovl18__MESS_DUMMY.MSG/ST02_02_DUMMY_18_header.s.o(.data);
        ST02_02_DUMMY_18_header_DATA_END = .;
        ST02_02_DUMMY_18_header_DATA_SIZE = ABSOLUTE(ST02_02_DUMMY_18_header_DATA_END - ST02_02_DUMMY_18_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_02_DUMMY_18_header);
    ST02_02_DUMMY_18_header_ROM_END = __romPos;
    ST02_02_DUMMY_18_header_VRAM_END = .;

    ST02_02_DUMMY_18_ROM_START = __romPos;
    ST02_02_DUMMY_18_VRAM = ADDR(.ST02_02_DUMMY_18);
    .ST02_02_DUMMY_18 0x80153000 : AT(ST02_02_DUMMY_18_ROM_START) SUBALIGN(4)
    {
        ST02_02_DUMMY_18_DATA_START = .;
        DUMMY_18_data__s = .;
        build/asm/ST02_02/ovl18__MESS_DUMMY.MSG/data/DUMMY_18.data.s.o(.data);
        ST02_02_DUMMY_18_DATA_END = .;
        ST02_02_DUMMY_18_DATA_SIZE = ABSOLUTE(ST02_02_DUMMY_18_DATA_END - ST02_02_DUMMY_18_DATA_START);
    }
    __romPos += SIZEOF(.ST02_02_DUMMY_18);
    __romPos = ALIGN(__romPos, 16);
    ST02_02_DUMMY_18_ROM_END = __romPos;
    ST02_02_DUMMY_18_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
