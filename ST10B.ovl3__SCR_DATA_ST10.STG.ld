SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10B_ST10_3_header_ROM_START = __romPos;
    ST10B_ST10_3_header_VRAM = ADDR(.ST10B_ST10_3_header);
    .ST10B_ST10_3_header : AT(ST10B_ST10_3_header_ROM_START) SUBALIGN(16)
    {
        ST10B_ST10_3_header_DATA_START = .;
        ST10B_ST10_3_header_s = .;
        build/asm/ST10B/ovl3__SCR_DATA_ST10.STG/ST10B_ST10_3_header.s.o(.data);
        ST10B_ST10_3_header_DATA_END = .;
        ST10B_ST10_3_header_DATA_SIZE = ABSOLUTE(ST10B_ST10_3_header_DATA_END - ST10B_ST10_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_3_header);
    ST10B_ST10_3_header_ROM_END = __romPos;
    ST10B_ST10_3_header_VRAM_END = .;

    ST10B_ST10_3_ROM_START = __romPos;
    ST10B_ST10_3_VRAM = ADDR(.ST10B_ST10_3);
    .ST10B_ST10_3 0x80194000 : AT(ST10B_ST10_3_ROM_START) SUBALIGN(4)
    {
        ST10B_ST10_3_DATA_START = .;
        ST10_3_data__s = .;
        build/asm/ST10B/ovl3__SCR_DATA_ST10.STG/data/ST10_3.data.s.o(.data);
        ST10B_ST10_3_DATA_END = .;
        ST10B_ST10_3_DATA_SIZE = ABSOLUTE(ST10B_ST10_3_DATA_END - ST10B_ST10_3_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_3);
    __romPos = ALIGN(__romPos, 16);
    ST10B_ST10_3_ROM_END = __romPos;
    ST10B_ST10_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
