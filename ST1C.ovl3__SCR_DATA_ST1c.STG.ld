SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1C_ST1c_3_header_ROM_START = __romPos;
    ST1C_ST1c_3_header_VRAM = ADDR(.ST1C_ST1c_3_header);
    .ST1C_ST1c_3_header : AT(ST1C_ST1c_3_header_ROM_START) SUBALIGN(16)
    {
        ST1C_ST1c_3_header_DATA_START = .;
        ST1C_ST1c_3_header_s = .;
        build/asm/ST1C/ovl3__SCR_DATA_ST1c.STG/ST1C_ST1c_3_header.s.o(.data);
        ST1C_ST1c_3_header_DATA_END = .;
        ST1C_ST1c_3_header_DATA_SIZE = ABSOLUTE(ST1C_ST1c_3_header_DATA_END - ST1C_ST1c_3_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1c_3_header);
    ST1C_ST1c_3_header_ROM_END = __romPos;
    ST1C_ST1c_3_header_VRAM_END = .;

    ST1C_ST1c_3_ROM_START = __romPos;
    ST1C_ST1c_3_VRAM = ADDR(.ST1C_ST1c_3);
    .ST1C_ST1c_3 0x80194000 : AT(ST1C_ST1c_3_ROM_START) SUBALIGN(4)
    {
        ST1C_ST1c_3_DATA_START = .;
        ST1c_3_data__s = .;
        build/asm/ST1C/ovl3__SCR_DATA_ST1c.STG/data/ST1c_3.data.s.o(.data);
        ST1C_ST1c_3_DATA_END = .;
        ST1C_ST1c_3_DATA_SIZE = ABSOLUTE(ST1C_ST1c_3_DATA_END - ST1C_ST1c_3_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1c_3);
    __romPos = ALIGN(__romPos, 16);
    ST1C_ST1c_3_ROM_END = __romPos;
    ST1C_ST1c_3_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
