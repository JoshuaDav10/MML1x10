SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST07_ST07_4_header_ROM_START = __romPos;
    ST07_ST07_4_header_VRAM = ADDR(.ST07_ST07_4_header);
    .ST07_ST07_4_header : AT(ST07_ST07_4_header_ROM_START) SUBALIGN(16)
    {
        ST07_ST07_4_header_DATA_START = .;
        ST07_ST07_4_header_s = .;
        build/asm/ST07/ovl4__SCR_DATA_ST07.HED/ST07_ST07_4_header.s.o(.data);
        ST07_ST07_4_header_DATA_END = .;
        ST07_ST07_4_header_DATA_SIZE = ABSOLUTE(ST07_ST07_4_header_DATA_END - ST07_ST07_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_4_header);
    ST07_ST07_4_header_ROM_END = __romPos;
    ST07_ST07_4_header_VRAM_END = .;

    ST07_ST07_4_ROM_START = __romPos;
    ST07_ST07_4_VRAM = ADDR(.ST07_ST07_4);
    .ST07_ST07_4 0x8013A000 : AT(ST07_ST07_4_ROM_START) SUBALIGN(4)
    {
        ST07_ST07_4_DATA_START = .;
        ST07_4_data__s = .;
        build/asm/ST07/ovl4__SCR_DATA_ST07.HED/data/ST07_4.data.s.o(.data);
        ST07_ST07_4_DATA_END = .;
        ST07_ST07_4_DATA_SIZE = ABSOLUTE(ST07_ST07_4_DATA_END - ST07_ST07_4_DATA_START);
    }
    __romPos += SIZEOF(.ST07_ST07_4);
    __romPos = ALIGN(__romPos, 16);
    ST07_ST07_4_ROM_END = __romPos;
    ST07_ST07_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
