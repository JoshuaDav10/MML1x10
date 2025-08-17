SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST00_00_ST00_00_0_header_ROM_START = __romPos;
    ST00_00_ST00_00_0_header_VRAM = ADDR(.ST00_00_ST00_00_0_header);
    .ST00_00_ST00_00_0_header : AT(ST00_00_ST00_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST00_00_ST00_00_0_header_DATA_START = .;
        ST00_00_ST00_00_0_header_s = .;
        build/asm/ST00_00/ovl0__EMBIN_ST00_00.EBD/ST00_00_ST00_00_0_header.s.o(.data);
        ST00_00_ST00_00_0_header_DATA_END = .;
        ST00_00_ST00_00_0_header_DATA_SIZE = ABSOLUTE(ST00_00_ST00_00_0_header_DATA_END - ST00_00_ST00_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST00_00_ST00_00_0_header);
    ST00_00_ST00_00_0_header_ROM_END = __romPos;
    ST00_00_ST00_00_0_header_VRAM_END = .;

    ST00_00_ST00_00_0_ROM_START = __romPos;
    ST00_00_ST00_00_0_VRAM = ADDR(.ST00_00_ST00_00_0);
    .ST00_00_ST00_00_0 0x8016C000 : AT(ST00_00_ST00_00_0_ROM_START) SUBALIGN(4)
    {
        ST00_00_ST00_00_0_DATA_START = .;
        ST00_00_0_data__s = .;
        build/asm/ST00_00/ovl0__EMBIN_ST00_00.EBD/data/ST00_00_0.data.s.o(.data);
        ST00_00_ST00_00_0_DATA_END = .;
        ST00_00_ST00_00_0_DATA_SIZE = ABSOLUTE(ST00_00_ST00_00_0_DATA_END - ST00_00_ST00_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST00_00_ST00_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST00_00_ST00_00_0_ROM_END = __romPos;
    ST00_00_ST00_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
