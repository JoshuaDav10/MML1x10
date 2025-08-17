SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_ST03_4_header_ROM_START = __romPos;
    ST03_ST03_4_header_VRAM = ADDR(.ST03_ST03_4_header);
    .ST03_ST03_4_header : AT(ST03_ST03_4_header_ROM_START) SUBALIGN(16)
    {
        ST03_ST03_4_header_DATA_START = .;
        ST03_ST03_4_header_s = .;
        build/asm/ST03/ovl4__SCR_DATA_ST03.HED/ST03_ST03_4_header.s.o(.data);
        ST03_ST03_4_header_DATA_END = .;
        ST03_ST03_4_header_DATA_SIZE = ABSOLUTE(ST03_ST03_4_header_DATA_END - ST03_ST03_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_ST03_4_header);
    ST03_ST03_4_header_ROM_END = __romPos;
    ST03_ST03_4_header_VRAM_END = .;

    ST03_ST03_4_ROM_START = __romPos;
    ST03_ST03_4_VRAM = ADDR(.ST03_ST03_4);
    .ST03_ST03_4 0x8013A000 : AT(ST03_ST03_4_ROM_START) SUBALIGN(4)
    {
        ST03_ST03_4_DATA_START = .;
        ST03_4_data__s = .;
        build/asm/ST03/ovl4__SCR_DATA_ST03.HED/data/ST03_4.data.s.o(.data);
        ST03_ST03_4_DATA_END = .;
        ST03_ST03_4_DATA_SIZE = ABSOLUTE(ST03_ST03_4_DATA_END - ST03_ST03_4_DATA_START);
    }
    __romPos += SIZEOF(.ST03_ST03_4);
    __romPos = ALIGN(__romPos, 16);
    ST03_ST03_4_ROM_END = __romPos;
    ST03_ST03_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
