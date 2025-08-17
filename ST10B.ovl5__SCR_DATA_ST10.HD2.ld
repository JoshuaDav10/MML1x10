SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10B_ST10_5_header_ROM_START = __romPos;
    ST10B_ST10_5_header_VRAM = ADDR(.ST10B_ST10_5_header);
    .ST10B_ST10_5_header : AT(ST10B_ST10_5_header_ROM_START) SUBALIGN(16)
    {
        ST10B_ST10_5_header_DATA_START = .;
        ST10B_ST10_5_header_s = .;
        build/asm/ST10B/ovl5__SCR_DATA_ST10.HD2/ST10B_ST10_5_header.s.o(.data);
        ST10B_ST10_5_header_DATA_END = .;
        ST10B_ST10_5_header_DATA_SIZE = ABSOLUTE(ST10B_ST10_5_header_DATA_END - ST10B_ST10_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_5_header);
    ST10B_ST10_5_header_ROM_END = __romPos;
    ST10B_ST10_5_header_VRAM_END = .;

    ST10B_ST10_5_ROM_START = __romPos;
    ST10B_ST10_5_VRAM = ADDR(.ST10B_ST10_5);
    .ST10B_ST10_5 0x80139F00 : AT(ST10B_ST10_5_ROM_START) SUBALIGN(4)
    {
        ST10B_ST10_5_DATA_START = .;
        ST10_5_data__s = .;
        build/asm/ST10B/ovl5__SCR_DATA_ST10.HD2/data/ST10_5.data.s.o(.data);
        ST10B_ST10_5_DATA_END = .;
        ST10B_ST10_5_DATA_SIZE = ABSOLUTE(ST10B_ST10_5_DATA_END - ST10B_ST10_5_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_5);
    __romPos = ALIGN(__romPos, 16);
    ST10B_ST10_5_ROM_END = __romPos;
    ST10B_ST10_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
