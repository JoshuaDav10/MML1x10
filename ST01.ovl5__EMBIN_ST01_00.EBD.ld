SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST01_ST01_00_5_header_ROM_START = __romPos;
    ST01_ST01_00_5_header_VRAM = ADDR(.ST01_ST01_00_5_header);
    .ST01_ST01_00_5_header : AT(ST01_ST01_00_5_header_ROM_START) SUBALIGN(16)
    {
        ST01_ST01_00_5_header_DATA_START = .;
        ST01_ST01_00_5_header_s = .;
        build/asm/ST01/ovl5__EMBIN_ST01_00.EBD/ST01_ST01_00_5_header.s.o(.data);
        ST01_ST01_00_5_header_DATA_END = .;
        ST01_ST01_00_5_header_DATA_SIZE = ABSOLUTE(ST01_ST01_00_5_header_DATA_END - ST01_ST01_00_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_00_5_header);
    ST01_ST01_00_5_header_ROM_END = __romPos;
    ST01_ST01_00_5_header_VRAM_END = .;

    ST01_ST01_00_5_ROM_START = __romPos;
    ST01_ST01_00_5_VRAM = ADDR(.ST01_ST01_00_5);
    .ST01_ST01_00_5 0x8016C000 : AT(ST01_ST01_00_5_ROM_START) SUBALIGN(4)
    {
        ST01_ST01_00_5_DATA_START = .;
        ST01_00_5_data__s = .;
        build/asm/ST01/ovl5__EMBIN_ST01_00.EBD/data/ST01_00_5.data.s.o(.data);
        ST01_ST01_00_5_DATA_END = .;
        ST01_ST01_00_5_DATA_SIZE = ABSOLUTE(ST01_ST01_00_5_DATA_END - ST01_ST01_00_5_DATA_START);
    }
    __romPos += SIZEOF(.ST01_ST01_00_5);
    __romPos = ALIGN(__romPos, 16);
    ST01_ST01_00_5_ROM_END = __romPos;
    ST01_ST01_00_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
