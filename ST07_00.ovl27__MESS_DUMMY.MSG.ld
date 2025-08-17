SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_00_DUMMY_27_header_ROM_START = __romPos;
    ST07_00_DUMMY_27_header_VRAM = ADDR(.ST07_00_DUMMY_27_header);
    .ST07_00_DUMMY_27_header : AT(ST07_00_DUMMY_27_header_ROM_START) SUBALIGN(16)
    {
        ST07_00_DUMMY_27_header_DATA_START = .;
        ST07_00_DUMMY_27_header_s = .;
        build/asm/ST07_00/ovl27__MESS_DUMMY.MSG/ST07_00_DUMMY_27_header.s.o(.data);
        ST07_00_DUMMY_27_header_DATA_END = .;
        ST07_00_DUMMY_27_header_DATA_SIZE = ABSOLUTE(ST07_00_DUMMY_27_header_DATA_END - ST07_00_DUMMY_27_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_00_DUMMY_27_header);
    ST07_00_DUMMY_27_header_ROM_END = __romPos;
    ST07_00_DUMMY_27_header_VRAM_END = .;

    ST07_00_DUMMY_27_ROM_START = __romPos;
    ST07_00_DUMMY_27_VRAM = ADDR(.ST07_00_DUMMY_27);
    .ST07_00_DUMMY_27 0x80153000 : AT(ST07_00_DUMMY_27_ROM_START) SUBALIGN(4)
    {
        ST07_00_DUMMY_27_DATA_START = .;
        DUMMY_27_data__s = .;
        build/asm/ST07_00/ovl27__MESS_DUMMY.MSG/data/DUMMY_27.data.s.o(.data);
        ST07_00_DUMMY_27_DATA_END = .;
        ST07_00_DUMMY_27_DATA_SIZE = ABSOLUTE(ST07_00_DUMMY_27_DATA_END - ST07_00_DUMMY_27_DATA_START);
    }
    __romPos += SIZEOF(.ST07_00_DUMMY_27);
    __romPos = ALIGN(__romPos, 16);
    ST07_00_DUMMY_27_ROM_END = __romPos;
    ST07_00_DUMMY_27_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
