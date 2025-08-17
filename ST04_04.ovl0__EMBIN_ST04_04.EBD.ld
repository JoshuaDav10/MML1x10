SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_04_ST04_04_0_header_ROM_START = __romPos;
    ST04_04_ST04_04_0_header_VRAM = ADDR(.ST04_04_ST04_04_0_header);
    .ST04_04_ST04_04_0_header : AT(ST04_04_ST04_04_0_header_ROM_START) SUBALIGN(16)
    {
        ST04_04_ST04_04_0_header_DATA_START = .;
        ST04_04_ST04_04_0_header_s = .;
        build/asm/ST04_04/ovl0__EMBIN_ST04_04.EBD/ST04_04_ST04_04_0_header.s.o(.data);
        ST04_04_ST04_04_0_header_DATA_END = .;
        ST04_04_ST04_04_0_header_DATA_SIZE = ABSOLUTE(ST04_04_ST04_04_0_header_DATA_END - ST04_04_ST04_04_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_04_ST04_04_0_header);
    ST04_04_ST04_04_0_header_ROM_END = __romPos;
    ST04_04_ST04_04_0_header_VRAM_END = .;

    ST04_04_ST04_04_0_ROM_START = __romPos;
    ST04_04_ST04_04_0_VRAM = ADDR(.ST04_04_ST04_04_0);
    .ST04_04_ST04_04_0 0x8016C000 : AT(ST04_04_ST04_04_0_ROM_START) SUBALIGN(4)
    {
        ST04_04_ST04_04_0_DATA_START = .;
        ST04_04_0_data__s = .;
        build/asm/ST04_04/ovl0__EMBIN_ST04_04.EBD/data/ST04_04_0.data.s.o(.data);
        ST04_04_ST04_04_0_DATA_END = .;
        ST04_04_ST04_04_0_DATA_SIZE = ABSOLUTE(ST04_04_ST04_04_0_DATA_END - ST04_04_ST04_04_0_DATA_START);
    }
    __romPos += SIZEOF(.ST04_04_ST04_04_0);
    __romPos = ALIGN(__romPos, 16);
    ST04_04_ST04_04_0_ROM_END = __romPos;
    ST04_04_ST04_04_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
