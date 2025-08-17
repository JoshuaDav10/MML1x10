SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_00_ST0A_00_27_header_ROM_START = __romPos;
    ST0A_00_ST0A_00_27_header_VRAM = ADDR(.ST0A_00_ST0A_00_27_header);
    .ST0A_00_ST0A_00_27_header : AT(ST0A_00_ST0A_00_27_header_ROM_START) SUBALIGN(16)
    {
        ST0A_00_ST0A_00_27_header_DATA_START = .;
        ST0A_00_ST0A_00_27_header_s = .;
        build/asm/ST0A_00/ovl27__MESS_ST0A_00.MSG/ST0A_00_ST0A_00_27_header.s.o(.data);
        ST0A_00_ST0A_00_27_header_DATA_END = .;
        ST0A_00_ST0A_00_27_header_DATA_SIZE = ABSOLUTE(ST0A_00_ST0A_00_27_header_DATA_END - ST0A_00_ST0A_00_27_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00_ST0A_00_27_header);
    ST0A_00_ST0A_00_27_header_ROM_END = __romPos;
    ST0A_00_ST0A_00_27_header_VRAM_END = .;

    ST0A_00_ST0A_00_27_ROM_START = __romPos;
    ST0A_00_ST0A_00_27_VRAM = ADDR(.ST0A_00_ST0A_00_27);
    .ST0A_00_ST0A_00_27 0x80153000 : AT(ST0A_00_ST0A_00_27_ROM_START) SUBALIGN(4)
    {
        ST0A_00_ST0A_00_27_DATA_START = .;
        ST0A_00_27_data__s = .;
        build/asm/ST0A_00/ovl27__MESS_ST0A_00.MSG/data/ST0A_00_27.data.s.o(.data);
        ST0A_00_ST0A_00_27_DATA_END = .;
        ST0A_00_ST0A_00_27_DATA_SIZE = ABSOLUTE(ST0A_00_ST0A_00_27_DATA_END - ST0A_00_ST0A_00_27_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00_ST0A_00_27);
    __romPos = ALIGN(__romPos, 16);
    ST0A_00_ST0A_00_27_ROM_END = __romPos;
    ST0A_00_ST0A_00_27_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
