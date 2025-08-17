SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_03_ST19_00D_0_header_ROM_START = __romPos;
    ST19_03_ST19_00D_0_header_VRAM = ADDR(.ST19_03_ST19_00D_0_header);
    .ST19_03_ST19_00D_0_header : AT(ST19_03_ST19_00D_0_header_ROM_START) SUBALIGN(16)
    {
        ST19_03_ST19_00D_0_header_DATA_START = .;
        ST19_03_ST19_00D_0_header_s = .;
        build/asm/ST19_03/ovl0__EMBIN_ST19_00D.EBD/ST19_03_ST19_00D_0_header.s.o(.data);
        ST19_03_ST19_00D_0_header_DATA_END = .;
        ST19_03_ST19_00D_0_header_DATA_SIZE = ABSOLUTE(ST19_03_ST19_00D_0_header_DATA_END - ST19_03_ST19_00D_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_03_ST19_00D_0_header);
    ST19_03_ST19_00D_0_header_ROM_END = __romPos;
    ST19_03_ST19_00D_0_header_VRAM_END = .;

    ST19_03_ST19_00D_0_ROM_START = __romPos;
    ST19_03_ST19_00D_0_VRAM = ADDR(.ST19_03_ST19_00D_0);
    .ST19_03_ST19_00D_0 0x8016C000 : AT(ST19_03_ST19_00D_0_ROM_START) SUBALIGN(4)
    {
        ST19_03_ST19_00D_0_DATA_START = .;
        ST19_00D_0_data__s = .;
        build/asm/ST19_03/ovl0__EMBIN_ST19_00D.EBD/data/ST19_00D_0.data.s.o(.data);
        ST19_03_ST19_00D_0_DATA_END = .;
        ST19_03_ST19_00D_0_DATA_SIZE = ABSOLUTE(ST19_03_ST19_00D_0_DATA_END - ST19_03_ST19_00D_0_DATA_START);
    }
    __romPos += SIZEOF(.ST19_03_ST19_00D_0);
    __romPos = ALIGN(__romPos, 16);
    ST19_03_ST19_00D_0_ROM_END = __romPos;
    ST19_03_ST19_00D_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
