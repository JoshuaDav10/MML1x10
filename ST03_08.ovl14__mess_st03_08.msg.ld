SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_08_st03_08_14_header_ROM_START = __romPos;
    ST03_08_st03_08_14_header_VRAM = ADDR(.ST03_08_st03_08_14_header);
    .ST03_08_st03_08_14_header : AT(ST03_08_st03_08_14_header_ROM_START) SUBALIGN(16)
    {
        ST03_08_st03_08_14_header_DATA_START = .;
        ST03_08_st03_08_14_header_s = .;
        build/asm/ST03_08/ovl14__mess_st03_08.msg/ST03_08_st03_08_14_header.s.o(.data);
        ST03_08_st03_08_14_header_DATA_END = .;
        ST03_08_st03_08_14_header_DATA_SIZE = ABSOLUTE(ST03_08_st03_08_14_header_DATA_END - ST03_08_st03_08_14_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_08_st03_08_14_header);
    ST03_08_st03_08_14_header_ROM_END = __romPos;
    ST03_08_st03_08_14_header_VRAM_END = .;

    ST03_08_st03_08_14_ROM_START = __romPos;
    ST03_08_st03_08_14_VRAM = ADDR(.ST03_08_st03_08_14);
    .ST03_08_st03_08_14 0x80153000 : AT(ST03_08_st03_08_14_ROM_START) SUBALIGN(4)
    {
        ST03_08_st03_08_14_DATA_START = .;
        st03_08_14_data__s = .;
        build/asm/ST03_08/ovl14__mess_st03_08.msg/data/st03_08_14.data.s.o(.data);
        ST03_08_st03_08_14_DATA_END = .;
        ST03_08_st03_08_14_DATA_SIZE = ABSOLUTE(ST03_08_st03_08_14_DATA_END - ST03_08_st03_08_14_DATA_START);
    }
    __romPos += SIZEOF(.ST03_08_st03_08_14);
    __romPos = ALIGN(__romPos, 16);
    ST03_08_st03_08_14_ROM_END = __romPos;
    ST03_08_st03_08_14_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
