SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_02_st06_02_41_header_ROM_START = __romPos;
    ST06_02_st06_02_41_header_VRAM = ADDR(.ST06_02_st06_02_41_header);
    .ST06_02_st06_02_41_header : AT(ST06_02_st06_02_41_header_ROM_START) SUBALIGN(16)
    {
        ST06_02_st06_02_41_header_DATA_START = .;
        ST06_02_st06_02_41_header_s = .;
        build/asm/ST06_02/ovl41__mess_st06_02.msg/ST06_02_st06_02_41_header.s.o(.data);
        ST06_02_st06_02_41_header_DATA_END = .;
        ST06_02_st06_02_41_header_DATA_SIZE = ABSOLUTE(ST06_02_st06_02_41_header_DATA_END - ST06_02_st06_02_41_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_st06_02_41_header);
    ST06_02_st06_02_41_header_ROM_END = __romPos;
    ST06_02_st06_02_41_header_VRAM_END = .;

    ST06_02_st06_02_41_ROM_START = __romPos;
    ST06_02_st06_02_41_VRAM = ADDR(.ST06_02_st06_02_41);
    .ST06_02_st06_02_41 0x80153000 : AT(ST06_02_st06_02_41_ROM_START) SUBALIGN(4)
    {
        ST06_02_st06_02_41_DATA_START = .;
        st06_02_41_data__s = .;
        build/asm/ST06_02/ovl41__mess_st06_02.msg/data/st06_02_41.data.s.o(.data);
        ST06_02_st06_02_41_DATA_END = .;
        ST06_02_st06_02_41_DATA_SIZE = ABSOLUTE(ST06_02_st06_02_41_DATA_END - ST06_02_st06_02_41_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_st06_02_41);
    __romPos = ALIGN(__romPos, 16);
    ST06_02_st06_02_41_ROM_END = __romPos;
    ST06_02_st06_02_41_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
