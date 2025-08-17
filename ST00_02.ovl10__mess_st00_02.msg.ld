SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_02_st00_02_10_header_ROM_START = __romPos;
    ST00_02_st00_02_10_header_VRAM = ADDR(.ST00_02_st00_02_10_header);
    .ST00_02_st00_02_10_header : AT(ST00_02_st00_02_10_header_ROM_START) SUBALIGN(16)
    {
        ST00_02_st00_02_10_header_DATA_START = .;
        ST00_02_st00_02_10_header_s = .;
        build/asm/ST00_02/ovl10__mess_st00_02.msg/ST00_02_st00_02_10_header.s.o(.data);
        ST00_02_st00_02_10_header_DATA_END = .;
        ST00_02_st00_02_10_header_DATA_SIZE = ABSOLUTE(ST00_02_st00_02_10_header_DATA_END - ST00_02_st00_02_10_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_02_st00_02_10_header);
    ST00_02_st00_02_10_header_ROM_END = __romPos;
    ST00_02_st00_02_10_header_VRAM_END = .;

    ST00_02_st00_02_10_ROM_START = __romPos;
    ST00_02_st00_02_10_VRAM = ADDR(.ST00_02_st00_02_10);
    .ST00_02_st00_02_10 0x80153000 : AT(ST00_02_st00_02_10_ROM_START) SUBALIGN(4)
    {
        ST00_02_st00_02_10_DATA_START = .;
        st00_02_10_data__s = .;
        build/asm/ST00_02/ovl10__mess_st00_02.msg/data/st00_02_10.data.s.o(.data);
        ST00_02_st00_02_10_DATA_END = .;
        ST00_02_st00_02_10_DATA_SIZE = ABSOLUTE(ST00_02_st00_02_10_DATA_END - ST00_02_st00_02_10_DATA_START);
    }
    __romPos += SIZEOF(.ST00_02_st00_02_10);
    __romPos = ALIGN(__romPos, 16);
    ST00_02_st00_02_10_ROM_END = __romPos;
    ST00_02_st00_02_10_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
