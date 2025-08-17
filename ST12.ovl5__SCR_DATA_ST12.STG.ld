SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_ST12_5_header_ROM_START = __romPos;
    ST12_ST12_5_header_VRAM = ADDR(.ST12_ST12_5_header);
    .ST12_ST12_5_header : AT(ST12_ST12_5_header_ROM_START) SUBALIGN(16)
    {
        ST12_ST12_5_header_DATA_START = .;
        ST12_ST12_5_header_s = .;
        build/asm/ST12/ovl5__SCR_DATA_ST12.STG/ST12_ST12_5_header.s.o(.data);
        ST12_ST12_5_header_DATA_END = .;
        ST12_ST12_5_header_DATA_SIZE = ABSOLUTE(ST12_ST12_5_header_DATA_END - ST12_ST12_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_5_header);
    ST12_ST12_5_header_ROM_END = __romPos;
    ST12_ST12_5_header_VRAM_END = .;

    ST12_ST12_5_ROM_START = __romPos;
    ST12_ST12_5_VRAM = ADDR(.ST12_ST12_5);
    .ST12_ST12_5 0x80194000 : AT(ST12_ST12_5_ROM_START) SUBALIGN(4)
    {
        ST12_ST12_5_DATA_START = .;
        ST12_5_data__s = .;
        build/asm/ST12/ovl5__SCR_DATA_ST12.STG/data/ST12_5.data.s.o(.data);
        ST12_ST12_5_DATA_END = .;
        ST12_ST12_5_DATA_SIZE = ABSOLUTE(ST12_ST12_5_DATA_END - ST12_ST12_5_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_5);
    __romPos = ALIGN(__romPos, 16);
    ST12_ST12_5_ROM_END = __romPos;
    ST12_ST12_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
