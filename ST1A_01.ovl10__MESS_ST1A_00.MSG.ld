SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_01_ST1A_00_10_header_ROM_START = __romPos;
    ST1A_01_ST1A_00_10_header_VRAM = ADDR(.ST1A_01_ST1A_00_10_header);
    .ST1A_01_ST1A_00_10_header : AT(ST1A_01_ST1A_00_10_header_ROM_START) SUBALIGN(16)
    {
        ST1A_01_ST1A_00_10_header_DATA_START = .;
        ST1A_01_ST1A_00_10_header_s = .;
        build/asm/ST1A_01/ovl10__MESS_ST1A_00.MSG/ST1A_01_ST1A_00_10_header.s.o(.data);
        ST1A_01_ST1A_00_10_header_DATA_END = .;
        ST1A_01_ST1A_00_10_header_DATA_SIZE = ABSOLUTE(ST1A_01_ST1A_00_10_header_DATA_END - ST1A_01_ST1A_00_10_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_01_ST1A_00_10_header);
    ST1A_01_ST1A_00_10_header_ROM_END = __romPos;
    ST1A_01_ST1A_00_10_header_VRAM_END = .;

    ST1A_01_ST1A_00_10_ROM_START = __romPos;
    ST1A_01_ST1A_00_10_VRAM = ADDR(.ST1A_01_ST1A_00_10);
    .ST1A_01_ST1A_00_10 0x80153000 : AT(ST1A_01_ST1A_00_10_ROM_START) SUBALIGN(4)
    {
        ST1A_01_ST1A_00_10_DATA_START = .;
        ST1A_00_10_data__s = .;
        build/asm/ST1A_01/ovl10__MESS_ST1A_00.MSG/data/ST1A_00_10.data.s.o(.data);
        ST1A_01_ST1A_00_10_DATA_END = .;
        ST1A_01_ST1A_00_10_DATA_SIZE = ABSOLUTE(ST1A_01_ST1A_00_10_DATA_END - ST1A_01_ST1A_00_10_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_01_ST1A_00_10);
    __romPos = ALIGN(__romPos, 16);
    ST1A_01_ST1A_00_10_ROM_END = __romPos;
    ST1A_01_ST1A_00_10_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
