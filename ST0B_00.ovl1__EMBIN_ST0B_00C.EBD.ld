SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0B_00_ST0B_00C_1_header_ROM_START = __romPos;
    ST0B_00_ST0B_00C_1_header_VRAM = ADDR(.ST0B_00_ST0B_00C_1_header);
    .ST0B_00_ST0B_00C_1_header : AT(ST0B_00_ST0B_00C_1_header_ROM_START) SUBALIGN(16)
    {
        ST0B_00_ST0B_00C_1_header_DATA_START = .;
        ST0B_00_ST0B_00C_1_header_s = .;
        build/asm/ST0B_00/ovl1__EMBIN_ST0B_00C.EBD/ST0B_00_ST0B_00C_1_header.s.o(.data);
        ST0B_00_ST0B_00C_1_header_DATA_END = .;
        ST0B_00_ST0B_00C_1_header_DATA_SIZE = ABSOLUTE(ST0B_00_ST0B_00C_1_header_DATA_END - ST0B_00_ST0B_00C_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00_ST0B_00C_1_header);
    ST0B_00_ST0B_00C_1_header_ROM_END = __romPos;
    ST0B_00_ST0B_00C_1_header_VRAM_END = .;

    ST0B_00_ST0B_00C_1_ROM_START = __romPos;
    ST0B_00_ST0B_00C_1_VRAM = ADDR(.ST0B_00_ST0B_00C_1);
    .ST0B_00_ST0B_00C_1 0x80190000 : AT(ST0B_00_ST0B_00C_1_ROM_START) SUBALIGN(4)
    {
        ST0B_00_ST0B_00C_1_DATA_START = .;
        ST0B_00C_1_data__s = .;
        build/asm/ST0B_00/ovl1__EMBIN_ST0B_00C.EBD/data/ST0B_00C_1.data.s.o(.data);
        ST0B_00_ST0B_00C_1_DATA_END = .;
        ST0B_00_ST0B_00C_1_DATA_SIZE = ABSOLUTE(ST0B_00_ST0B_00C_1_DATA_END - ST0B_00_ST0B_00C_1_DATA_START);
    }
    __romPos += SIZEOF(.ST0B_00_ST0B_00C_1);
    __romPos = ALIGN(__romPos, 16);
    ST0B_00_ST0B_00C_1_ROM_END = __romPos;
    ST0B_00_ST0B_00C_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
