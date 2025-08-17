SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_00_ST16_00A_0_header_ROM_START = __romPos;
    ST16_00_ST16_00A_0_header_VRAM = ADDR(.ST16_00_ST16_00A_0_header);
    .ST16_00_ST16_00A_0_header : AT(ST16_00_ST16_00A_0_header_ROM_START) SUBALIGN(16)
    {
        ST16_00_ST16_00A_0_header_DATA_START = .;
        ST16_00_ST16_00A_0_header_s = .;
        build/asm/ST16_00/ovl0__EMBIN_ST16_00A.EBD/ST16_00_ST16_00A_0_header.s.o(.data);
        ST16_00_ST16_00A_0_header_DATA_END = .;
        ST16_00_ST16_00A_0_header_DATA_SIZE = ABSOLUTE(ST16_00_ST16_00A_0_header_DATA_END - ST16_00_ST16_00A_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00_ST16_00A_0_header);
    ST16_00_ST16_00A_0_header_ROM_END = __romPos;
    ST16_00_ST16_00A_0_header_VRAM_END = .;

    ST16_00_ST16_00A_0_ROM_START = __romPos;
    ST16_00_ST16_00A_0_VRAM = ADDR(.ST16_00_ST16_00A_0);
    .ST16_00_ST16_00A_0 0x8016C000 : AT(ST16_00_ST16_00A_0_ROM_START) SUBALIGN(4)
    {
        ST16_00_ST16_00A_0_DATA_START = .;
        ST16_00A_0_data__s = .;
        build/asm/ST16_00/ovl0__EMBIN_ST16_00A.EBD/data/ST16_00A_0.data.s.o(.data);
        ST16_00_ST16_00A_0_DATA_END = .;
        ST16_00_ST16_00A_0_DATA_SIZE = ABSOLUTE(ST16_00_ST16_00A_0_DATA_END - ST16_00_ST16_00A_0_DATA_START);
    }
    __romPos += SIZEOF(.ST16_00_ST16_00A_0);
    __romPos = ALIGN(__romPos, 16);
    ST16_00_ST16_00A_0_ROM_END = __romPos;
    ST16_00_ST16_00A_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
