SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10B_ST10_4_header_ROM_START = __romPos;
    ST10B_ST10_4_header_VRAM = ADDR(.ST10B_ST10_4_header);
    .ST10B_ST10_4_header : AT(ST10B_ST10_4_header_ROM_START) SUBALIGN(16)
    {
        ST10B_ST10_4_header_DATA_START = .;
        ST10B_ST10_4_header_s = .;
        build/asm/ST10B/ovl4__SCR_DATA_ST10.HED/ST10B_ST10_4_header.s.o(.data);
        ST10B_ST10_4_header_DATA_END = .;
        ST10B_ST10_4_header_DATA_SIZE = ABSOLUTE(ST10B_ST10_4_header_DATA_END - ST10B_ST10_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_4_header);
    ST10B_ST10_4_header_ROM_END = __romPos;
    ST10B_ST10_4_header_VRAM_END = .;

    ST10B_ST10_4_ROM_START = __romPos;
    ST10B_ST10_4_VRAM = ADDR(.ST10B_ST10_4);
    .ST10B_ST10_4 0x8013A000 : AT(ST10B_ST10_4_ROM_START) SUBALIGN(4)
    {
        ST10B_ST10_4_DATA_START = .;
        ST10_4_data__s = .;
        build/asm/ST10B/ovl4__SCR_DATA_ST10.HED/data/ST10_4.data.s.o(.data);
        ST10B_ST10_4_DATA_END = .;
        ST10B_ST10_4_DATA_SIZE = ABSOLUTE(ST10B_ST10_4_DATA_END - ST10B_ST10_4_DATA_START);
    }
    __romPos += SIZEOF(.ST10B_ST10_4);
    __romPos = ALIGN(__romPos, 16);
    ST10B_ST10_4_ROM_END = __romPos;
    ST10B_ST10_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
