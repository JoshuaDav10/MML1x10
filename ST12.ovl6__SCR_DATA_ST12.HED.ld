SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_ST12_6_header_ROM_START = __romPos;
    ST12_ST12_6_header_VRAM = ADDR(.ST12_ST12_6_header);
    .ST12_ST12_6_header : AT(ST12_ST12_6_header_ROM_START) SUBALIGN(16)
    {
        ST12_ST12_6_header_DATA_START = .;
        ST12_ST12_6_header_s = .;
        build/asm/ST12/ovl6__SCR_DATA_ST12.HED/ST12_ST12_6_header.s.o(.data);
        ST12_ST12_6_header_DATA_END = .;
        ST12_ST12_6_header_DATA_SIZE = ABSOLUTE(ST12_ST12_6_header_DATA_END - ST12_ST12_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_6_header);
    ST12_ST12_6_header_ROM_END = __romPos;
    ST12_ST12_6_header_VRAM_END = .;

    ST12_ST12_6_ROM_START = __romPos;
    ST12_ST12_6_VRAM = ADDR(.ST12_ST12_6);
    .ST12_ST12_6 0x8013A000 : AT(ST12_ST12_6_ROM_START) SUBALIGN(4)
    {
        ST12_ST12_6_DATA_START = .;
        ST12_6_data__s = .;
        build/asm/ST12/ovl6__SCR_DATA_ST12.HED/data/ST12_6.data.s.o(.data);
        ST12_ST12_6_DATA_END = .;
        ST12_ST12_6_DATA_SIZE = ABSOLUTE(ST12_ST12_6_DATA_END - ST12_ST12_6_DATA_START);
    }
    __romPos += SIZEOF(.ST12_ST12_6);
    __romPos = ALIGN(__romPos, 16);
    ST12_ST12_6_ROM_END = __romPos;
    ST12_ST12_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
