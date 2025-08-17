SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_02B_ST1A_00_3_header_ROM_START = __romPos;
    ST1A_02B_ST1A_00_3_header_VRAM = ADDR(.ST1A_02B_ST1A_00_3_header);
    .ST1A_02B_ST1A_00_3_header : AT(ST1A_02B_ST1A_00_3_header_ROM_START) SUBALIGN(16)
    {
        ST1A_02B_ST1A_00_3_header_DATA_START = .;
        ST1A_02B_ST1A_00_3_header_s = .;
        build/asm/ST1A_02B/ovl3__MESS_ST1A_00.MSG/ST1A_02B_ST1A_00_3_header.s.o(.data);
        ST1A_02B_ST1A_00_3_header_DATA_END = .;
        ST1A_02B_ST1A_00_3_header_DATA_SIZE = ABSOLUTE(ST1A_02B_ST1A_00_3_header_DATA_END - ST1A_02B_ST1A_00_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_02B_ST1A_00_3_header);
    ST1A_02B_ST1A_00_3_header_ROM_END = __romPos;
    ST1A_02B_ST1A_00_3_header_VRAM_END = .;

    ST1A_02B_ST1A_00_3_ROM_START = __romPos;
    ST1A_02B_ST1A_00_3_VRAM = ADDR(.ST1A_02B_ST1A_00_3);
    .ST1A_02B_ST1A_00_3 0x80153000 : AT(ST1A_02B_ST1A_00_3_ROM_START) SUBALIGN(4)
    {
        ST1A_02B_ST1A_00_3_DATA_START = .;
        ST1A_00_3_data__s = .;
        build/asm/ST1A_02B/ovl3__MESS_ST1A_00.MSG/data/ST1A_00_3.data.s.o(.data);
        ST1A_02B_ST1A_00_3_DATA_END = .;
        ST1A_02B_ST1A_00_3_DATA_SIZE = ABSOLUTE(ST1A_02B_ST1A_00_3_DATA_END - ST1A_02B_ST1A_00_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_02B_ST1A_00_3);
    __romPos = ALIGN(__romPos, 16);
    ST1A_02B_ST1A_00_3_ROM_END = __romPos;
    ST1A_02B_ST1A_00_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
