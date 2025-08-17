SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_00B_DUMMY_31_header_ROM_START = __romPos;
    ST16_00B_DUMMY_31_header_VRAM = ADDR(.ST16_00B_DUMMY_31_header);
    .ST16_00B_DUMMY_31_header : AT(ST16_00B_DUMMY_31_header_ROM_START) SUBALIGN(16)
    {
        ST16_00B_DUMMY_31_header_DATA_START = .;
        ST16_00B_DUMMY_31_header_s = .;
        build/asm/ST16_00B/ovl31__MESS_DUMMY.MSG/ST16_00B_DUMMY_31_header.s.o(.data);
        ST16_00B_DUMMY_31_header_DATA_END = .;
        ST16_00B_DUMMY_31_header_DATA_SIZE = ABSOLUTE(ST16_00B_DUMMY_31_header_DATA_END - ST16_00B_DUMMY_31_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00B_DUMMY_31_header);
    ST16_00B_DUMMY_31_header_ROM_END = __romPos;
    ST16_00B_DUMMY_31_header_VRAM_END = .;

    ST16_00B_DUMMY_31_ROM_START = __romPos;
    ST16_00B_DUMMY_31_VRAM = ADDR(.ST16_00B_DUMMY_31);
    .ST16_00B_DUMMY_31 0x80153000 : AT(ST16_00B_DUMMY_31_ROM_START) SUBALIGN(4)
    {
        ST16_00B_DUMMY_31_DATA_START = .;
        DUMMY_31_data__s = .;
        build/asm/ST16_00B/ovl31__MESS_DUMMY.MSG/data/DUMMY_31.data.s.o(.data);
        ST16_00B_DUMMY_31_DATA_END = .;
        ST16_00B_DUMMY_31_DATA_SIZE = ABSOLUTE(ST16_00B_DUMMY_31_DATA_END - ST16_00B_DUMMY_31_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00B_DUMMY_31);
    __romPos = ALIGN(__romPos, 16);
    ST16_00B_DUMMY_31_ROM_END = __romPos;
    ST16_00B_DUMMY_31_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
