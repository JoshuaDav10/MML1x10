SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_00_ST1A_00_0_header_ROM_START = __romPos;
    ST1A_00_ST1A_00_0_header_VRAM = ADDR(.ST1A_00_ST1A_00_0_header);
    .ST1A_00_ST1A_00_0_header : AT(ST1A_00_ST1A_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST1A_00_ST1A_00_0_header_DATA_START = .;
        ST1A_00_ST1A_00_0_header_s = .;
        build/asm/ST1A_00/ovl0__EMBIN_ST1A_00.EBD/ST1A_00_ST1A_00_0_header.s.o(.data);
        ST1A_00_ST1A_00_0_header_DATA_END = .;
        ST1A_00_ST1A_00_0_header_DATA_SIZE = ABSOLUTE(ST1A_00_ST1A_00_0_header_DATA_END - ST1A_00_ST1A_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_00_ST1A_00_0_header);
    ST1A_00_ST1A_00_0_header_ROM_END = __romPos;
    ST1A_00_ST1A_00_0_header_VRAM_END = .;

    ST1A_00_ST1A_00_0_ROM_START = __romPos;
    ST1A_00_ST1A_00_0_VRAM = ADDR(.ST1A_00_ST1A_00_0);
    .ST1A_00_ST1A_00_0 0x8016C000 : AT(ST1A_00_ST1A_00_0_ROM_START) SUBALIGN(4)
    {
        ST1A_00_ST1A_00_0_DATA_START = .;
        ST1A_00_0_data__s = .;
        build/asm/ST1A_00/ovl0__EMBIN_ST1A_00.EBD/data/ST1A_00_0.data.s.o(.data);
        ST1A_00_ST1A_00_0_DATA_END = .;
        ST1A_00_ST1A_00_0_DATA_SIZE = ABSOLUTE(ST1A_00_ST1A_00_0_DATA_END - ST1A_00_ST1A_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_00_ST1A_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST1A_00_ST1A_00_0_ROM_END = __romPos;
    ST1A_00_ST1A_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
