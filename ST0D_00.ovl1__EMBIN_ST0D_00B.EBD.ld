SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_00_ST0D_00B_1_header_ROM_START = __romPos;
    ST0D_00_ST0D_00B_1_header_VRAM = ADDR(.ST0D_00_ST0D_00B_1_header);
    .ST0D_00_ST0D_00B_1_header : AT(ST0D_00_ST0D_00B_1_header_ROM_START) SUBALIGN(16)
    {
        ST0D_00_ST0D_00B_1_header_DATA_START = .;
        ST0D_00_ST0D_00B_1_header_s = .;
        build/asm/ST0D_00/ovl1__EMBIN_ST0D_00B.EBD/ST0D_00_ST0D_00B_1_header.s.o(.data);
        ST0D_00_ST0D_00B_1_header_DATA_END = .;
        ST0D_00_ST0D_00B_1_header_DATA_SIZE = ABSOLUTE(ST0D_00_ST0D_00B_1_header_DATA_END - ST0D_00_ST0D_00B_1_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00_ST0D_00B_1_header);
    ST0D_00_ST0D_00B_1_header_ROM_END = __romPos;
    ST0D_00_ST0D_00B_1_header_VRAM_END = .;

    ST0D_00_ST0D_00B_1_ROM_START = __romPos;
    ST0D_00_ST0D_00B_1_VRAM = ADDR(.ST0D_00_ST0D_00B_1);
    .ST0D_00_ST0D_00B_1 0x80190000 : AT(ST0D_00_ST0D_00B_1_ROM_START) SUBALIGN(4)
    {
        ST0D_00_ST0D_00B_1_DATA_START = .;
        ST0D_00B_1_data__s = .;
        build/asm/ST0D_00/ovl1__EMBIN_ST0D_00B.EBD/data/ST0D_00B_1.data.s.o(.data);
        ST0D_00_ST0D_00B_1_DATA_END = .;
        ST0D_00_ST0D_00B_1_DATA_SIZE = ABSOLUTE(ST0D_00_ST0D_00B_1_DATA_END - ST0D_00_ST0D_00B_1_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00_ST0D_00B_1);
    __romPos = ALIGN(__romPos, 16);
    ST0D_00_ST0D_00B_1_ROM_END = __romPos;
    ST0D_00_ST0D_00B_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
