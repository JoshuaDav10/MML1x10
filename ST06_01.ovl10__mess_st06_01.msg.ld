SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_01_st06_01_10_header_ROM_START = __romPos;
    ST06_01_st06_01_10_header_VRAM = ADDR(.ST06_01_st06_01_10_header);
    .ST06_01_st06_01_10_header : AT(ST06_01_st06_01_10_header_ROM_START) SUBALIGN(16)
    {
        ST06_01_st06_01_10_header_DATA_START = .;
        ST06_01_st06_01_10_header_s = .;
        build/asm/ST06_01/ovl10__mess_st06_01.msg/ST06_01_st06_01_10_header.s.o(.data);
        ST06_01_st06_01_10_header_DATA_END = .;
        ST06_01_st06_01_10_header_DATA_SIZE = ABSOLUTE(ST06_01_st06_01_10_header_DATA_END - ST06_01_st06_01_10_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_01_st06_01_10_header);
    ST06_01_st06_01_10_header_ROM_END = __romPos;
    ST06_01_st06_01_10_header_VRAM_END = .;

    ST06_01_st06_01_10_ROM_START = __romPos;
    ST06_01_st06_01_10_VRAM = ADDR(.ST06_01_st06_01_10);
    .ST06_01_st06_01_10 0x80153000 : AT(ST06_01_st06_01_10_ROM_START) SUBALIGN(4)
    {
        ST06_01_st06_01_10_DATA_START = .;
        st06_01_10_data__s = .;
        build/asm/ST06_01/ovl10__mess_st06_01.msg/data/st06_01_10.data.s.o(.data);
        ST06_01_st06_01_10_DATA_END = .;
        ST06_01_st06_01_10_DATA_SIZE = ABSOLUTE(ST06_01_st06_01_10_DATA_END - ST06_01_st06_01_10_DATA_START);
    }
    __romPos += SIZEOF(.ST06_01_st06_01_10);
    __romPos = ALIGN(__romPos, 16);
    ST06_01_st06_01_10_ROM_END = __romPos;
    ST06_01_st06_01_10_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
