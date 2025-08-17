SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_00B_st03_ff_25_header_ROM_START = __romPos;
    ST03_00B_st03_ff_25_header_VRAM = ADDR(.ST03_00B_st03_ff_25_header);
    .ST03_00B_st03_ff_25_header : AT(ST03_00B_st03_ff_25_header_ROM_START) SUBALIGN(16)
    {
        ST03_00B_st03_ff_25_header_DATA_START = .;
        ST03_00B_st03_ff_25_header_s = .;
        build/asm/ST03_00B/ovl25__mess_st03_ff.msg/ST03_00B_st03_ff_25_header.s.o(.data);
        ST03_00B_st03_ff_25_header_DATA_END = .;
        ST03_00B_st03_ff_25_header_DATA_SIZE = ABSOLUTE(ST03_00B_st03_ff_25_header_DATA_END - ST03_00B_st03_ff_25_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00B_st03_ff_25_header);
    ST03_00B_st03_ff_25_header_ROM_END = __romPos;
    ST03_00B_st03_ff_25_header_VRAM_END = .;

    ST03_00B_st03_ff_25_ROM_START = __romPos;
    ST03_00B_st03_ff_25_VRAM = ADDR(.ST03_00B_st03_ff_25);
    .ST03_00B_st03_ff_25 0x80153000 : AT(ST03_00B_st03_ff_25_ROM_START) SUBALIGN(4)
    {
        ST03_00B_st03_ff_25_DATA_START = .;
        st03_ff_25_data__s = .;
        build/asm/ST03_00B/ovl25__mess_st03_ff.msg/data/st03_ff_25.data.s.o(.data);
        ST03_00B_st03_ff_25_DATA_END = .;
        ST03_00B_st03_ff_25_DATA_SIZE = ABSOLUTE(ST03_00B_st03_ff_25_DATA_END - ST03_00B_st03_ff_25_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00B_st03_ff_25);
    __romPos = ALIGN(__romPos, 16);
    ST03_00B_st03_ff_25_ROM_END = __romPos;
    ST03_00B_st03_ff_25_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
