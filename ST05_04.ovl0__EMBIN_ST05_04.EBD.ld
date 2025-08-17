SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST05_04_ST05_04_0_header_ROM_START = __romPos;
    ST05_04_ST05_04_0_header_VRAM = ADDR(.ST05_04_ST05_04_0_header);
    .ST05_04_ST05_04_0_header : AT(ST05_04_ST05_04_0_header_ROM_START) SUBALIGN(16)
    {
        ST05_04_ST05_04_0_header_DATA_START = .;
        ST05_04_ST05_04_0_header_s = .;
        build/asm/ST05_04/ovl0__EMBIN_ST05_04.EBD/ST05_04_ST05_04_0_header.s.o(.data);
        ST05_04_ST05_04_0_header_DATA_END = .;
        ST05_04_ST05_04_0_header_DATA_SIZE = ABSOLUTE(ST05_04_ST05_04_0_header_DATA_END - ST05_04_ST05_04_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST05_04_ST05_04_0_header);
    ST05_04_ST05_04_0_header_ROM_END = __romPos;
    ST05_04_ST05_04_0_header_VRAM_END = .;

    ST05_04_ST05_04_0_ROM_START = __romPos;
    ST05_04_ST05_04_0_VRAM = ADDR(.ST05_04_ST05_04_0);
    .ST05_04_ST05_04_0 0x8016C000 : AT(ST05_04_ST05_04_0_ROM_START) SUBALIGN(4)
    {
        ST05_04_ST05_04_0_DATA_START = .;
        ST05_04_0_data__s = .;
        build/asm/ST05_04/ovl0__EMBIN_ST05_04.EBD/data/ST05_04_0.data.s.o(.data);
        ST05_04_ST05_04_0_DATA_END = .;
        ST05_04_ST05_04_0_DATA_SIZE = ABSOLUTE(ST05_04_ST05_04_0_DATA_END - ST05_04_ST05_04_0_DATA_START);
    }
    __romPos += SIZEOF(.ST05_04_ST05_04_0);
    __romPos = ALIGN(__romPos, 16);
    ST05_04_ST05_04_0_ROM_END = __romPos;
    ST05_04_ST05_04_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
