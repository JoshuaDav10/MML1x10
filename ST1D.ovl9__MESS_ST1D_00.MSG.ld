SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1D_ST1D_00_9_header_ROM_START = __romPos;
    ST1D_ST1D_00_9_header_VRAM = ADDR(.ST1D_ST1D_00_9_header);
    .ST1D_ST1D_00_9_header : AT(ST1D_ST1D_00_9_header_ROM_START) SUBALIGN(16)
    {
        ST1D_ST1D_00_9_header_DATA_START = .;
        ST1D_ST1D_00_9_header_s = .;
        build/asm/ST1D/ovl9__MESS_ST1D_00.MSG/ST1D_ST1D_00_9_header.s.o(.data);
        ST1D_ST1D_00_9_header_DATA_END = .;
        ST1D_ST1D_00_9_header_DATA_SIZE = ABSOLUTE(ST1D_ST1D_00_9_header_DATA_END - ST1D_ST1D_00_9_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1D_00_9_header);
    ST1D_ST1D_00_9_header_ROM_END = __romPos;
    ST1D_ST1D_00_9_header_VRAM_END = .;

    ST1D_ST1D_00_9_ROM_START = __romPos;
    ST1D_ST1D_00_9_VRAM = ADDR(.ST1D_ST1D_00_9);
    .ST1D_ST1D_00_9 0x80153000 : AT(ST1D_ST1D_00_9_ROM_START) SUBALIGN(4)
    {
        ST1D_ST1D_00_9_DATA_START = .;
        ST1D_00_9_data__s = .;
        build/asm/ST1D/ovl9__MESS_ST1D_00.MSG/data/ST1D_00_9.data.s.o(.data);
        ST1D_ST1D_00_9_DATA_END = .;
        ST1D_ST1D_00_9_DATA_SIZE = ABSOLUTE(ST1D_ST1D_00_9_DATA_END - ST1D_ST1D_00_9_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_ST1D_00_9);
    __romPos = ALIGN(__romPos, 16);
    ST1D_ST1D_00_9_ROM_END = __romPos;
    ST1D_ST1D_00_9_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
