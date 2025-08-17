SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_00B_st08_00_43_header_ROM_START = __romPos;
    ST08_00B_st08_00_43_header_VRAM = ADDR(.ST08_00B_st08_00_43_header);
    .ST08_00B_st08_00_43_header : AT(ST08_00B_st08_00_43_header_ROM_START) SUBALIGN(16)
    {
        ST08_00B_st08_00_43_header_DATA_START = .;
        ST08_00B_st08_00_43_header_s = .;
        build/asm/ST08_00B/ovl43__mess_st08_00.msg/ST08_00B_st08_00_43_header.s.o(.data);
        ST08_00B_st08_00_43_header_DATA_END = .;
        ST08_00B_st08_00_43_header_DATA_SIZE = ABSOLUTE(ST08_00B_st08_00_43_header_DATA_END - ST08_00B_st08_00_43_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_00B_st08_00_43_header);
    ST08_00B_st08_00_43_header_ROM_END = __romPos;
    ST08_00B_st08_00_43_header_VRAM_END = .;

    ST08_00B_st08_00_43_ROM_START = __romPos;
    ST08_00B_st08_00_43_VRAM = ADDR(.ST08_00B_st08_00_43);
    .ST08_00B_st08_00_43 0x80153000 : AT(ST08_00B_st08_00_43_ROM_START) SUBALIGN(4)
    {
        ST08_00B_st08_00_43_DATA_START = .;
        st08_00_43_data__s = .;
        build/asm/ST08_00B/ovl43__mess_st08_00.msg/data/st08_00_43.data.s.o(.data);
        ST08_00B_st08_00_43_DATA_END = .;
        ST08_00B_st08_00_43_DATA_SIZE = ABSOLUTE(ST08_00B_st08_00_43_DATA_END - ST08_00B_st08_00_43_DATA_START);
    }
    __romPos += SIZEOF(.ST08_00B_st08_00_43);
    __romPos = ALIGN(__romPos, 16);
    ST08_00B_st08_00_43_ROM_END = __romPos;
    ST08_00B_st08_00_43_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
