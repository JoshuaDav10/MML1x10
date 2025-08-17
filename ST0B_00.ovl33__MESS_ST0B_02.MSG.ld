SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0B_00_ST0B_02_33_header_ROM_START = __romPos;
    ST0B_00_ST0B_02_33_header_VRAM = ADDR(.ST0B_00_ST0B_02_33_header);
    .ST0B_00_ST0B_02_33_header : AT(ST0B_00_ST0B_02_33_header_ROM_START) SUBALIGN(16)
    {
        ST0B_00_ST0B_02_33_header_DATA_START = .;
        ST0B_00_ST0B_02_33_header_s = .;
        build/asm/ST0B_00/ovl33__MESS_ST0B_02.MSG/ST0B_00_ST0B_02_33_header.s.o(.data);
        ST0B_00_ST0B_02_33_header_DATA_END = .;
        ST0B_00_ST0B_02_33_header_DATA_SIZE = ABSOLUTE(ST0B_00_ST0B_02_33_header_DATA_END - ST0B_00_ST0B_02_33_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00_ST0B_02_33_header);
    ST0B_00_ST0B_02_33_header_ROM_END = __romPos;
    ST0B_00_ST0B_02_33_header_VRAM_END = .;

    ST0B_00_ST0B_02_33_ROM_START = __romPos;
    ST0B_00_ST0B_02_33_VRAM = ADDR(.ST0B_00_ST0B_02_33);
    .ST0B_00_ST0B_02_33 0x80153000 : AT(ST0B_00_ST0B_02_33_ROM_START) SUBALIGN(4)
    {
        ST0B_00_ST0B_02_33_DATA_START = .;
        ST0B_02_33_data__s = .;
        build/asm/ST0B_00/ovl33__MESS_ST0B_02.MSG/data/ST0B_02_33.data.s.o(.data);
        ST0B_00_ST0B_02_33_DATA_END = .;
        ST0B_00_ST0B_02_33_DATA_SIZE = ABSOLUTE(ST0B_00_ST0B_02_33_DATA_END - ST0B_00_ST0B_02_33_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00_ST0B_02_33);
    __romPos = ALIGN(__romPos, 16);
    ST0B_00_ST0B_02_33_ROM_END = __romPos;
    ST0B_00_ST0B_02_33_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
