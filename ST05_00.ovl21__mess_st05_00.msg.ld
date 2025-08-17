SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_00_st05_00_21_header_ROM_START = __romPos;
    ST05_00_st05_00_21_header_VRAM = ADDR(.ST05_00_st05_00_21_header);
    .ST05_00_st05_00_21_header : AT(ST05_00_st05_00_21_header_ROM_START) SUBALIGN(16)
    {
        ST05_00_st05_00_21_header_DATA_START = .;
        ST05_00_st05_00_21_header_s = .;
        build/asm/ST05_00/ovl21__mess_st05_00.msg/ST05_00_st05_00_21_header.s.o(.data);
        ST05_00_st05_00_21_header_DATA_END = .;
        ST05_00_st05_00_21_header_DATA_SIZE = ABSOLUTE(ST05_00_st05_00_21_header_DATA_END - ST05_00_st05_00_21_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_00_st05_00_21_header);
    ST05_00_st05_00_21_header_ROM_END = __romPos;
    ST05_00_st05_00_21_header_VRAM_END = .;

    ST05_00_st05_00_21_ROM_START = __romPos;
    ST05_00_st05_00_21_VRAM = ADDR(.ST05_00_st05_00_21);
    .ST05_00_st05_00_21 0x80153000 : AT(ST05_00_st05_00_21_ROM_START) SUBALIGN(4)
    {
        ST05_00_st05_00_21_DATA_START = .;
        st05_00_21_data__s = .;
        build/asm/ST05_00/ovl21__mess_st05_00.msg/data/st05_00_21.data.s.o(.data);
        ST05_00_st05_00_21_DATA_END = .;
        ST05_00_st05_00_21_DATA_SIZE = ABSOLUTE(ST05_00_st05_00_21_DATA_END - ST05_00_st05_00_21_DATA_START);
    }
    __romPos += SIZEOF(.ST05_00_st05_00_21);
    __romPos = ALIGN(__romPos, 16);
    ST05_00_st05_00_21_ROM_END = __romPos;
    ST05_00_st05_00_21_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
