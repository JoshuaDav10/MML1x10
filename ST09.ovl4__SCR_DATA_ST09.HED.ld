SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_ST09_4_header_ROM_START = __romPos;
    ST09_ST09_4_header_VRAM = ADDR(.ST09_ST09_4_header);
    .ST09_ST09_4_header : AT(ST09_ST09_4_header_ROM_START) SUBALIGN(16)
    {
        ST09_ST09_4_header_DATA_START = .;
        ST09_ST09_4_header_s = .;
        build/asm/ST09/ovl4__SCR_DATA_ST09.HED/ST09_ST09_4_header.s.o(.data);
        ST09_ST09_4_header_DATA_END = .;
        ST09_ST09_4_header_DATA_SIZE = ABSOLUTE(ST09_ST09_4_header_DATA_END - ST09_ST09_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_4_header);
    ST09_ST09_4_header_ROM_END = __romPos;
    ST09_ST09_4_header_VRAM_END = .;

    ST09_ST09_4_ROM_START = __romPos;
    ST09_ST09_4_VRAM = ADDR(.ST09_ST09_4);
    .ST09_ST09_4 0x8013A000 : AT(ST09_ST09_4_ROM_START) SUBALIGN(4)
    {
        ST09_ST09_4_DATA_START = .;
        ST09_4_data__s = .;
        build/asm/ST09/ovl4__SCR_DATA_ST09.HED/data/ST09_4.data.s.o(.data);
        ST09_ST09_4_DATA_END = .;
        ST09_ST09_4_DATA_SIZE = ABSOLUTE(ST09_ST09_4_DATA_END - ST09_ST09_4_DATA_START);
    }
    __romPos += SIZEOF(.ST09_ST09_4);
    __romPos = ALIGN(__romPos, 16);
    ST09_ST09_4_ROM_END = __romPos;
    ST09_ST09_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
