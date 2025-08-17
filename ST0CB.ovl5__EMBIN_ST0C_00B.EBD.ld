SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0CB_ST0C_00B_5_header_ROM_START = __romPos;
    ST0CB_ST0C_00B_5_header_VRAM = ADDR(.ST0CB_ST0C_00B_5_header);
    .ST0CB_ST0C_00B_5_header : AT(ST0CB_ST0C_00B_5_header_ROM_START) SUBALIGN(16)
    {
        ST0CB_ST0C_00B_5_header_DATA_START = .;
        ST0CB_ST0C_00B_5_header_s = .;
        build/asm/ST0CB/ovl5__EMBIN_ST0C_00B.EBD/ST0CB_ST0C_00B_5_header.s.o(.data);
        ST0CB_ST0C_00B_5_header_DATA_END = .;
        ST0CB_ST0C_00B_5_header_DATA_SIZE = ABSOLUTE(ST0CB_ST0C_00B_5_header_DATA_END - ST0CB_ST0C_00B_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0CB_ST0C_00B_5_header);
    ST0CB_ST0C_00B_5_header_ROM_END = __romPos;
    ST0CB_ST0C_00B_5_header_VRAM_END = .;

    ST0CB_ST0C_00B_5_ROM_START = __romPos;
    ST0CB_ST0C_00B_5_VRAM = ADDR(.ST0CB_ST0C_00B_5);
    .ST0CB_ST0C_00B_5 0x8016C000 : AT(ST0CB_ST0C_00B_5_ROM_START) SUBALIGN(4)
    {
        ST0CB_ST0C_00B_5_DATA_START = .;
        ST0C_00B_5_data__s = .;
        build/asm/ST0CB/ovl5__EMBIN_ST0C_00B.EBD/data/ST0C_00B_5.data.s.o(.data);
        ST0CB_ST0C_00B_5_DATA_END = .;
        ST0CB_ST0C_00B_5_DATA_SIZE = ABSOLUTE(ST0CB_ST0C_00B_5_DATA_END - ST0CB_ST0C_00B_5_DATA_START);
    }
    __romPos += SIZEOF(.ST0CB_ST0C_00B_5);
    __romPos = ALIGN(__romPos, 16);
    ST0CB_ST0C_00B_5_ROM_END = __romPos;
    ST0CB_ST0C_00B_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
