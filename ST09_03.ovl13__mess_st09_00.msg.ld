SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_03_st09_00_13_header_ROM_START = __romPos;
    ST09_03_st09_00_13_header_VRAM = ADDR(.ST09_03_st09_00_13_header);
    .ST09_03_st09_00_13_header : AT(ST09_03_st09_00_13_header_ROM_START) SUBALIGN(16)
    {
        ST09_03_st09_00_13_header_DATA_START = .;
        ST09_03_st09_00_13_header_s = .;
        build/asm/ST09_03/ovl13__mess_st09_00.msg/ST09_03_st09_00_13_header.s.o(.data);
        ST09_03_st09_00_13_header_DATA_END = .;
        ST09_03_st09_00_13_header_DATA_SIZE = ABSOLUTE(ST09_03_st09_00_13_header_DATA_END - ST09_03_st09_00_13_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_03_st09_00_13_header);
    ST09_03_st09_00_13_header_ROM_END = __romPos;
    ST09_03_st09_00_13_header_VRAM_END = .;

    ST09_03_st09_00_13_ROM_START = __romPos;
    ST09_03_st09_00_13_VRAM = ADDR(.ST09_03_st09_00_13);
    .ST09_03_st09_00_13 0x80153000 : AT(ST09_03_st09_00_13_ROM_START) SUBALIGN(4)
    {
        ST09_03_st09_00_13_DATA_START = .;
        st09_00_13_data__s = .;
        build/asm/ST09_03/ovl13__mess_st09_00.msg/data/st09_00_13.data.s.o(.data);
        ST09_03_st09_00_13_DATA_END = .;
        ST09_03_st09_00_13_DATA_SIZE = ABSOLUTE(ST09_03_st09_00_13_DATA_END - ST09_03_st09_00_13_DATA_START);
    }
    __romPos += SIZEOF(.ST09_03_st09_00_13);
    __romPos = ALIGN(__romPos, 16);
    ST09_03_st09_00_13_ROM_END = __romPos;
    ST09_03_st09_00_13_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
