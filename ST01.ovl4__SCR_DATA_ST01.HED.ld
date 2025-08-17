SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST01_ST01_4_header_ROM_START = __romPos;
    ST01_ST01_4_header_VRAM = ADDR(.ST01_ST01_4_header);
    .ST01_ST01_4_header : AT(ST01_ST01_4_header_ROM_START) SUBALIGN(16)
    {
        ST01_ST01_4_header_DATA_START = .;
        ST01_ST01_4_header_s = .;
        build/asm/ST01/ovl4__SCR_DATA_ST01.HED/ST01_ST01_4_header.s.o(.data);
        ST01_ST01_4_header_DATA_END = .;
        ST01_ST01_4_header_DATA_SIZE = ABSOLUTE(ST01_ST01_4_header_DATA_END - ST01_ST01_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_4_header);
    ST01_ST01_4_header_ROM_END = __romPos;
    ST01_ST01_4_header_VRAM_END = .;

    ST01_ST01_4_ROM_START = __romPos;
    ST01_ST01_4_VRAM = ADDR(.ST01_ST01_4);
    .ST01_ST01_4 0x8013A000 : AT(ST01_ST01_4_ROM_START) SUBALIGN(4)
    {
        ST01_ST01_4_DATA_START = .;
        ST01_4_data__s = .;
        build/asm/ST01/ovl4__SCR_DATA_ST01.HED/data/ST01_4.data.s.o(.data);
        ST01_ST01_4_DATA_END = .;
        ST01_ST01_4_DATA_SIZE = ABSOLUTE(ST01_ST01_4_DATA_END - ST01_ST01_4_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_4);
    __romPos = ALIGN(__romPos, 16);
    ST01_ST01_4_ROM_END = __romPos;
    ST01_ST01_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
