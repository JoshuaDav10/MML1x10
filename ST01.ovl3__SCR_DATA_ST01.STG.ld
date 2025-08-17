SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST01_ST01_3_header_ROM_START = __romPos;
    ST01_ST01_3_header_VRAM = ADDR(.ST01_ST01_3_header);
    .ST01_ST01_3_header : AT(ST01_ST01_3_header_ROM_START) SUBALIGN(16)
    {
        ST01_ST01_3_header_DATA_START = .;
        ST01_ST01_3_header_s = .;
        build/asm/ST01/ovl3__SCR_DATA_ST01.STG/ST01_ST01_3_header.s.o(.data);
        ST01_ST01_3_header_DATA_END = .;
        ST01_ST01_3_header_DATA_SIZE = ABSOLUTE(ST01_ST01_3_header_DATA_END - ST01_ST01_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_3_header);
    ST01_ST01_3_header_ROM_END = __romPos;
    ST01_ST01_3_header_VRAM_END = .;

    ST01_ST01_3_ROM_START = __romPos;
    ST01_ST01_3_VRAM = ADDR(.ST01_ST01_3);
    .ST01_ST01_3 0x80194000 : AT(ST01_ST01_3_ROM_START) SUBALIGN(4)
    {
        ST01_ST01_3_DATA_START = .;
        ST01_3_data__s = .;
        build/asm/ST01/ovl3__SCR_DATA_ST01.STG/data/ST01_3.data.s.o(.data);
        ST01_ST01_3_DATA_END = .;
        ST01_ST01_3_DATA_SIZE = ABSOLUTE(ST01_ST01_3_DATA_END - ST01_ST01_3_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_3);
    __romPos = ALIGN(__romPos, 16);
    ST01_ST01_3_ROM_END = __romPos;
    ST01_ST01_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
