SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11B_ST11_4_header_ROM_START = __romPos;
    ST11B_ST11_4_header_VRAM = ADDR(.ST11B_ST11_4_header);
    .ST11B_ST11_4_header : AT(ST11B_ST11_4_header_ROM_START) SUBALIGN(16)
    {
        ST11B_ST11_4_header_DATA_START = .;
        ST11B_ST11_4_header_s = .;
        build/asm/ST11B/ovl4__SCR_DATA_ST11.HED/ST11B_ST11_4_header.s.o(.data);
        ST11B_ST11_4_header_DATA_END = .;
        ST11B_ST11_4_header_DATA_SIZE = ABSOLUTE(ST11B_ST11_4_header_DATA_END - ST11B_ST11_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_4_header);
    ST11B_ST11_4_header_ROM_END = __romPos;
    ST11B_ST11_4_header_VRAM_END = .;

    ST11B_ST11_4_ROM_START = __romPos;
    ST11B_ST11_4_VRAM = ADDR(.ST11B_ST11_4);
    .ST11B_ST11_4 0x8013A000 : AT(ST11B_ST11_4_ROM_START) SUBALIGN(4)
    {
        ST11B_ST11_4_DATA_START = .;
        ST11_4_data__s = .;
        build/asm/ST11B/ovl4__SCR_DATA_ST11.HED/data/ST11_4.data.s.o(.data);
        ST11B_ST11_4_DATA_END = .;
        ST11B_ST11_4_DATA_SIZE = ABSOLUTE(ST11B_ST11_4_DATA_END - ST11B_ST11_4_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_4);
    __romPos = ALIGN(__romPos, 16);
    ST11B_ST11_4_ROM_END = __romPos;
    ST11B_ST11_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
