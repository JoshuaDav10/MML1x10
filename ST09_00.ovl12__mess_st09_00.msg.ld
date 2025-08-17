SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_00_st09_00_12_header_ROM_START = __romPos;
    ST09_00_st09_00_12_header_VRAM = ADDR(.ST09_00_st09_00_12_header);
    .ST09_00_st09_00_12_header : AT(ST09_00_st09_00_12_header_ROM_START) SUBALIGN(16)
    {
        ST09_00_st09_00_12_header_DATA_START = .;
        ST09_00_st09_00_12_header_s = .;
        build/asm/ST09_00/ovl12__mess_st09_00.msg/ST09_00_st09_00_12_header.s.o(.data);
        ST09_00_st09_00_12_header_DATA_END = .;
        ST09_00_st09_00_12_header_DATA_SIZE = ABSOLUTE(ST09_00_st09_00_12_header_DATA_END - ST09_00_st09_00_12_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_00_st09_00_12_header);
    ST09_00_st09_00_12_header_ROM_END = __romPos;
    ST09_00_st09_00_12_header_VRAM_END = .;

    ST09_00_st09_00_12_ROM_START = __romPos;
    ST09_00_st09_00_12_VRAM = ADDR(.ST09_00_st09_00_12);
    .ST09_00_st09_00_12 0x80153000 : AT(ST09_00_st09_00_12_ROM_START) SUBALIGN(4)
    {
        ST09_00_st09_00_12_DATA_START = .;
        st09_00_12_data__s = .;
        build/asm/ST09_00/ovl12__mess_st09_00.msg/data/st09_00_12.data.s.o(.data);
        ST09_00_st09_00_12_DATA_END = .;
        ST09_00_st09_00_12_DATA_SIZE = ABSOLUTE(ST09_00_st09_00_12_DATA_END - ST09_00_st09_00_12_DATA_START);
    }
    __romPos += SIZEOF(.ST09_00_st09_00_12);
    __romPos = ALIGN(__romPos, 16);
    ST09_00_st09_00_12_ROM_END = __romPos;
    ST09_00_st09_00_12_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
