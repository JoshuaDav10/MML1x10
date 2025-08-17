SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_02_ST10_01_0_header_ROM_START = __romPos;
    ST10_02_ST10_01_0_header_VRAM = ADDR(.ST10_02_ST10_01_0_header);
    .ST10_02_ST10_01_0_header : AT(ST10_02_ST10_01_0_header_ROM_START) SUBALIGN(16)
    {
        ST10_02_ST10_01_0_header_DATA_START = .;
        ST10_02_ST10_01_0_header_s = .;
        build/asm/ST10_02/ovl0__EMBIN_ST10_01.EBD/ST10_02_ST10_01_0_header.s.o(.data);
        ST10_02_ST10_01_0_header_DATA_END = .;
        ST10_02_ST10_01_0_header_DATA_SIZE = ABSOLUTE(ST10_02_ST10_01_0_header_DATA_END - ST10_02_ST10_01_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_02_ST10_01_0_header);
    ST10_02_ST10_01_0_header_ROM_END = __romPos;
    ST10_02_ST10_01_0_header_VRAM_END = .;

    ST10_02_ST10_01_0_ROM_START = __romPos;
    ST10_02_ST10_01_0_VRAM = ADDR(.ST10_02_ST10_01_0);
    .ST10_02_ST10_01_0 0x8016C000 : AT(ST10_02_ST10_01_0_ROM_START) SUBALIGN(4)
    {
        ST10_02_ST10_01_0_DATA_START = .;
        ST10_01_0_data__s = .;
        build/asm/ST10_02/ovl0__EMBIN_ST10_01.EBD/data/ST10_01_0.data.s.o(.data);
        ST10_02_ST10_01_0_DATA_END = .;
        ST10_02_ST10_01_0_DATA_SIZE = ABSOLUTE(ST10_02_ST10_01_0_DATA_END - ST10_02_ST10_01_0_DATA_START);
    }
    __romPos += SIZEOF(.ST10_02_ST10_01_0);
    __romPos = ALIGN(__romPos, 16);
    ST10_02_ST10_01_0_ROM_END = __romPos;
    ST10_02_ST10_01_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
