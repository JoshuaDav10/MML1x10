SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_03_st03_ff_2_header_ROM_START = __romPos;
    ST03_03_st03_ff_2_header_VRAM = ADDR(.ST03_03_st03_ff_2_header);
    .ST03_03_st03_ff_2_header : AT(ST03_03_st03_ff_2_header_ROM_START) SUBALIGN(16)
    {
        ST03_03_st03_ff_2_header_DATA_START = .;
        ST03_03_st03_ff_2_header_s = .;
        build/asm/ST03_03/ovl2__mess_st03_ff.msg/ST03_03_st03_ff_2_header.s.o(.data);
        ST03_03_st03_ff_2_header_DATA_END = .;
        ST03_03_st03_ff_2_header_DATA_SIZE = ABSOLUTE(ST03_03_st03_ff_2_header_DATA_END - ST03_03_st03_ff_2_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_03_st03_ff_2_header);
    ST03_03_st03_ff_2_header_ROM_END = __romPos;
    ST03_03_st03_ff_2_header_VRAM_END = .;

    ST03_03_st03_ff_2_ROM_START = __romPos;
    ST03_03_st03_ff_2_VRAM = ADDR(.ST03_03_st03_ff_2);
    .ST03_03_st03_ff_2 0x80153000 : AT(ST03_03_st03_ff_2_ROM_START) SUBALIGN(4)
    {
        ST03_03_st03_ff_2_DATA_START = .;
        st03_ff_2_data__s = .;
        build/asm/ST03_03/ovl2__mess_st03_ff.msg/data/st03_ff_2.data.s.o(.data);
        ST03_03_st03_ff_2_DATA_END = .;
        ST03_03_st03_ff_2_DATA_SIZE = ABSOLUTE(ST03_03_st03_ff_2_DATA_END - ST03_03_st03_ff_2_DATA_START);
    }
    __romPos += SIZEOF(.ST03_03_st03_ff_2);
    __romPos = ALIGN(__romPos, 16);
    ST03_03_st03_ff_2_ROM_END = __romPos;
    ST03_03_st03_ff_2_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
