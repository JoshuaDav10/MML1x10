SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST06_02_ST06_02a_0_header_ROM_START = __romPos;
    ST06_02_ST06_02a_0_header_VRAM = ADDR(.ST06_02_ST06_02a_0_header);
    .ST06_02_ST06_02a_0_header : AT(ST06_02_ST06_02a_0_header_ROM_START) SUBALIGN(16)
    {
        ST06_02_ST06_02a_0_header_DATA_START = .;
        ST06_02_ST06_02a_0_header_s = .;
        build/asm/ST06_02/ovl0__EMBIN_ST06_02a.EBD/ST06_02_ST06_02a_0_header.s.o(.data);
        ST06_02_ST06_02a_0_header_DATA_END = .;
        ST06_02_ST06_02a_0_header_DATA_SIZE = ABSOLUTE(ST06_02_ST06_02a_0_header_DATA_END - ST06_02_ST06_02a_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_ST06_02a_0_header);
    ST06_02_ST06_02a_0_header_ROM_END = __romPos;
    ST06_02_ST06_02a_0_header_VRAM_END = .;

    ST06_02_ST06_02a_0_ROM_START = __romPos;
    ST06_02_ST06_02a_0_VRAM = ADDR(.ST06_02_ST06_02a_0);
    .ST06_02_ST06_02a_0 0x8016C000 : AT(ST06_02_ST06_02a_0_ROM_START) SUBALIGN(4)
    {
        ST06_02_ST06_02a_0_DATA_START = .;
        ST06_02a_0_data__s = .;
        build/asm/ST06_02/ovl0__EMBIN_ST06_02a.EBD/data/ST06_02a_0.data.s.o(.data);
        ST06_02_ST06_02a_0_DATA_END = .;
        ST06_02_ST06_02a_0_DATA_SIZE = ABSOLUTE(ST06_02_ST06_02a_0_DATA_END - ST06_02_ST06_02a_0_DATA_START);
    }
    __romPos += SIZEOF(.ST06_02_ST06_02a_0);
    __romPos = ALIGN(__romPos, 16);
    ST06_02_ST06_02a_0_ROM_END = __romPos;
    ST06_02_ST06_02a_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
