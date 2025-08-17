SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_03_st10_01_8_header_ROM_START = __romPos;
    ST10_03_st10_01_8_header_VRAM = ADDR(.ST10_03_st10_01_8_header);
    .ST10_03_st10_01_8_header : AT(ST10_03_st10_01_8_header_ROM_START) SUBALIGN(16)
    {
        ST10_03_st10_01_8_header_DATA_START = .;
        ST10_03_st10_01_8_header_s = .;
        build/asm/ST10_03/ovl8__mess_st10_01.msg/ST10_03_st10_01_8_header.s.o(.data);
        ST10_03_st10_01_8_header_DATA_END = .;
        ST10_03_st10_01_8_header_DATA_SIZE = ABSOLUTE(ST10_03_st10_01_8_header_DATA_END - ST10_03_st10_01_8_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_03_st10_01_8_header);
    ST10_03_st10_01_8_header_ROM_END = __romPos;
    ST10_03_st10_01_8_header_VRAM_END = .;

    ST10_03_st10_01_8_ROM_START = __romPos;
    ST10_03_st10_01_8_VRAM = ADDR(.ST10_03_st10_01_8);
    .ST10_03_st10_01_8 0x80153000 : AT(ST10_03_st10_01_8_ROM_START) SUBALIGN(4)
    {
        ST10_03_st10_01_8_DATA_START = .;
        st10_01_8_data__s = .;
        build/asm/ST10_03/ovl8__mess_st10_01.msg/data/st10_01_8.data.s.o(.data);
        ST10_03_st10_01_8_DATA_END = .;
        ST10_03_st10_01_8_DATA_SIZE = ABSOLUTE(ST10_03_st10_01_8_DATA_END - ST10_03_st10_01_8_DATA_START);
    }
    __romPos += SIZEOF(.ST10_03_st10_01_8);
    __romPos = ALIGN(__romPos, 16);
    ST10_03_st10_01_8_ROM_END = __romPos;
    ST10_03_st10_01_8_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
