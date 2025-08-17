SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_ST17_00B_6_header_ROM_START = __romPos;
    ST17_ST17_00B_6_header_VRAM = ADDR(.ST17_ST17_00B_6_header);
    .ST17_ST17_00B_6_header : AT(ST17_ST17_00B_6_header_ROM_START) SUBALIGN(16)
    {
        ST17_ST17_00B_6_header_DATA_START = .;
        ST17_ST17_00B_6_header_s = .;
        build/asm/ST17/ovl6__EMBIN_ST17_00B.EBD/ST17_ST17_00B_6_header.s.o(.data);
        ST17_ST17_00B_6_header_DATA_END = .;
        ST17_ST17_00B_6_header_DATA_SIZE = ABSOLUTE(ST17_ST17_00B_6_header_DATA_END - ST17_ST17_00B_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_00B_6_header);
    ST17_ST17_00B_6_header_ROM_END = __romPos;
    ST17_ST17_00B_6_header_VRAM_END = .;

    ST17_ST17_00B_6_ROM_START = __romPos;
    ST17_ST17_00B_6_VRAM = ADDR(.ST17_ST17_00B_6);
    .ST17_ST17_00B_6 0x80190000 : AT(ST17_ST17_00B_6_ROM_START) SUBALIGN(4)
    {
        ST17_ST17_00B_6_DATA_START = .;
        ST17_00B_6_data__s = .;
        build/asm/ST17/ovl6__EMBIN_ST17_00B.EBD/data/ST17_00B_6.data.s.o(.data);
        ST17_ST17_00B_6_DATA_END = .;
        ST17_ST17_00B_6_DATA_SIZE = ABSOLUTE(ST17_ST17_00B_6_DATA_END - ST17_ST17_00B_6_DATA_START);
    }
    __romPos += SIZEOF(.ST17_ST17_00B_6);
    __romPos = ALIGN(__romPos, 16);
    ST17_ST17_00B_6_ROM_END = __romPos;
    ST17_ST17_00B_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
