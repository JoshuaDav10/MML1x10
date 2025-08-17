SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_03_DUMMY_12_header_ROM_START = __romPos;
    ST06_03_DUMMY_12_header_VRAM = ADDR(.ST06_03_DUMMY_12_header);
    .ST06_03_DUMMY_12_header : AT(ST06_03_DUMMY_12_header_ROM_START) SUBALIGN(16)
    {
        ST06_03_DUMMY_12_header_DATA_START = .;
        ST06_03_DUMMY_12_header_s = .;
        build/asm/ST06_03/ovl12__MESS_DUMMY.MSG/ST06_03_DUMMY_12_header.s.o(.data);
        ST06_03_DUMMY_12_header_DATA_END = .;
        ST06_03_DUMMY_12_header_DATA_SIZE = ABSOLUTE(ST06_03_DUMMY_12_header_DATA_END - ST06_03_DUMMY_12_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_03_DUMMY_12_header);
    ST06_03_DUMMY_12_header_ROM_END = __romPos;
    ST06_03_DUMMY_12_header_VRAM_END = .;

    ST06_03_DUMMY_12_ROM_START = __romPos;
    ST06_03_DUMMY_12_VRAM = ADDR(.ST06_03_DUMMY_12);
    .ST06_03_DUMMY_12 0x80153000 : AT(ST06_03_DUMMY_12_ROM_START) SUBALIGN(4)
    {
        ST06_03_DUMMY_12_DATA_START = .;
        DUMMY_12_data__s = .;
        build/asm/ST06_03/ovl12__MESS_DUMMY.MSG/data/DUMMY_12.data.s.o(.data);
        ST06_03_DUMMY_12_DATA_END = .;
        ST06_03_DUMMY_12_DATA_SIZE = ABSOLUTE(ST06_03_DUMMY_12_DATA_END - ST06_03_DUMMY_12_DATA_START);
    }
    __romPos += SIZEOF(.ST06_03_DUMMY_12);
    __romPos = ALIGN(__romPos, 16);
    ST06_03_DUMMY_12_ROM_END = __romPos;
    ST06_03_DUMMY_12_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
