SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_02_st10_01_6_header_ROM_START = __romPos;
    ST10_02_st10_01_6_header_VRAM = ADDR(.ST10_02_st10_01_6_header);
    .ST10_02_st10_01_6_header : AT(ST10_02_st10_01_6_header_ROM_START) SUBALIGN(16)
    {
        ST10_02_st10_01_6_header_DATA_START = .;
        ST10_02_st10_01_6_header_s = .;
        build/asm/ST10_02/ovl6__mess_st10_01.msg/ST10_02_st10_01_6_header.s.o(.data);
        ST10_02_st10_01_6_header_DATA_END = .;
        ST10_02_st10_01_6_header_DATA_SIZE = ABSOLUTE(ST10_02_st10_01_6_header_DATA_END - ST10_02_st10_01_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_02_st10_01_6_header);
    ST10_02_st10_01_6_header_ROM_END = __romPos;
    ST10_02_st10_01_6_header_VRAM_END = .;

    ST10_02_st10_01_6_ROM_START = __romPos;
    ST10_02_st10_01_6_VRAM = ADDR(.ST10_02_st10_01_6);
    .ST10_02_st10_01_6 0x80153000 : AT(ST10_02_st10_01_6_ROM_START) SUBALIGN(4)
    {
        ST10_02_st10_01_6_DATA_START = .;
        st10_01_6_data__s = .;
        build/asm/ST10_02/ovl6__mess_st10_01.msg/data/st10_01_6.data.s.o(.data);
        ST10_02_st10_01_6_DATA_END = .;
        ST10_02_st10_01_6_DATA_SIZE = ABSOLUTE(ST10_02_st10_01_6_DATA_END - ST10_02_st10_01_6_DATA_START);
    }
    __romPos += SIZEOF(.ST10_02_st10_01_6);
    __romPos = ALIGN(__romPos, 16);
    ST10_02_st10_01_6_ROM_END = __romPos;
    ST10_02_st10_01_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
