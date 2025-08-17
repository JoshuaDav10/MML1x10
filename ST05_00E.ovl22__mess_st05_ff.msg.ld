SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_00E_st05_ff_22_header_ROM_START = __romPos;
    ST05_00E_st05_ff_22_header_VRAM = ADDR(.ST05_00E_st05_ff_22_header);
    .ST05_00E_st05_ff_22_header : AT(ST05_00E_st05_ff_22_header_ROM_START) SUBALIGN(16)
    {
        ST05_00E_st05_ff_22_header_DATA_START = .;
        ST05_00E_st05_ff_22_header_s = .;
        build/asm/ST05_00E/ovl22__mess_st05_ff.msg/ST05_00E_st05_ff_22_header.s.o(.data);
        ST05_00E_st05_ff_22_header_DATA_END = .;
        ST05_00E_st05_ff_22_header_DATA_SIZE = ABSOLUTE(ST05_00E_st05_ff_22_header_DATA_END - ST05_00E_st05_ff_22_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_00E_st05_ff_22_header);
    ST05_00E_st05_ff_22_header_ROM_END = __romPos;
    ST05_00E_st05_ff_22_header_VRAM_END = .;

    ST05_00E_st05_ff_22_ROM_START = __romPos;
    ST05_00E_st05_ff_22_VRAM = ADDR(.ST05_00E_st05_ff_22);
    .ST05_00E_st05_ff_22 0x80153000 : AT(ST05_00E_st05_ff_22_ROM_START) SUBALIGN(4)
    {
        ST05_00E_st05_ff_22_DATA_START = .;
        st05_ff_22_data__s = .;
        build/asm/ST05_00E/ovl22__mess_st05_ff.msg/data/st05_ff_22.data.s.o(.data);
        ST05_00E_st05_ff_22_DATA_END = .;
        ST05_00E_st05_ff_22_DATA_SIZE = ABSOLUTE(ST05_00E_st05_ff_22_DATA_END - ST05_00E_st05_ff_22_DATA_START);
    }
    __romPos += SIZEOF(.ST05_00E_st05_ff_22);
    __romPos = ALIGN(__romPos, 16);
    ST05_00E_st05_ff_22_ROM_END = __romPos;
    ST05_00E_st05_ff_22_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
