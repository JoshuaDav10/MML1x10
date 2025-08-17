SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_00_DUMMY_46_header_ROM_START = __romPos;
    ST02_00_DUMMY_46_header_VRAM = ADDR(.ST02_00_DUMMY_46_header);
    .ST02_00_DUMMY_46_header : AT(ST02_00_DUMMY_46_header_ROM_START) SUBALIGN(16)
    {
        ST02_00_DUMMY_46_header_DATA_START = .;
        ST02_00_DUMMY_46_header_s = .;
        build/asm/ST02_00/ovl46__MESS_DUMMY.MSG/ST02_00_DUMMY_46_header.s.o(.data);
        ST02_00_DUMMY_46_header_DATA_END = .;
        ST02_00_DUMMY_46_header_DATA_SIZE = ABSOLUTE(ST02_00_DUMMY_46_header_DATA_END - ST02_00_DUMMY_46_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_00_DUMMY_46_header);
    ST02_00_DUMMY_46_header_ROM_END = __romPos;
    ST02_00_DUMMY_46_header_VRAM_END = .;

    ST02_00_DUMMY_46_ROM_START = __romPos;
    ST02_00_DUMMY_46_VRAM = ADDR(.ST02_00_DUMMY_46);
    .ST02_00_DUMMY_46 0x80153000 : AT(ST02_00_DUMMY_46_ROM_START) SUBALIGN(4)
    {
        ST02_00_DUMMY_46_DATA_START = .;
        DUMMY_46_data__s = .;
        build/asm/ST02_00/ovl46__MESS_DUMMY.MSG/data/DUMMY_46.data.s.o(.data);
        ST02_00_DUMMY_46_DATA_END = .;
        ST02_00_DUMMY_46_DATA_SIZE = ABSOLUTE(ST02_00_DUMMY_46_DATA_END - ST02_00_DUMMY_46_DATA_START);
    }
    __romPos += SIZEOF(.ST02_00_DUMMY_46);
    __romPos = ALIGN(__romPos, 16);
    ST02_00_DUMMY_46_ROM_END = __romPos;
    ST02_00_DUMMY_46_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
