SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_00_ST12_00_0_header_ROM_START = __romPos;
    ST12_00_ST12_00_0_header_VRAM = ADDR(.ST12_00_ST12_00_0_header);
    .ST12_00_ST12_00_0_header : AT(ST12_00_ST12_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST12_00_ST12_00_0_header_DATA_START = .;
        ST12_00_ST12_00_0_header_s = .;
        build/asm/ST12_00/ovl0__EMBIN_ST12_00.EBD/ST12_00_ST12_00_0_header.s.o(.data);
        ST12_00_ST12_00_0_header_DATA_END = .;
        ST12_00_ST12_00_0_header_DATA_SIZE = ABSOLUTE(ST12_00_ST12_00_0_header_DATA_END - ST12_00_ST12_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_00_ST12_00_0_header);
    ST12_00_ST12_00_0_header_ROM_END = __romPos;
    ST12_00_ST12_00_0_header_VRAM_END = .;

    ST12_00_ST12_00_0_ROM_START = __romPos;
    ST12_00_ST12_00_0_VRAM = ADDR(.ST12_00_ST12_00_0);
    .ST12_00_ST12_00_0 0x8016C000 : AT(ST12_00_ST12_00_0_ROM_START) SUBALIGN(4)
    {
        ST12_00_ST12_00_0_DATA_START = .;
        ST12_00_0_data__s = .;
        build/asm/ST12_00/ovl0__EMBIN_ST12_00.EBD/data/ST12_00_0.data.s.o(.data);
        ST12_00_ST12_00_0_DATA_END = .;
        ST12_00_ST12_00_0_DATA_SIZE = ABSOLUTE(ST12_00_ST12_00_0_DATA_END - ST12_00_ST12_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST12_00_ST12_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST12_00_ST12_00_0_ROM_END = __romPos;
    ST12_00_ST12_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
