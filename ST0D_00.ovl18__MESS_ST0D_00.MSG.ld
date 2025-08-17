SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_00_ST0D_00_18_header_ROM_START = __romPos;
    ST0D_00_ST0D_00_18_header_VRAM = ADDR(.ST0D_00_ST0D_00_18_header);
    .ST0D_00_ST0D_00_18_header : AT(ST0D_00_ST0D_00_18_header_ROM_START) SUBALIGN(16)
    {
        ST0D_00_ST0D_00_18_header_DATA_START = .;
        ST0D_00_ST0D_00_18_header_s = .;
        build/asm/ST0D_00/ovl18__MESS_ST0D_00.MSG/ST0D_00_ST0D_00_18_header.s.o(.data);
        ST0D_00_ST0D_00_18_header_DATA_END = .;
        ST0D_00_ST0D_00_18_header_DATA_SIZE = ABSOLUTE(ST0D_00_ST0D_00_18_header_DATA_END - ST0D_00_ST0D_00_18_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00_ST0D_00_18_header);
    ST0D_00_ST0D_00_18_header_ROM_END = __romPos;
    ST0D_00_ST0D_00_18_header_VRAM_END = .;

    ST0D_00_ST0D_00_18_ROM_START = __romPos;
    ST0D_00_ST0D_00_18_VRAM = ADDR(.ST0D_00_ST0D_00_18);
    .ST0D_00_ST0D_00_18 0x80153000 : AT(ST0D_00_ST0D_00_18_ROM_START) SUBALIGN(4)
    {
        ST0D_00_ST0D_00_18_DATA_START = .;
        ST0D_00_18_data__s = .;
        build/asm/ST0D_00/ovl18__MESS_ST0D_00.MSG/data/ST0D_00_18.data.s.o(.data);
        ST0D_00_ST0D_00_18_DATA_END = .;
        ST0D_00_ST0D_00_18_DATA_SIZE = ABSOLUTE(ST0D_00_ST0D_00_18_DATA_END - ST0D_00_ST0D_00_18_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00_ST0D_00_18);
    __romPos = ALIGN(__romPos, 16);
    ST0D_00_ST0D_00_18_ROM_END = __romPos;
    ST0D_00_ST0D_00_18_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
