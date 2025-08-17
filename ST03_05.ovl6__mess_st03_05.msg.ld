SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_05_st03_05_6_header_ROM_START = __romPos;
    ST03_05_st03_05_6_header_VRAM = ADDR(.ST03_05_st03_05_6_header);
    .ST03_05_st03_05_6_header : AT(ST03_05_st03_05_6_header_ROM_START) SUBALIGN(16)
    {
        ST03_05_st03_05_6_header_DATA_START = .;
        ST03_05_st03_05_6_header_s = .;
        build/asm/ST03_05/ovl6__mess_st03_05.msg/ST03_05_st03_05_6_header.s.o(.data);
        ST03_05_st03_05_6_header_DATA_END = .;
        ST03_05_st03_05_6_header_DATA_SIZE = ABSOLUTE(ST03_05_st03_05_6_header_DATA_END - ST03_05_st03_05_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_05_st03_05_6_header);
    ST03_05_st03_05_6_header_ROM_END = __romPos;
    ST03_05_st03_05_6_header_VRAM_END = .;

    ST03_05_st03_05_6_ROM_START = __romPos;
    ST03_05_st03_05_6_VRAM = ADDR(.ST03_05_st03_05_6);
    .ST03_05_st03_05_6 0x80153000 : AT(ST03_05_st03_05_6_ROM_START) SUBALIGN(4)
    {
        ST03_05_st03_05_6_DATA_START = .;
        st03_05_6_data__s = .;
        build/asm/ST03_05/ovl6__mess_st03_05.msg/data/st03_05_6.data.s.o(.data);
        ST03_05_st03_05_6_DATA_END = .;
        ST03_05_st03_05_6_DATA_SIZE = ABSOLUTE(ST03_05_st03_05_6_DATA_END - ST03_05_st03_05_6_DATA_START);
    }
    __romPos += SIZEOF(.ST03_05_st03_05_6);
    __romPos = ALIGN(__romPos, 16);
    ST03_05_st03_05_6_ROM_END = __romPos;
    ST03_05_st03_05_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
