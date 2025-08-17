SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1E_DUMMY_44_header_ROM_START = __romPos;
    ST1E_DUMMY_44_header_VRAM = ADDR(.ST1E_DUMMY_44_header);
    .ST1E_DUMMY_44_header : AT(ST1E_DUMMY_44_header_ROM_START) SUBALIGN(16)
    {
        ST1E_DUMMY_44_header_DATA_START = .;
        ST1E_DUMMY_44_header_s = .;
        build/asm/ST1E/ovl44__MESS_DUMMY.MSG/ST1E_DUMMY_44_header.s.o(.data);
        ST1E_DUMMY_44_header_DATA_END = .;
        ST1E_DUMMY_44_header_DATA_SIZE = ABSOLUTE(ST1E_DUMMY_44_header_DATA_END - ST1E_DUMMY_44_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_DUMMY_44_header);
    ST1E_DUMMY_44_header_ROM_END = __romPos;
    ST1E_DUMMY_44_header_VRAM_END = .;

    ST1E_DUMMY_44_ROM_START = __romPos;
    ST1E_DUMMY_44_VRAM = ADDR(.ST1E_DUMMY_44);
    .ST1E_DUMMY_44 0x80153000 : AT(ST1E_DUMMY_44_ROM_START) SUBALIGN(4)
    {
        ST1E_DUMMY_44_DATA_START = .;
        DUMMY_44_data__s = .;
        build/asm/ST1E/ovl44__MESS_DUMMY.MSG/data/DUMMY_44.data.s.o(.data);
        ST1E_DUMMY_44_DATA_END = .;
        ST1E_DUMMY_44_DATA_SIZE = ABSOLUTE(ST1E_DUMMY_44_DATA_END - ST1E_DUMMY_44_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_DUMMY_44);
    __romPos = ALIGN(__romPos, 16);
    ST1E_DUMMY_44_ROM_END = __romPos;
    ST1E_DUMMY_44_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
