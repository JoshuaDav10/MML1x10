SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_00_DUMMY_18_header_ROM_START = __romPos;
    ST15_00_DUMMY_18_header_VRAM = ADDR(.ST15_00_DUMMY_18_header);
    .ST15_00_DUMMY_18_header : AT(ST15_00_DUMMY_18_header_ROM_START) SUBALIGN(16)
    {
        ST15_00_DUMMY_18_header_DATA_START = .;
        ST15_00_DUMMY_18_header_s = .;
        build/asm/ST15_00/ovl18__MESS_DUMMY.MSG/ST15_00_DUMMY_18_header.s.o(.data);
        ST15_00_DUMMY_18_header_DATA_END = .;
        ST15_00_DUMMY_18_header_DATA_SIZE = ABSOLUTE(ST15_00_DUMMY_18_header_DATA_END - ST15_00_DUMMY_18_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_00_DUMMY_18_header);
    ST15_00_DUMMY_18_header_ROM_END = __romPos;
    ST15_00_DUMMY_18_header_VRAM_END = .;

    ST15_00_DUMMY_18_ROM_START = __romPos;
    ST15_00_DUMMY_18_VRAM = ADDR(.ST15_00_DUMMY_18);
    .ST15_00_DUMMY_18 0x80153000 : AT(ST15_00_DUMMY_18_ROM_START) SUBALIGN(4)
    {
        ST15_00_DUMMY_18_DATA_START = .;
        DUMMY_18_data__s = .;
        build/asm/ST15_00/ovl18__MESS_DUMMY.MSG/data/DUMMY_18.data.s.o(.data);
        ST15_00_DUMMY_18_DATA_END = .;
        ST15_00_DUMMY_18_DATA_SIZE = ABSOLUTE(ST15_00_DUMMY_18_DATA_END - ST15_00_DUMMY_18_DATA_START);
    }
    __romPos += SIZEOF(.ST15_00_DUMMY_18);
    __romPos = ALIGN(__romPos, 16);
    ST15_00_DUMMY_18_ROM_END = __romPos;
    ST15_00_DUMMY_18_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
