SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_07_st03_07_21_header_ROM_START = __romPos;
    ST03_07_st03_07_21_header_VRAM = ADDR(.ST03_07_st03_07_21_header);
    .ST03_07_st03_07_21_header : AT(ST03_07_st03_07_21_header_ROM_START) SUBALIGN(16)
    {
        ST03_07_st03_07_21_header_DATA_START = .;
        ST03_07_st03_07_21_header_s = .;
        build/asm/ST03_07/ovl21__mess_st03_07.msg/ST03_07_st03_07_21_header.s.o(.data);
        ST03_07_st03_07_21_header_DATA_END = .;
        ST03_07_st03_07_21_header_DATA_SIZE = ABSOLUTE(ST03_07_st03_07_21_header_DATA_END - ST03_07_st03_07_21_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_07_st03_07_21_header);
    ST03_07_st03_07_21_header_ROM_END = __romPos;
    ST03_07_st03_07_21_header_VRAM_END = .;

    ST03_07_st03_07_21_ROM_START = __romPos;
    ST03_07_st03_07_21_VRAM = ADDR(.ST03_07_st03_07_21);
    .ST03_07_st03_07_21 0x80153000 : AT(ST03_07_st03_07_21_ROM_START) SUBALIGN(4)
    {
        ST03_07_st03_07_21_DATA_START = .;
        st03_07_21_data__s = .;
        build/asm/ST03_07/ovl21__mess_st03_07.msg/data/st03_07_21.data.s.o(.data);
        ST03_07_st03_07_21_DATA_END = .;
        ST03_07_st03_07_21_DATA_SIZE = ABSOLUTE(ST03_07_st03_07_21_DATA_END - ST03_07_st03_07_21_DATA_START);
    }
    __romPos += SIZEOF(.ST03_07_st03_07_21);
    __romPos = ALIGN(__romPos, 16);
    ST03_07_st03_07_21_ROM_END = __romPos;
    ST03_07_st03_07_21_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
