SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_04_st10_04_9_header_ROM_START = __romPos;
    ST10_04_st10_04_9_header_VRAM = ADDR(.ST10_04_st10_04_9_header);
    .ST10_04_st10_04_9_header : AT(ST10_04_st10_04_9_header_ROM_START) SUBALIGN(16)
    {
        ST10_04_st10_04_9_header_DATA_START = .;
        ST10_04_st10_04_9_header_s = .;
        build/asm/ST10_04/ovl9__mess_st10_04.msg/ST10_04_st10_04_9_header.s.o(.data);
        ST10_04_st10_04_9_header_DATA_END = .;
        ST10_04_st10_04_9_header_DATA_SIZE = ABSOLUTE(ST10_04_st10_04_9_header_DATA_END - ST10_04_st10_04_9_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_04_st10_04_9_header);
    ST10_04_st10_04_9_header_ROM_END = __romPos;
    ST10_04_st10_04_9_header_VRAM_END = .;

    ST10_04_st10_04_9_ROM_START = __romPos;
    ST10_04_st10_04_9_VRAM = ADDR(.ST10_04_st10_04_9);
    .ST10_04_st10_04_9 0x80153000 : AT(ST10_04_st10_04_9_ROM_START) SUBALIGN(4)
    {
        ST10_04_st10_04_9_DATA_START = .;
        st10_04_9_data__s = .;
        build/asm/ST10_04/ovl9__mess_st10_04.msg/data/st10_04_9.data.s.o(.data);
        ST10_04_st10_04_9_DATA_END = .;
        ST10_04_st10_04_9_DATA_SIZE = ABSOLUTE(ST10_04_st10_04_9_DATA_END - ST10_04_st10_04_9_DATA_START);
    }
    __romPos += SIZEOF(.ST10_04_st10_04_9);
    __romPos = ALIGN(__romPos, 16);
    ST10_04_st10_04_9_ROM_END = __romPos;
    ST10_04_st10_04_9_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
