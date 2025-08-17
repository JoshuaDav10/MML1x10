SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_03_DUMMY_3_header_ROM_START = __romPos;
    ST0D_03_DUMMY_3_header_VRAM = ADDR(.ST0D_03_DUMMY_3_header);
    .ST0D_03_DUMMY_3_header : AT(ST0D_03_DUMMY_3_header_ROM_START) SUBALIGN(16)
    {
        ST0D_03_DUMMY_3_header_DATA_START = .;
        ST0D_03_DUMMY_3_header_s = .;
        build/asm/ST0D_03/ovl3__MESS_DUMMY.MSG/ST0D_03_DUMMY_3_header.s.o(.data);
        ST0D_03_DUMMY_3_header_DATA_END = .;
        ST0D_03_DUMMY_3_header_DATA_SIZE = ABSOLUTE(ST0D_03_DUMMY_3_header_DATA_END - ST0D_03_DUMMY_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_03_DUMMY_3_header);
    ST0D_03_DUMMY_3_header_ROM_END = __romPos;
    ST0D_03_DUMMY_3_header_VRAM_END = .;

    ST0D_03_DUMMY_3_ROM_START = __romPos;
    ST0D_03_DUMMY_3_VRAM = ADDR(.ST0D_03_DUMMY_3);
    .ST0D_03_DUMMY_3 0x80153000 : AT(ST0D_03_DUMMY_3_ROM_START) SUBALIGN(4)
    {
        ST0D_03_DUMMY_3_DATA_START = .;
        DUMMY_3_data__s = .;
        build/asm/ST0D_03/ovl3__MESS_DUMMY.MSG/data/DUMMY_3.data.s.o(.data);
        ST0D_03_DUMMY_3_DATA_END = .;
        ST0D_03_DUMMY_3_DATA_SIZE = ABSOLUTE(ST0D_03_DUMMY_3_DATA_END - ST0D_03_DUMMY_3_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_03_DUMMY_3);
    __romPos = ALIGN(__romPos, 16);
    ST0D_03_DUMMY_3_ROM_END = __romPos;
    ST0D_03_DUMMY_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
