SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_ST16_4_header_ROM_START = __romPos;
    ST16_ST16_4_header_VRAM = ADDR(.ST16_ST16_4_header);
    .ST16_ST16_4_header : AT(ST16_ST16_4_header_ROM_START) SUBALIGN(16)
    {
        ST16_ST16_4_header_DATA_START = .;
        ST16_ST16_4_header_s = .;
        build/asm/ST16/ovl4__SCR_DATA_ST16.HED/ST16_ST16_4_header.s.o(.data);
        ST16_ST16_4_header_DATA_END = .;
        ST16_ST16_4_header_DATA_SIZE = ABSOLUTE(ST16_ST16_4_header_DATA_END - ST16_ST16_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_4_header);
    ST16_ST16_4_header_ROM_END = __romPos;
    ST16_ST16_4_header_VRAM_END = .;

    ST16_ST16_4_ROM_START = __romPos;
    ST16_ST16_4_VRAM = ADDR(.ST16_ST16_4);
    .ST16_ST16_4 0x8013A000 : AT(ST16_ST16_4_ROM_START) SUBALIGN(4)
    {
        ST16_ST16_4_DATA_START = .;
        ST16_4_data__s = .;
        build/asm/ST16/ovl4__SCR_DATA_ST16.HED/data/ST16_4.data.s.o(.data);
        ST16_ST16_4_DATA_END = .;
        ST16_ST16_4_DATA_SIZE = ABSOLUTE(ST16_ST16_4_DATA_END - ST16_ST16_4_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_4);
    __romPos = ALIGN(__romPos, 16);
    ST16_ST16_4_ROM_END = __romPos;
    ST16_ST16_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
