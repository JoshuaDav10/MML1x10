SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_04_st06_04_13_header_ROM_START = __romPos;
    ST06_04_st06_04_13_header_VRAM = ADDR(.ST06_04_st06_04_13_header);
    .ST06_04_st06_04_13_header : AT(ST06_04_st06_04_13_header_ROM_START) SUBALIGN(16)
    {
        ST06_04_st06_04_13_header_DATA_START = .;
        ST06_04_st06_04_13_header_s = .;
        build/asm/ST06_04/ovl13__mess_st06_04.msg/ST06_04_st06_04_13_header.s.o(.data);
        ST06_04_st06_04_13_header_DATA_END = .;
        ST06_04_st06_04_13_header_DATA_SIZE = ABSOLUTE(ST06_04_st06_04_13_header_DATA_END - ST06_04_st06_04_13_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_04_st06_04_13_header);
    ST06_04_st06_04_13_header_ROM_END = __romPos;
    ST06_04_st06_04_13_header_VRAM_END = .;

    ST06_04_st06_04_13_ROM_START = __romPos;
    ST06_04_st06_04_13_VRAM = ADDR(.ST06_04_st06_04_13);
    .ST06_04_st06_04_13 0x80153000 : AT(ST06_04_st06_04_13_ROM_START) SUBALIGN(4)
    {
        ST06_04_st06_04_13_DATA_START = .;
        st06_04_13_data__s = .;
        build/asm/ST06_04/ovl13__mess_st06_04.msg/data/st06_04_13.data.s.o(.data);
        ST06_04_st06_04_13_DATA_END = .;
        ST06_04_st06_04_13_DATA_SIZE = ABSOLUTE(ST06_04_st06_04_13_DATA_END - ST06_04_st06_04_13_DATA_START);
    }
    __romPos += SIZEOF(.ST06_04_st06_04_13);
    __romPos = ALIGN(__romPos, 16);
    ST06_04_st06_04_13_ROM_END = __romPos;
    ST06_04_st06_04_13_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
