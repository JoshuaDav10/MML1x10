SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_ST11_4_header_ROM_START = __romPos;
    ST11_ST11_4_header_VRAM = ADDR(.ST11_ST11_4_header);
    .ST11_ST11_4_header : AT(ST11_ST11_4_header_ROM_START) SUBALIGN(16)
    {
        ST11_ST11_4_header_DATA_START = .;
        ST11_ST11_4_header_s = .;
        build/asm/ST11/ovl4__SCR_DATA_ST11.HED/ST11_ST11_4_header.s.o(.data);
        ST11_ST11_4_header_DATA_END = .;
        ST11_ST11_4_header_DATA_SIZE = ABSOLUTE(ST11_ST11_4_header_DATA_END - ST11_ST11_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_ST11_4_header);
    ST11_ST11_4_header_ROM_END = __romPos;
    ST11_ST11_4_header_VRAM_END = .;

    ST11_ST11_4_ROM_START = __romPos;
    ST11_ST11_4_VRAM = ADDR(.ST11_ST11_4);
    .ST11_ST11_4 0x8013A000 : AT(ST11_ST11_4_ROM_START) SUBALIGN(4)
    {
        ST11_ST11_4_DATA_START = .;
        ST11_4_data__s = .;
        build/asm/ST11/ovl4__SCR_DATA_ST11.HED/data/ST11_4.data.s.o(.data);
        ST11_ST11_4_DATA_END = .;
        ST11_ST11_4_DATA_SIZE = ABSOLUTE(ST11_ST11_4_DATA_END - ST11_ST11_4_DATA_START);
    }
    __romPos += SIZEOF(.ST11_ST11_4);
    __romPos = ALIGN(__romPos, 16);
    ST11_ST11_4_ROM_END = __romPos;
    ST11_ST11_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
