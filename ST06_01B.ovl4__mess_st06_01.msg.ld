SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_01B_st06_01_4_header_ROM_START = __romPos;
    ST06_01B_st06_01_4_header_VRAM = ADDR(.ST06_01B_st06_01_4_header);
    .ST06_01B_st06_01_4_header : AT(ST06_01B_st06_01_4_header_ROM_START) SUBALIGN(16)
    {
        ST06_01B_st06_01_4_header_DATA_START = .;
        ST06_01B_st06_01_4_header_s = .;
        build/asm/ST06_01B/ovl4__mess_st06_01.msg/ST06_01B_st06_01_4_header.s.o(.data);
        ST06_01B_st06_01_4_header_DATA_END = .;
        ST06_01B_st06_01_4_header_DATA_SIZE = ABSOLUTE(ST06_01B_st06_01_4_header_DATA_END - ST06_01B_st06_01_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_01B_st06_01_4_header);
    ST06_01B_st06_01_4_header_ROM_END = __romPos;
    ST06_01B_st06_01_4_header_VRAM_END = .;

    ST06_01B_st06_01_4_ROM_START = __romPos;
    ST06_01B_st06_01_4_VRAM = ADDR(.ST06_01B_st06_01_4);
    .ST06_01B_st06_01_4 0x80153000 : AT(ST06_01B_st06_01_4_ROM_START) SUBALIGN(4)
    {
        ST06_01B_st06_01_4_DATA_START = .;
        st06_01_4_data__s = .;
        build/asm/ST06_01B/ovl4__mess_st06_01.msg/data/st06_01_4.data.s.o(.data);
        ST06_01B_st06_01_4_DATA_END = .;
        ST06_01B_st06_01_4_DATA_SIZE = ABSOLUTE(ST06_01B_st06_01_4_DATA_END - ST06_01B_st06_01_4_DATA_START);
    }
    __romPos += SIZEOF(.ST06_01B_st06_01_4);
    __romPos = ALIGN(__romPos, 16);
    ST06_01B_st06_01_4_ROM_END = __romPos;
    ST06_01B_st06_01_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
