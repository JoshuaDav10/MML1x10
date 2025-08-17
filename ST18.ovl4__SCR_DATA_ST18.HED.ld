SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST18_ST18_4_header_ROM_START = __romPos;
    ST18_ST18_4_header_VRAM = ADDR(.ST18_ST18_4_header);
    .ST18_ST18_4_header : AT(ST18_ST18_4_header_ROM_START) SUBALIGN(16)
    {
        ST18_ST18_4_header_DATA_START = .;
        ST18_ST18_4_header_s = .;
        build/asm/ST18/ovl4__SCR_DATA_ST18.HED/ST18_ST18_4_header.s.o(.data);
        ST18_ST18_4_header_DATA_END = .;
        ST18_ST18_4_header_DATA_SIZE = ABSOLUTE(ST18_ST18_4_header_DATA_END - ST18_ST18_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_4_header);
    ST18_ST18_4_header_ROM_END = __romPos;
    ST18_ST18_4_header_VRAM_END = .;

    ST18_ST18_4_ROM_START = __romPos;
    ST18_ST18_4_VRAM = ADDR(.ST18_ST18_4);
    .ST18_ST18_4 0x8013A000 : AT(ST18_ST18_4_ROM_START) SUBALIGN(4)
    {
        ST18_ST18_4_DATA_START = .;
        ST18_4_data__s = .;
        build/asm/ST18/ovl4__SCR_DATA_ST18.HED/data/ST18_4.data.s.o(.data);
        ST18_ST18_4_DATA_END = .;
        ST18_ST18_4_DATA_SIZE = ABSOLUTE(ST18_ST18_4_DATA_END - ST18_ST18_4_DATA_START);
    }
    __romPos += SIZEOF(.ST18_ST18_4);
    __romPos = ALIGN(__romPos, 16);
    ST18_ST18_4_ROM_END = __romPos;
    ST18_ST18_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
