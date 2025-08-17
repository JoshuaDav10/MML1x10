SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_00_ST18_00_0_header_ROM_START = __romPos;
    ST18_00_ST18_00_0_header_VRAM = ADDR(.ST18_00_ST18_00_0_header);
    .ST18_00_ST18_00_0_header : AT(ST18_00_ST18_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST18_00_ST18_00_0_header_DATA_START = .;
        ST18_00_ST18_00_0_header_s = .;
        build/asm/ST18_00/ovl0__EMBIN_ST18_00.EBD/ST18_00_ST18_00_0_header.s.o(.data);
        ST18_00_ST18_00_0_header_DATA_END = .;
        ST18_00_ST18_00_0_header_DATA_SIZE = ABSOLUTE(ST18_00_ST18_00_0_header_DATA_END - ST18_00_ST18_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_00_ST18_00_0_header);
    ST18_00_ST18_00_0_header_ROM_END = __romPos;
    ST18_00_ST18_00_0_header_VRAM_END = .;

    ST18_00_ST18_00_0_ROM_START = __romPos;
    ST18_00_ST18_00_0_VRAM = ADDR(.ST18_00_ST18_00_0);
    .ST18_00_ST18_00_0 0x8016C000 : AT(ST18_00_ST18_00_0_ROM_START) SUBALIGN(4)
    {
        ST18_00_ST18_00_0_DATA_START = .;
        ST18_00_0_data__s = .;
        build/asm/ST18_00/ovl0__EMBIN_ST18_00.EBD/data/ST18_00_0.data.s.o(.data);
        ST18_00_ST18_00_0_DATA_END = .;
        ST18_00_ST18_00_0_DATA_SIZE = ABSOLUTE(ST18_00_ST18_00_0_DATA_END - ST18_00_ST18_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST18_00_ST18_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST18_00_ST18_00_0_ROM_END = __romPos;
    ST18_00_ST18_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
