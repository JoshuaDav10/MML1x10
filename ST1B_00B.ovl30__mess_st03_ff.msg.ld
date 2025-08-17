SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1B_00B_st03_ff_30_header_ROM_START = __romPos;
    ST1B_00B_st03_ff_30_header_VRAM = ADDR(.ST1B_00B_st03_ff_30_header);
    .ST1B_00B_st03_ff_30_header : AT(ST1B_00B_st03_ff_30_header_ROM_START) SUBALIGN(16)
    {
        ST1B_00B_st03_ff_30_header_DATA_START = .;
        ST1B_00B_st03_ff_30_header_s = .;
        build/asm/ST1B_00B/ovl30__mess_st03_ff.msg/ST1B_00B_st03_ff_30_header.s.o(.data);
        ST1B_00B_st03_ff_30_header_DATA_END = .;
        ST1B_00B_st03_ff_30_header_DATA_SIZE = ABSOLUTE(ST1B_00B_st03_ff_30_header_DATA_END - ST1B_00B_st03_ff_30_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_00B_st03_ff_30_header);
    ST1B_00B_st03_ff_30_header_ROM_END = __romPos;
    ST1B_00B_st03_ff_30_header_VRAM_END = .;

    ST1B_00B_st03_ff_30_ROM_START = __romPos;
    ST1B_00B_st03_ff_30_VRAM = ADDR(.ST1B_00B_st03_ff_30);
    .ST1B_00B_st03_ff_30 0x80153000 : AT(ST1B_00B_st03_ff_30_ROM_START) SUBALIGN(4)
    {
        ST1B_00B_st03_ff_30_DATA_START = .;
        st03_ff_30_data__s = .;
        build/asm/ST1B_00B/ovl30__mess_st03_ff.msg/data/st03_ff_30.data.s.o(.data);
        ST1B_00B_st03_ff_30_DATA_END = .;
        ST1B_00B_st03_ff_30_DATA_SIZE = ABSOLUTE(ST1B_00B_st03_ff_30_DATA_END - ST1B_00B_st03_ff_30_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_00B_st03_ff_30);
    __romPos = ALIGN(__romPos, 16);
    ST1B_00B_st03_ff_30_ROM_END = __romPos;
    ST1B_00B_st03_ff_30_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
