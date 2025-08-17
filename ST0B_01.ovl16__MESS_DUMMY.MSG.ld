SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0B_01_DUMMY_16_header_ROM_START = __romPos;
    ST0B_01_DUMMY_16_header_VRAM = ADDR(.ST0B_01_DUMMY_16_header);
    .ST0B_01_DUMMY_16_header : AT(ST0B_01_DUMMY_16_header_ROM_START) SUBALIGN(16)
    {
        ST0B_01_DUMMY_16_header_DATA_START = .;
        ST0B_01_DUMMY_16_header_s = .;
        build/asm/ST0B_01/ovl16__MESS_DUMMY.MSG/ST0B_01_DUMMY_16_header.s.o(.data);
        ST0B_01_DUMMY_16_header_DATA_END = .;
        ST0B_01_DUMMY_16_header_DATA_SIZE = ABSOLUTE(ST0B_01_DUMMY_16_header_DATA_END - ST0B_01_DUMMY_16_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_01_DUMMY_16_header);
    ST0B_01_DUMMY_16_header_ROM_END = __romPos;
    ST0B_01_DUMMY_16_header_VRAM_END = .;

    ST0B_01_DUMMY_16_ROM_START = __romPos;
    ST0B_01_DUMMY_16_VRAM = ADDR(.ST0B_01_DUMMY_16);
    .ST0B_01_DUMMY_16 0x80153000 : AT(ST0B_01_DUMMY_16_ROM_START) SUBALIGN(4)
    {
        ST0B_01_DUMMY_16_DATA_START = .;
        DUMMY_16_data__s = .;
        build/asm/ST0B_01/ovl16__MESS_DUMMY.MSG/data/DUMMY_16.data.s.o(.data);
        ST0B_01_DUMMY_16_DATA_END = .;
        ST0B_01_DUMMY_16_DATA_SIZE = ABSOLUTE(ST0B_01_DUMMY_16_DATA_END - ST0B_01_DUMMY_16_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_01_DUMMY_16);
    __romPos = ALIGN(__romPos, 16);
    ST0B_01_DUMMY_16_ROM_END = __romPos;
    ST0B_01_DUMMY_16_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
