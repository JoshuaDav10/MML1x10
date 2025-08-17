SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_00_ST07_00_0_header_ROM_START = __romPos;
    ST07_00_ST07_00_0_header_VRAM = ADDR(.ST07_00_ST07_00_0_header);
    .ST07_00_ST07_00_0_header : AT(ST07_00_ST07_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST07_00_ST07_00_0_header_DATA_START = .;
        ST07_00_ST07_00_0_header_s = .;
        build/asm/ST07_00/ovl0__EMBIN_ST07_00.EBD/ST07_00_ST07_00_0_header.s.o(.data);
        ST07_00_ST07_00_0_header_DATA_END = .;
        ST07_00_ST07_00_0_header_DATA_SIZE = ABSOLUTE(ST07_00_ST07_00_0_header_DATA_END - ST07_00_ST07_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_00_ST07_00_0_header);
    ST07_00_ST07_00_0_header_ROM_END = __romPos;
    ST07_00_ST07_00_0_header_VRAM_END = .;

    ST07_00_ST07_00_0_ROM_START = __romPos;
    ST07_00_ST07_00_0_VRAM = ADDR(.ST07_00_ST07_00_0);
    .ST07_00_ST07_00_0 0x8016C000 : AT(ST07_00_ST07_00_0_ROM_START) SUBALIGN(4)
    {
        ST07_00_ST07_00_0_DATA_START = .;
        ST07_00_0_data__s = .;
        build/asm/ST07_00/ovl0__EMBIN_ST07_00.EBD/data/ST07_00_0.data.s.o(.data);
        ST07_00_ST07_00_0_DATA_END = .;
        ST07_00_ST07_00_0_DATA_SIZE = ABSOLUTE(ST07_00_ST07_00_0_DATA_END - ST07_00_ST07_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST07_00_ST07_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST07_00_ST07_00_0_ROM_END = __romPos;
    ST07_00_ST07_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
