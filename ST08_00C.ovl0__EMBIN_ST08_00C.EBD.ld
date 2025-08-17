SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST08_00C_ST08_00C_0_header_ROM_START = __romPos;
    ST08_00C_ST08_00C_0_header_VRAM = ADDR(.ST08_00C_ST08_00C_0_header);
    .ST08_00C_ST08_00C_0_header : AT(ST08_00C_ST08_00C_0_header_ROM_START) SUBALIGN(16)
    {
        ST08_00C_ST08_00C_0_header_DATA_START = .;
        ST08_00C_ST08_00C_0_header_s = .;
        build/asm/ST08_00C/ovl0__EMBIN_ST08_00C.EBD/ST08_00C_ST08_00C_0_header.s.o(.data);
        ST08_00C_ST08_00C_0_header_DATA_END = .;
        ST08_00C_ST08_00C_0_header_DATA_SIZE = ABSOLUTE(ST08_00C_ST08_00C_0_header_DATA_END - ST08_00C_ST08_00C_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST08_00C_ST08_00C_0_header);
    ST08_00C_ST08_00C_0_header_ROM_END = __romPos;
    ST08_00C_ST08_00C_0_header_VRAM_END = .;

    ST08_00C_ST08_00C_0_ROM_START = __romPos;
    ST08_00C_ST08_00C_0_VRAM = ADDR(.ST08_00C_ST08_00C_0);
    .ST08_00C_ST08_00C_0 0x8016C000 : AT(ST08_00C_ST08_00C_0_ROM_START) SUBALIGN(4)
    {
        ST08_00C_ST08_00C_0_DATA_START = .;
        ST08_00C_0_data__s = .;
        build/asm/ST08_00C/ovl0__EMBIN_ST08_00C.EBD/data/ST08_00C_0.data.s.o(.data);
        ST08_00C_ST08_00C_0_DATA_END = .;
        ST08_00C_ST08_00C_0_DATA_SIZE = ABSOLUTE(ST08_00C_ST08_00C_0_DATA_END - ST08_00C_ST08_00C_0_DATA_START);
    }
    __romPos += SIZEOF(.ST08_00C_ST08_00C_0);
    __romPos = ALIGN(__romPos, 16);
    ST08_00C_ST08_00C_0_ROM_END = __romPos;
    ST08_00C_ST08_00C_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
