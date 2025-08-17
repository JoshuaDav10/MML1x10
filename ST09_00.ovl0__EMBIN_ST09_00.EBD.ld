SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_00_ST09_00_0_header_ROM_START = __romPos;
    ST09_00_ST09_00_0_header_VRAM = ADDR(.ST09_00_ST09_00_0_header);
    .ST09_00_ST09_00_0_header : AT(ST09_00_ST09_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST09_00_ST09_00_0_header_DATA_START = .;
        ST09_00_ST09_00_0_header_s = .;
        build/asm/ST09_00/ovl0__EMBIN_ST09_00.EBD/ST09_00_ST09_00_0_header.s.o(.data);
        ST09_00_ST09_00_0_header_DATA_END = .;
        ST09_00_ST09_00_0_header_DATA_SIZE = ABSOLUTE(ST09_00_ST09_00_0_header_DATA_END - ST09_00_ST09_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_00_ST09_00_0_header);
    ST09_00_ST09_00_0_header_ROM_END = __romPos;
    ST09_00_ST09_00_0_header_VRAM_END = .;

    ST09_00_ST09_00_0_ROM_START = __romPos;
    ST09_00_ST09_00_0_VRAM = ADDR(.ST09_00_ST09_00_0);
    .ST09_00_ST09_00_0 0x8016C000 : AT(ST09_00_ST09_00_0_ROM_START) SUBALIGN(4)
    {
        ST09_00_ST09_00_0_DATA_START = .;
        ST09_00_0_data__s = .;
        build/asm/ST09_00/ovl0__EMBIN_ST09_00.EBD/data/ST09_00_0.data.s.o(.data);
        ST09_00_ST09_00_0_DATA_END = .;
        ST09_00_ST09_00_0_DATA_SIZE = ABSOLUTE(ST09_00_ST09_00_0_DATA_END - ST09_00_ST09_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST09_00_ST09_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST09_00_ST09_00_0_ROM_END = __romPos;
    ST09_00_ST09_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
