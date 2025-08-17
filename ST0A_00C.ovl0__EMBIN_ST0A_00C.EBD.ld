SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0A_00C_ST0A_00C_0_header_ROM_START = __romPos;
    ST0A_00C_ST0A_00C_0_header_VRAM = ADDR(.ST0A_00C_ST0A_00C_0_header);
    .ST0A_00C_ST0A_00C_0_header : AT(ST0A_00C_ST0A_00C_0_header_ROM_START) SUBALIGN(16)
    {
        ST0A_00C_ST0A_00C_0_header_DATA_START = .;
        ST0A_00C_ST0A_00C_0_header_s = .;
        build/asm/ST0A_00C/ovl0__EMBIN_ST0A_00C.EBD/ST0A_00C_ST0A_00C_0_header.s.o(.data);
        ST0A_00C_ST0A_00C_0_header_DATA_END = .;
        ST0A_00C_ST0A_00C_0_header_DATA_SIZE = ABSOLUTE(ST0A_00C_ST0A_00C_0_header_DATA_END - ST0A_00C_ST0A_00C_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00C_ST0A_00C_0_header);
    ST0A_00C_ST0A_00C_0_header_ROM_END = __romPos;
    ST0A_00C_ST0A_00C_0_header_VRAM_END = .;

    ST0A_00C_ST0A_00C_0_ROM_START = __romPos;
    ST0A_00C_ST0A_00C_0_VRAM = ADDR(.ST0A_00C_ST0A_00C_0);
    .ST0A_00C_ST0A_00C_0 0x8016C000 : AT(ST0A_00C_ST0A_00C_0_ROM_START) SUBALIGN(4)
    {
        ST0A_00C_ST0A_00C_0_DATA_START = .;
        ST0A_00C_0_data__s = .;
        build/asm/ST0A_00C/ovl0__EMBIN_ST0A_00C.EBD/data/ST0A_00C_0.data.s.o(.data);
        ST0A_00C_ST0A_00C_0_DATA_END = .;
        ST0A_00C_ST0A_00C_0_DATA_SIZE = ABSOLUTE(ST0A_00C_ST0A_00C_0_DATA_END - ST0A_00C_ST0A_00C_0_DATA_START);
    }
    __romPos += SIZEOF(.ST0A_00C_ST0A_00C_0);
    __romPos = ALIGN(__romPos, 16);
    ST0A_00C_ST0A_00C_0_ROM_END = __romPos;
    ST0A_00C_ST0A_00C_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
