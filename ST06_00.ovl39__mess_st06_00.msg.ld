SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_00_st06_00_39_header_ROM_START = __romPos;
    ST06_00_st06_00_39_header_VRAM = ADDR(.ST06_00_st06_00_39_header);
    .ST06_00_st06_00_39_header : AT(ST06_00_st06_00_39_header_ROM_START) SUBALIGN(16)
    {
        ST06_00_st06_00_39_header_DATA_START = .;
        ST06_00_st06_00_39_header_s = .;
        build/asm/ST06_00/ovl39__mess_st06_00.msg/ST06_00_st06_00_39_header.s.o(.data);
        ST06_00_st06_00_39_header_DATA_END = .;
        ST06_00_st06_00_39_header_DATA_SIZE = ABSOLUTE(ST06_00_st06_00_39_header_DATA_END - ST06_00_st06_00_39_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_00_st06_00_39_header);
    ST06_00_st06_00_39_header_ROM_END = __romPos;
    ST06_00_st06_00_39_header_VRAM_END = .;

    ST06_00_st06_00_39_ROM_START = __romPos;
    ST06_00_st06_00_39_VRAM = ADDR(.ST06_00_st06_00_39);
    .ST06_00_st06_00_39 0x80153000 : AT(ST06_00_st06_00_39_ROM_START) SUBALIGN(4)
    {
        ST06_00_st06_00_39_DATA_START = .;
        st06_00_39_data__s = .;
        build/asm/ST06_00/ovl39__mess_st06_00.msg/data/st06_00_39.data.s.o(.data);
        ST06_00_st06_00_39_DATA_END = .;
        ST06_00_st06_00_39_DATA_SIZE = ABSOLUTE(ST06_00_st06_00_39_DATA_END - ST06_00_st06_00_39_DATA_START);
    }
    __romPos += SIZEOF(.ST06_00_st06_00_39);
    __romPos = ALIGN(__romPos, 16);
    ST06_00_st06_00_39_ROM_END = __romPos;
    ST06_00_st06_00_39_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
