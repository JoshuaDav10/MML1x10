SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_ST14_8_header_ROM_START = __romPos;
    ST14_ST14_8_header_VRAM = ADDR(.ST14_ST14_8_header);
    .ST14_ST14_8_header : AT(ST14_ST14_8_header_ROM_START) SUBALIGN(16)
    {
        ST14_ST14_8_header_DATA_START = .;
        ST14_ST14_8_header_s = .;
        build/asm/ST14/ovl8__SCR_DATA_ST14.HED/ST14_ST14_8_header.s.o(.data);
        ST14_ST14_8_header_DATA_END = .;
        ST14_ST14_8_header_DATA_SIZE = ABSOLUTE(ST14_ST14_8_header_DATA_END - ST14_ST14_8_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_8_header);
    ST14_ST14_8_header_ROM_END = __romPos;
    ST14_ST14_8_header_VRAM_END = .;

    ST14_ST14_8_ROM_START = __romPos;
    ST14_ST14_8_VRAM = ADDR(.ST14_ST14_8);
    .ST14_ST14_8 0x8013A000 : AT(ST14_ST14_8_ROM_START) SUBALIGN(4)
    {
        ST14_ST14_8_DATA_START = .;
        ST14_8_data__s = .;
        build/asm/ST14/ovl8__SCR_DATA_ST14.HED/data/ST14_8.data.s.o(.data);
        ST14_ST14_8_DATA_END = .;
        ST14_ST14_8_DATA_SIZE = ABSOLUTE(ST14_ST14_8_DATA_END - ST14_ST14_8_DATA_START);
    }
    __romPos += SIZEOF(.ST14_ST14_8);
    __romPos = ALIGN(__romPos, 16);
    ST14_ST14_8_ROM_END = __romPos;
    ST14_ST14_8_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
