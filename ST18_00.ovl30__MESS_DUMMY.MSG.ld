SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_00_DUMMY_30_header_ROM_START = __romPos;
    ST18_00_DUMMY_30_header_VRAM = ADDR(.ST18_00_DUMMY_30_header);
    .ST18_00_DUMMY_30_header : AT(ST18_00_DUMMY_30_header_ROM_START) SUBALIGN(16)
    {
        ST18_00_DUMMY_30_header_DATA_START = .;
        ST18_00_DUMMY_30_header_s = .;
        build/asm/ST18_00/ovl30__MESS_DUMMY.MSG/ST18_00_DUMMY_30_header.s.o(.data);
        ST18_00_DUMMY_30_header_DATA_END = .;
        ST18_00_DUMMY_30_header_DATA_SIZE = ABSOLUTE(ST18_00_DUMMY_30_header_DATA_END - ST18_00_DUMMY_30_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_00_DUMMY_30_header);
    ST18_00_DUMMY_30_header_ROM_END = __romPos;
    ST18_00_DUMMY_30_header_VRAM_END = .;

    ST18_00_DUMMY_30_ROM_START = __romPos;
    ST18_00_DUMMY_30_VRAM = ADDR(.ST18_00_DUMMY_30);
    .ST18_00_DUMMY_30 0x80153000 : AT(ST18_00_DUMMY_30_ROM_START) SUBALIGN(4)
    {
        ST18_00_DUMMY_30_DATA_START = .;
        DUMMY_30_data__s = .;
        build/asm/ST18_00/ovl30__MESS_DUMMY.MSG/data/DUMMY_30.data.s.o(.data);
        ST18_00_DUMMY_30_DATA_END = .;
        ST18_00_DUMMY_30_DATA_SIZE = ABSOLUTE(ST18_00_DUMMY_30_DATA_END - ST18_00_DUMMY_30_DATA_START);
    }
    __romPos += SIZEOF(.ST18_00_DUMMY_30);
    __romPos = ALIGN(__romPos, 16);
    ST18_00_DUMMY_30_ROM_END = __romPos;
    ST18_00_DUMMY_30_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
