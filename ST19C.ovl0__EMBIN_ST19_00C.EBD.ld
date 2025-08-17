SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19C_ST19_00C_0_header_ROM_START = __romPos;
    ST19C_ST19_00C_0_header_VRAM = ADDR(.ST19C_ST19_00C_0_header);
    .ST19C_ST19_00C_0_header : AT(ST19C_ST19_00C_0_header_ROM_START) SUBALIGN(16)
    {
        ST19C_ST19_00C_0_header_DATA_START = .;
        ST19C_ST19_00C_0_header_s = .;
        build/asm/ST19C/ovl0__EMBIN_ST19_00C.EBD/ST19C_ST19_00C_0_header.s.o(.data);
        ST19C_ST19_00C_0_header_DATA_END = .;
        ST19C_ST19_00C_0_header_DATA_SIZE = ABSOLUTE(ST19C_ST19_00C_0_header_DATA_END - ST19C_ST19_00C_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_ST19_00C_0_header);
    ST19C_ST19_00C_0_header_ROM_END = __romPos;
    ST19C_ST19_00C_0_header_VRAM_END = .;

    ST19C_ST19_00C_0_ROM_START = __romPos;
    ST19C_ST19_00C_0_VRAM = ADDR(.ST19C_ST19_00C_0);
    .ST19C_ST19_00C_0 0x8016C000 : AT(ST19C_ST19_00C_0_ROM_START) SUBALIGN(4)
    {
        ST19C_ST19_00C_0_DATA_START = .;
        ST19_00C_0_data__s = .;
        build/asm/ST19C/ovl0__EMBIN_ST19_00C.EBD/data/ST19_00C_0.data.s.o(.data);
        ST19C_ST19_00C_0_DATA_END = .;
        ST19C_ST19_00C_0_DATA_SIZE = ABSOLUTE(ST19C_ST19_00C_0_DATA_END - ST19C_ST19_00C_0_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_ST19_00C_0);
    __romPos = ALIGN(__romPos, 16);
    ST19C_ST19_00C_0_ROM_END = __romPos;
    ST19C_ST19_00C_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
