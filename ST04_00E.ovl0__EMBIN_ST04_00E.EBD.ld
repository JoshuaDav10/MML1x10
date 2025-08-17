SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_00E_ST04_00E_0_header_ROM_START = __romPos;
    ST04_00E_ST04_00E_0_header_VRAM = ADDR(.ST04_00E_ST04_00E_0_header);
    .ST04_00E_ST04_00E_0_header : AT(ST04_00E_ST04_00E_0_header_ROM_START) SUBALIGN(16)
    {
        ST04_00E_ST04_00E_0_header_DATA_START = .;
        ST04_00E_ST04_00E_0_header_s = .;
        build/asm/ST04_00E/ovl0__EMBIN_ST04_00E.EBD/ST04_00E_ST04_00E_0_header.s.o(.data);
        ST04_00E_ST04_00E_0_header_DATA_END = .;
        ST04_00E_ST04_00E_0_header_DATA_SIZE = ABSOLUTE(ST04_00E_ST04_00E_0_header_DATA_END - ST04_00E_ST04_00E_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00E_ST04_00E_0_header);
    ST04_00E_ST04_00E_0_header_ROM_END = __romPos;
    ST04_00E_ST04_00E_0_header_VRAM_END = .;

    ST04_00E_ST04_00E_0_ROM_START = __romPos;
    ST04_00E_ST04_00E_0_VRAM = ADDR(.ST04_00E_ST04_00E_0);
    .ST04_00E_ST04_00E_0 0x8016C000 : AT(ST04_00E_ST04_00E_0_ROM_START) SUBALIGN(4)
    {
        ST04_00E_ST04_00E_0_DATA_START = .;
        ST04_00E_0_data__s = .;
        build/asm/ST04_00E/ovl0__EMBIN_ST04_00E.EBD/data/ST04_00E_0.data.s.o(.data);
        ST04_00E_ST04_00E_0_DATA_END = .;
        ST04_00E_ST04_00E_0_DATA_SIZE = ABSOLUTE(ST04_00E_ST04_00E_0_DATA_END - ST04_00E_ST04_00E_0_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00E_ST04_00E_0);
    __romPos = ALIGN(__romPos, 16);
    ST04_00E_ST04_00E_0_ROM_END = __romPos;
    ST04_00E_ST04_00E_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
