SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_02_st05_02_31_header_ROM_START = __romPos;
    ST05_02_st05_02_31_header_VRAM = ADDR(.ST05_02_st05_02_31_header);
    .ST05_02_st05_02_31_header : AT(ST05_02_st05_02_31_header_ROM_START) SUBALIGN(16)
    {
        ST05_02_st05_02_31_header_DATA_START = .;
        ST05_02_st05_02_31_header_s = .;
        build/asm/ST05_02/ovl31__mess_st05_02.msg/ST05_02_st05_02_31_header.s.o(.data);
        ST05_02_st05_02_31_header_DATA_END = .;
        ST05_02_st05_02_31_header_DATA_SIZE = ABSOLUTE(ST05_02_st05_02_31_header_DATA_END - ST05_02_st05_02_31_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_02_st05_02_31_header);
    ST05_02_st05_02_31_header_ROM_END = __romPos;
    ST05_02_st05_02_31_header_VRAM_END = .;

    ST05_02_st05_02_31_ROM_START = __romPos;
    ST05_02_st05_02_31_VRAM = ADDR(.ST05_02_st05_02_31);
    .ST05_02_st05_02_31 0x80153000 : AT(ST05_02_st05_02_31_ROM_START) SUBALIGN(4)
    {
        ST05_02_st05_02_31_DATA_START = .;
        st05_02_31_data__s = .;
        build/asm/ST05_02/ovl31__mess_st05_02.msg/data/st05_02_31.data.s.o(.data);
        ST05_02_st05_02_31_DATA_END = .;
        ST05_02_st05_02_31_DATA_SIZE = ABSOLUTE(ST05_02_st05_02_31_DATA_END - ST05_02_st05_02_31_DATA_START);
    }
    __romPos += SIZEOF(.ST05_02_st05_02_31);
    __romPos = ALIGN(__romPos, 16);
    ST05_02_st05_02_31_ROM_END = __romPos;
    ST05_02_st05_02_31_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
