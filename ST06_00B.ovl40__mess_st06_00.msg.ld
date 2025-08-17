SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_00B_st06_00_40_header_ROM_START = __romPos;
    ST06_00B_st06_00_40_header_VRAM = ADDR(.ST06_00B_st06_00_40_header);
    .ST06_00B_st06_00_40_header : AT(ST06_00B_st06_00_40_header_ROM_START) SUBALIGN(16)
    {
        ST06_00B_st06_00_40_header_DATA_START = .;
        ST06_00B_st06_00_40_header_s = .;
        build/asm/ST06_00B/ovl40__mess_st06_00.msg/ST06_00B_st06_00_40_header.s.o(.data);
        ST06_00B_st06_00_40_header_DATA_END = .;
        ST06_00B_st06_00_40_header_DATA_SIZE = ABSOLUTE(ST06_00B_st06_00_40_header_DATA_END - ST06_00B_st06_00_40_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_00B_st06_00_40_header);
    ST06_00B_st06_00_40_header_ROM_END = __romPos;
    ST06_00B_st06_00_40_header_VRAM_END = .;

    ST06_00B_st06_00_40_ROM_START = __romPos;
    ST06_00B_st06_00_40_VRAM = ADDR(.ST06_00B_st06_00_40);
    .ST06_00B_st06_00_40 0x80153000 : AT(ST06_00B_st06_00_40_ROM_START) SUBALIGN(4)
    {
        ST06_00B_st06_00_40_DATA_START = .;
        st06_00_40_data__s = .;
        build/asm/ST06_00B/ovl40__mess_st06_00.msg/data/st06_00_40.data.s.o(.data);
        ST06_00B_st06_00_40_DATA_END = .;
        ST06_00B_st06_00_40_DATA_SIZE = ABSOLUTE(ST06_00B_st06_00_40_DATA_END - ST06_00B_st06_00_40_DATA_START);
    }
    __romPos += SIZEOF(.ST06_00B_st06_00_40);
    __romPos = ALIGN(__romPos, 16);
    ST06_00B_st06_00_40_ROM_END = __romPos;
    ST06_00B_st06_00_40_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
