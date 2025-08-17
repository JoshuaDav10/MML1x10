SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_4_header_ROM_START = __romPos;
    ST17_ST17_4_header_VRAM = ADDR(.ST17_ST17_4_header);
    .ST17_ST17_4_header : AT(ST17_ST17_4_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_4_header_DATA_START = .;
        ST17_ST17_4_header_s = .;
        build/asm/ST17/ovl4__SCR_DATA_ST17.HED/ST17_ST17_4_header.s.o(.data);
        ST17_ST17_4_header_DATA_END = .;
        ST17_ST17_4_header_DATA_SIZE = ABSOLUTE(ST17_ST17_4_header_DATA_END - ST17_ST17_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_4_header);
    ST17_ST17_4_header_ROM_END = __romPos;
    ST17_ST17_4_header_VRAM_END = .;

    ST17_ST17_4_ROM_START = __romPos;
    ST17_ST17_4_VRAM = ADDR(.ST17_ST17_4);
    .ST17_ST17_4 0x8013A000 : AT(ST17_ST17_4_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_4_DATA_START = .;
        ST17_4_data__s = .;
        build/asm/ST17/ovl4__SCR_DATA_ST17.HED/data/ST17_4.data.s.o(.data);
        ST17_ST17_4_DATA_END = .;
        ST17_ST17_4_DATA_SIZE = ABSOLUTE(ST17_ST17_4_DATA_END - ST17_ST17_4_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_4);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_4_ROM_END = __romPos;
    ST17_ST17_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
