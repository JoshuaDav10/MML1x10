SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1C_ST1C_00_5_header_ROM_START = __romPos;
    ST1C_ST1C_00_5_header_VRAM = ADDR(.ST1C_ST1C_00_5_header);
    .ST1C_ST1C_00_5_header : AT(ST1C_ST1C_00_5_header_ROM_START) SUBALIGN(16)
    {
        ST1C_ST1C_00_5_header_DATA_START = .;
        ST1C_ST1C_00_5_header_s = .;
        build/asm/ST1C/ovl5__EMBIN_ST1C_00.EBD/ST1C_ST1C_00_5_header.s.o(.data);
        ST1C_ST1C_00_5_header_DATA_END = .;
        ST1C_ST1C_00_5_header_DATA_SIZE = ABSOLUTE(ST1C_ST1C_00_5_header_DATA_END - ST1C_ST1C_00_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1C_00_5_header);
    ST1C_ST1C_00_5_header_ROM_END = __romPos;
    ST1C_ST1C_00_5_header_VRAM_END = .;

    ST1C_ST1C_00_5_ROM_START = __romPos;
    ST1C_ST1C_00_5_VRAM = ADDR(.ST1C_ST1C_00_5);
    .ST1C_ST1C_00_5 0x8016C000 : AT(ST1C_ST1C_00_5_ROM_START) SUBALIGN(4)
    {
        ST1C_ST1C_00_5_DATA_START = .;
        ST1C_00_5_data__s = .;
        build/asm/ST1C/ovl5__EMBIN_ST1C_00.EBD/data/ST1C_00_5.data.s.o(.data);
        ST1C_ST1C_00_5_DATA_END = .;
        ST1C_ST1C_00_5_DATA_SIZE = ABSOLUTE(ST1C_ST1C_00_5_DATA_END - ST1C_ST1C_00_5_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1C_00_5);
    __romPos = ALIGN(__romPos, 16);
    ST1C_ST1C_00_5_ROM_END = __romPos;
    ST1C_ST1C_00_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
