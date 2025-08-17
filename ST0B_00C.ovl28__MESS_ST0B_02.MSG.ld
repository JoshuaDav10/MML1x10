SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0B_00C_ST0B_02_28_header_ROM_START = __romPos;
    ST0B_00C_ST0B_02_28_header_VRAM = ADDR(.ST0B_00C_ST0B_02_28_header);
    .ST0B_00C_ST0B_02_28_header : AT(ST0B_00C_ST0B_02_28_header_ROM_START) SUBALIGN(16)
    {
        ST0B_00C_ST0B_02_28_header_DATA_START = .;
        ST0B_00C_ST0B_02_28_header_s = .;
        build/asm/ST0B_00C/ovl28__MESS_ST0B_02.MSG/ST0B_00C_ST0B_02_28_header.s.o(.data);
        ST0B_00C_ST0B_02_28_header_DATA_END = .;
        ST0B_00C_ST0B_02_28_header_DATA_SIZE = ABSOLUTE(ST0B_00C_ST0B_02_28_header_DATA_END - ST0B_00C_ST0B_02_28_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00C_ST0B_02_28_header);
    ST0B_00C_ST0B_02_28_header_ROM_END = __romPos;
    ST0B_00C_ST0B_02_28_header_VRAM_END = .;

    ST0B_00C_ST0B_02_28_ROM_START = __romPos;
    ST0B_00C_ST0B_02_28_VRAM = ADDR(.ST0B_00C_ST0B_02_28);
    .ST0B_00C_ST0B_02_28 0x80153000 : AT(ST0B_00C_ST0B_02_28_ROM_START) SUBALIGN(4)
    {
        ST0B_00C_ST0B_02_28_DATA_START = .;
        ST0B_02_28_data__s = .;
        build/asm/ST0B_00C/ovl28__MESS_ST0B_02.MSG/data/ST0B_02_28.data.s.o(.data);
        ST0B_00C_ST0B_02_28_DATA_END = .;
        ST0B_00C_ST0B_02_28_DATA_SIZE = ABSOLUTE(ST0B_00C_ST0B_02_28_DATA_END - ST0B_00C_ST0B_02_28_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00C_ST0B_02_28);
    __romPos = ALIGN(__romPos, 16);
    ST0B_00C_ST0B_02_28_ROM_END = __romPos;
    ST0B_00C_ST0B_02_28_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
