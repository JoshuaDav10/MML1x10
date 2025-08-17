SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_00_st03_00_33_header_ROM_START = __romPos;
    ST03_00_st03_00_33_header_VRAM = ADDR(.ST03_00_st03_00_33_header);
    .ST03_00_st03_00_33_header : AT(ST03_00_st03_00_33_header_ROM_START) SUBALIGN(16)
    {
        ST03_00_st03_00_33_header_DATA_START = .;
        ST03_00_st03_00_33_header_s = .;
        build/asm/ST03_00/ovl33__mess_st03_00.msg/ST03_00_st03_00_33_header.s.o(.data);
        ST03_00_st03_00_33_header_DATA_END = .;
        ST03_00_st03_00_33_header_DATA_SIZE = ABSOLUTE(ST03_00_st03_00_33_header_DATA_END - ST03_00_st03_00_33_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00_st03_00_33_header);
    ST03_00_st03_00_33_header_ROM_END = __romPos;
    ST03_00_st03_00_33_header_VRAM_END = .;

    ST03_00_st03_00_33_ROM_START = __romPos;
    ST03_00_st03_00_33_VRAM = ADDR(.ST03_00_st03_00_33);
    .ST03_00_st03_00_33 0x80153000 : AT(ST03_00_st03_00_33_ROM_START) SUBALIGN(4)
    {
        ST03_00_st03_00_33_DATA_START = .;
        st03_00_33_data__s = .;
        build/asm/ST03_00/ovl33__mess_st03_00.msg/data/st03_00_33.data.s.o(.data);
        ST03_00_st03_00_33_DATA_END = .;
        ST03_00_st03_00_33_DATA_SIZE = ABSOLUTE(ST03_00_st03_00_33_DATA_END - ST03_00_st03_00_33_DATA_START);
    }
    __romPos += SIZEOF(.ST03_00_st03_00_33);
    __romPos = ALIGN(__romPos, 16);
    ST03_00_st03_00_33_ROM_END = __romPos;
    ST03_00_st03_00_33_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
