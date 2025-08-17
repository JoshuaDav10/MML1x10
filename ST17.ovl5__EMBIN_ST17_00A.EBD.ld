SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_00A_5_header_ROM_START = __romPos;
    ST17_ST17_00A_5_header_VRAM = ADDR(.ST17_ST17_00A_5_header);
    .ST17_ST17_00A_5_header : AT(ST17_ST17_00A_5_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_00A_5_header_DATA_START = .;
        ST17_ST17_00A_5_header_s = .;
        build/asm/ST17/ovl5__EMBIN_ST17_00A.EBD/ST17_ST17_00A_5_header.s.o(.data);
        ST17_ST17_00A_5_header_DATA_END = .;
        ST17_ST17_00A_5_header_DATA_SIZE = ABSOLUTE(ST17_ST17_00A_5_header_DATA_END - ST17_ST17_00A_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_00A_5_header);
    ST17_ST17_00A_5_header_ROM_END = __romPos;
    ST17_ST17_00A_5_header_VRAM_END = .;

    ST17_ST17_00A_5_ROM_START = __romPos;
    ST17_ST17_00A_5_VRAM = ADDR(.ST17_ST17_00A_5);
    .ST17_ST17_00A_5 0x8016C000 : AT(ST17_ST17_00A_5_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_00A_5_DATA_START = .;
        ST17_00A_5_data__s = .;
        build/asm/ST17/ovl5__EMBIN_ST17_00A.EBD/data/ST17_00A_5.data.s.o(.data);
        ST17_ST17_00A_5_DATA_END = .;
        ST17_ST17_00A_5_DATA_SIZE = ABSOLUTE(ST17_ST17_00A_5_DATA_END - ST17_ST17_00A_5_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_00A_5);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_00A_5_ROM_END = __romPos;
    ST17_ST17_00A_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
