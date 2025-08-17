SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11B_ST11_3_header_ROM_START = __romPos;
    ST11B_ST11_3_header_VRAM = ADDR(.ST11B_ST11_3_header);
    .ST11B_ST11_3_header : AT(ST11B_ST11_3_header_ROM_START) SUBALIGN(16)
    {
        ST11B_ST11_3_header_DATA_START = .;
        ST11B_ST11_3_header_s = .;
        build/asm/ST11B/ovl3__SCR_DATA_ST11.STG/ST11B_ST11_3_header.s.o(.data);
        ST11B_ST11_3_header_DATA_END = .;
        ST11B_ST11_3_header_DATA_SIZE = ABSOLUTE(ST11B_ST11_3_header_DATA_END - ST11B_ST11_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_3_header);
    ST11B_ST11_3_header_ROM_END = __romPos;
    ST11B_ST11_3_header_VRAM_END = .;

    ST11B_ST11_3_ROM_START = __romPos;
    ST11B_ST11_3_VRAM = ADDR(.ST11B_ST11_3);
    .ST11B_ST11_3 0x80194000 : AT(ST11B_ST11_3_ROM_START) SUBALIGN(4)
    {
        ST11B_ST11_3_DATA_START = .;
        ST11_3_data__s = .;
        build/asm/ST11B/ovl3__SCR_DATA_ST11.STG/data/ST11_3.data.s.o(.data);
        ST11B_ST11_3_DATA_END = .;
        ST11B_ST11_3_DATA_SIZE = ABSOLUTE(ST11B_ST11_3_DATA_END - ST11B_ST11_3_DATA_START);
    }
    __romPos += SIZEOF(.ST11B_ST11_3);
    __romPos = ALIGN(__romPos, 16);
    ST11B_ST11_3_ROM_END = __romPos;
    ST11B_ST11_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
