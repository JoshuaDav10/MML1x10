SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_00C_st03_ff_26_header_ROM_START = __romPos;
    ST03_00C_st03_ff_26_header_VRAM = ADDR(.ST03_00C_st03_ff_26_header);
    .ST03_00C_st03_ff_26_header : AT(ST03_00C_st03_ff_26_header_ROM_START) SUBALIGN(16)
    {
        ST03_00C_st03_ff_26_header_DATA_START = .;
        ST03_00C_st03_ff_26_header_s = .;
        build/asm/ST03_00C/ovl26__mess_st03_ff.msg/ST03_00C_st03_ff_26_header.s.o(.data);
        ST03_00C_st03_ff_26_header_DATA_END = .;
        ST03_00C_st03_ff_26_header_DATA_SIZE = ABSOLUTE(ST03_00C_st03_ff_26_header_DATA_END - ST03_00C_st03_ff_26_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00C_st03_ff_26_header);
    ST03_00C_st03_ff_26_header_ROM_END = __romPos;
    ST03_00C_st03_ff_26_header_VRAM_END = .;

    ST03_00C_st03_ff_26_ROM_START = __romPos;
    ST03_00C_st03_ff_26_VRAM = ADDR(.ST03_00C_st03_ff_26);
    .ST03_00C_st03_ff_26 0x80153000 : AT(ST03_00C_st03_ff_26_ROM_START) SUBALIGN(4)
    {
        ST03_00C_st03_ff_26_DATA_START = .;
        st03_ff_26_data__s = .;
        build/asm/ST03_00C/ovl26__mess_st03_ff.msg/data/st03_ff_26.data.s.o(.data);
        ST03_00C_st03_ff_26_DATA_END = .;
        ST03_00C_st03_ff_26_DATA_SIZE = ABSOLUTE(ST03_00C_st03_ff_26_DATA_END - ST03_00C_st03_ff_26_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00C_st03_ff_26);
    __romPos = ALIGN(__romPos, 16);
    ST03_00C_st03_ff_26_ROM_END = __romPos;
    ST03_00C_st03_ff_26_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
