SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_01_st00_01_9_header_ROM_START = __romPos;
    ST00_01_st00_01_9_header_VRAM = ADDR(.ST00_01_st00_01_9_header);
    .ST00_01_st00_01_9_header : AT(ST00_01_st00_01_9_header_ROM_START) SUBALIGN(16)
    {
        ST00_01_st00_01_9_header_DATA_START = .;
        ST00_01_st00_01_9_header_s = .;
        build/asm/ST00_01/ovl9__mess_st00_01.msg/ST00_01_st00_01_9_header.s.o(.data);
        ST00_01_st00_01_9_header_DATA_END = .;
        ST00_01_st00_01_9_header_DATA_SIZE = ABSOLUTE(ST00_01_st00_01_9_header_DATA_END - ST00_01_st00_01_9_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_01_st00_01_9_header);
    ST00_01_st00_01_9_header_ROM_END = __romPos;
    ST00_01_st00_01_9_header_VRAM_END = .;

    ST00_01_st00_01_9_ROM_START = __romPos;
    ST00_01_st00_01_9_VRAM = ADDR(.ST00_01_st00_01_9);
    .ST00_01_st00_01_9 0x80153000 : AT(ST00_01_st00_01_9_ROM_START) SUBALIGN(4)
    {
        ST00_01_st00_01_9_DATA_START = .;
        st00_01_9_data__s = .;
        build/asm/ST00_01/ovl9__mess_st00_01.msg/data/st00_01_9.data.s.o(.data);
        ST00_01_st00_01_9_DATA_END = .;
        ST00_01_st00_01_9_DATA_SIZE = ABSOLUTE(ST00_01_st00_01_9_DATA_END - ST00_01_st00_01_9_DATA_START);
    }
    __romPos += SIZEOF(.ST00_01_st00_01_9);
    __romPos = ALIGN(__romPos, 16);
    ST00_01_st00_01_9_ROM_END = __romPos;
    ST00_01_st00_01_9_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
