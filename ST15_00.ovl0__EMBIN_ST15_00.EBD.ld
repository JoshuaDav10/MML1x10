SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST15_00_ST15_00_0_header_ROM_START = __romPos;
    ST15_00_ST15_00_0_header_VRAM = ADDR(.ST15_00_ST15_00_0_header);
    .ST15_00_ST15_00_0_header : AT(ST15_00_ST15_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST15_00_ST15_00_0_header_DATA_START = .;
        ST15_00_ST15_00_0_header_s = .;
        build/asm/ST15_00/ovl0__EMBIN_ST15_00.EBD/ST15_00_ST15_00_0_header.s.o(.data);
        ST15_00_ST15_00_0_header_DATA_END = .;
        ST15_00_ST15_00_0_header_DATA_SIZE = ABSOLUTE(ST15_00_ST15_00_0_header_DATA_END - ST15_00_ST15_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST15_00_ST15_00_0_header);
    ST15_00_ST15_00_0_header_ROM_END = __romPos;
    ST15_00_ST15_00_0_header_VRAM_END = .;

    ST15_00_ST15_00_0_ROM_START = __romPos;
    ST15_00_ST15_00_0_VRAM = ADDR(.ST15_00_ST15_00_0);
    .ST15_00_ST15_00_0 0x8016C000 : AT(ST15_00_ST15_00_0_ROM_START) SUBALIGN(4)
    {
        ST15_00_ST15_00_0_DATA_START = .;
        ST15_00_0_data__s = .;
        build/asm/ST15_00/ovl0__EMBIN_ST15_00.EBD/data/ST15_00_0.data.s.o(.data);
        ST15_00_ST15_00_0_DATA_END = .;
        ST15_00_ST15_00_0_DATA_SIZE = ABSOLUTE(ST15_00_ST15_00_0_DATA_END - ST15_00_ST15_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST15_00_ST15_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST15_00_ST15_00_0_ROM_END = __romPos;
    ST15_00_ST15_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
