SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_00_DUMMY_30_header_ROM_START = __romPos;
    ST16_00_DUMMY_30_header_VRAM = ADDR(.ST16_00_DUMMY_30_header);
    .ST16_00_DUMMY_30_header : AT(ST16_00_DUMMY_30_header_ROM_START) SUBALIGN(16)
    {
        ST16_00_DUMMY_30_header_DATA_START = .;
        ST16_00_DUMMY_30_header_s = .;
        build/asm/ST16_00/ovl30__MESS_DUMMY.MSG/ST16_00_DUMMY_30_header.s.o(.data);
        ST16_00_DUMMY_30_header_DATA_END = .;
        ST16_00_DUMMY_30_header_DATA_SIZE = ABSOLUTE(ST16_00_DUMMY_30_header_DATA_END - ST16_00_DUMMY_30_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00_DUMMY_30_header);
    ST16_00_DUMMY_30_header_ROM_END = __romPos;
    ST16_00_DUMMY_30_header_VRAM_END = .;

    ST16_00_DUMMY_30_ROM_START = __romPos;
    ST16_00_DUMMY_30_VRAM = ADDR(.ST16_00_DUMMY_30);
    .ST16_00_DUMMY_30 0x80153000 : AT(ST16_00_DUMMY_30_ROM_START) SUBALIGN(4)
    {
        ST16_00_DUMMY_30_DATA_START = .;
        DUMMY_30_data__s = .;
        build/asm/ST16_00/ovl30__MESS_DUMMY.MSG/data/DUMMY_30.data.s.o(.data);
        ST16_00_DUMMY_30_DATA_END = .;
        ST16_00_DUMMY_30_DATA_SIZE = ABSOLUTE(ST16_00_DUMMY_30_DATA_END - ST16_00_DUMMY_30_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00_DUMMY_30);
    __romPos = ALIGN(__romPos, 16);
    ST16_00_DUMMY_30_ROM_END = __romPos;
    ST16_00_DUMMY_30_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
