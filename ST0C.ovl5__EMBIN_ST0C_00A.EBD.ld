SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0C_ST0C_00A_5_header_ROM_START = __romPos;
    ST0C_ST0C_00A_5_header_VRAM = ADDR(.ST0C_ST0C_00A_5_header);
    .ST0C_ST0C_00A_5_header : AT(ST0C_ST0C_00A_5_header_ROM_START) SUBALIGN(16)
    {
        ST0C_ST0C_00A_5_header_DATA_START = .;
        ST0C_ST0C_00A_5_header_s = .;
        build/asm/ST0C/ovl5__EMBIN_ST0C_00A.EBD/ST0C_ST0C_00A_5_header.s.o(.data);
        ST0C_ST0C_00A_5_header_DATA_END = .;
        ST0C_ST0C_00A_5_header_DATA_SIZE = ABSOLUTE(ST0C_ST0C_00A_5_header_DATA_END - ST0C_ST0C_00A_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_00A_5_header);
    ST0C_ST0C_00A_5_header_ROM_END = __romPos;
    ST0C_ST0C_00A_5_header_VRAM_END = .;

    ST0C_ST0C_00A_5_ROM_START = __romPos;
    ST0C_ST0C_00A_5_VRAM = ADDR(.ST0C_ST0C_00A_5);
    .ST0C_ST0C_00A_5 0x8016C000 : AT(ST0C_ST0C_00A_5_ROM_START) SUBALIGN(4)
    {
        ST0C_ST0C_00A_5_DATA_START = .;
        ST0C_00A_5_data__s = .;
        build/asm/ST0C/ovl5__EMBIN_ST0C_00A.EBD/data/ST0C_00A_5.data.s.o(.data);
        ST0C_ST0C_00A_5_DATA_END = .;
        ST0C_ST0C_00A_5_DATA_SIZE = ABSOLUTE(ST0C_ST0C_00A_5_DATA_END - ST0C_ST0C_00A_5_DATA_START);
    }
    __romPos += SIZEOF(.ST0C_ST0C_00A_5);
    __romPos = ALIGN(__romPos, 16);
    ST0C_ST0C_00A_5_ROM_END = __romPos;
    ST0C_ST0C_00A_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
