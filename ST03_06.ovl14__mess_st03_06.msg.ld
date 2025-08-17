SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_06_st03_06_14_header_ROM_START = __romPos;
    ST03_06_st03_06_14_header_VRAM = ADDR(.ST03_06_st03_06_14_header);
    .ST03_06_st03_06_14_header : AT(ST03_06_st03_06_14_header_ROM_START) SUBALIGN(16)
    {
        ST03_06_st03_06_14_header_DATA_START = .;
        ST03_06_st03_06_14_header_s = .;
        build/asm/ST03_06/ovl14__mess_st03_06.msg/ST03_06_st03_06_14_header.s.o(.data);
        ST03_06_st03_06_14_header_DATA_END = .;
        ST03_06_st03_06_14_header_DATA_SIZE = ABSOLUTE(ST03_06_st03_06_14_header_DATA_END - ST03_06_st03_06_14_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_06_st03_06_14_header);
    ST03_06_st03_06_14_header_ROM_END = __romPos;
    ST03_06_st03_06_14_header_VRAM_END = .;

    ST03_06_st03_06_14_ROM_START = __romPos;
    ST03_06_st03_06_14_VRAM = ADDR(.ST03_06_st03_06_14);
    .ST03_06_st03_06_14 0x80153000 : AT(ST03_06_st03_06_14_ROM_START) SUBALIGN(4)
    {
        ST03_06_st03_06_14_DATA_START = .;
        st03_06_14_data__s = .;
        build/asm/ST03_06/ovl14__mess_st03_06.msg/data/st03_06_14.data.s.o(.data);
        ST03_06_st03_06_14_DATA_END = .;
        ST03_06_st03_06_14_DATA_SIZE = ABSOLUTE(ST03_06_st03_06_14_DATA_END - ST03_06_st03_06_14_DATA_START);
    }
    __romPos += SIZEOF(.ST03_06_st03_06_14);
    __romPos = ALIGN(__romPos, 16);
    ST03_06_st03_06_14_ROM_END = __romPos;
    ST03_06_st03_06_14_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
