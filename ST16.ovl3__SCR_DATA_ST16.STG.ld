SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST16_ST16_3_header_ROM_START = __romPos;
    ST16_ST16_3_header_VRAM = ADDR(.ST16_ST16_3_header);
    .ST16_ST16_3_header : AT(ST16_ST16_3_header_ROM_START) SUBALIGN(16)
    {
        ST16_ST16_3_header_DATA_START = .;
        ST16_ST16_3_header_s = .;
        build/asm/ST16/ovl3__SCR_DATA_ST16.STG/ST16_ST16_3_header.s.o(.data);
        ST16_ST16_3_header_DATA_END = .;
        ST16_ST16_3_header_DATA_SIZE = ABSOLUTE(ST16_ST16_3_header_DATA_END - ST16_ST16_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_3_header);
    ST16_ST16_3_header_ROM_END = __romPos;
    ST16_ST16_3_header_VRAM_END = .;

    ST16_ST16_3_ROM_START = __romPos;
    ST16_ST16_3_VRAM = ADDR(.ST16_ST16_3);
    .ST16_ST16_3 0x80194000 : AT(ST16_ST16_3_ROM_START) SUBALIGN(4)
    {
        ST16_ST16_3_DATA_START = .;
        ST16_3_data__s = .;
        build/asm/ST16/ovl3__SCR_DATA_ST16.STG/data/ST16_3.data.s.o(.data);
        ST16_ST16_3_DATA_END = .;
        ST16_ST16_3_DATA_SIZE = ABSOLUTE(ST16_ST16_3_DATA_END - ST16_ST16_3_DATA_START);
    }
    __romPos += SIZEOF(.ST16_ST16_3);
    __romPos = ALIGN(__romPos, 16);
    ST16_ST16_3_ROM_END = __romPos;
    ST16_ST16_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
