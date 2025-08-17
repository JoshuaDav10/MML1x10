SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_05_st09_00_14_header_ROM_START = __romPos;
    ST09_05_st09_00_14_header_VRAM = ADDR(.ST09_05_st09_00_14_header);
    .ST09_05_st09_00_14_header : AT(ST09_05_st09_00_14_header_ROM_START) SUBALIGN(16)
    {
        ST09_05_st09_00_14_header_DATA_START = .;
        ST09_05_st09_00_14_header_s = .;
        build/asm/ST09_05/ovl14__mess_st09_00.msg/ST09_05_st09_00_14_header.s.o(.data);
        ST09_05_st09_00_14_header_DATA_END = .;
        ST09_05_st09_00_14_header_DATA_SIZE = ABSOLUTE(ST09_05_st09_00_14_header_DATA_END - ST09_05_st09_00_14_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_05_st09_00_14_header);
    ST09_05_st09_00_14_header_ROM_END = __romPos;
    ST09_05_st09_00_14_header_VRAM_END = .;

    ST09_05_st09_00_14_ROM_START = __romPos;
    ST09_05_st09_00_14_VRAM = ADDR(.ST09_05_st09_00_14);
    .ST09_05_st09_00_14 0x80153000 : AT(ST09_05_st09_00_14_ROM_START) SUBALIGN(4)
    {
        ST09_05_st09_00_14_DATA_START = .;
        st09_00_14_data__s = .;
        build/asm/ST09_05/ovl14__mess_st09_00.msg/data/st09_00_14.data.s.o(.data);
        ST09_05_st09_00_14_DATA_END = .;
        ST09_05_st09_00_14_DATA_SIZE = ABSOLUTE(ST09_05_st09_00_14_DATA_END - ST09_05_st09_00_14_DATA_START);
    }
    __romPos += SIZEOF(.ST09_05_st09_00_14);
    __romPos = ALIGN(__romPos, 16);
    ST09_05_st09_00_14_ROM_END = __romPos;
    ST09_05_st09_00_14_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
