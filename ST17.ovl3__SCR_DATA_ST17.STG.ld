SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_3_header_ROM_START = __romPos;
    ST17_ST17_3_header_VRAM = ADDR(.ST17_ST17_3_header);
    .ST17_ST17_3_header : AT(ST17_ST17_3_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_3_header_DATA_START = .;
        ST17_ST17_3_header_s = .;
        build/asm/ST17/ovl3__SCR_DATA_ST17.STG/ST17_ST17_3_header.s.o(.data);
        ST17_ST17_3_header_DATA_END = .;
        ST17_ST17_3_header_DATA_SIZE = ABSOLUTE(ST17_ST17_3_header_DATA_END - ST17_ST17_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_3_header);
    ST17_ST17_3_header_ROM_END = __romPos;
    ST17_ST17_3_header_VRAM_END = .;

    ST17_ST17_3_ROM_START = __romPos;
    ST17_ST17_3_VRAM = ADDR(.ST17_ST17_3);
    .ST17_ST17_3 0x80194000 : AT(ST17_ST17_3_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_3_DATA_START = .;
        ST17_3_data__s = .;
        build/asm/ST17/ovl3__SCR_DATA_ST17.STG/data/ST17_3.data.s.o(.data);
        ST17_ST17_3_DATA_END = .;
        ST17_ST17_3_DATA_SIZE = ABSOLUTE(ST17_ST17_3_DATA_END - ST17_ST17_3_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_3);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_3_ROM_END = __romPos;
    ST17_ST17_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
