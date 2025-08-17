SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST13_00B_ST13_00A_0_header_ROM_START = __romPos;
    ST13_00B_ST13_00A_0_header_VRAM = ADDR(.ST13_00B_ST13_00A_0_header);
    .ST13_00B_ST13_00A_0_header : AT(ST13_00B_ST13_00A_0_header_ROM_START) SUBALIGN(16)
    {
        ST13_00B_ST13_00A_0_header_DATA_START = .;
        ST13_00B_ST13_00A_0_header_s = .;
        build/asm/ST13_00B/ovl0__EMBIN_ST13_00A.EBD/ST13_00B_ST13_00A_0_header.s.o(.data);
        ST13_00B_ST13_00A_0_header_DATA_END = .;
        ST13_00B_ST13_00A_0_header_DATA_SIZE = ABSOLUTE(ST13_00B_ST13_00A_0_header_DATA_END - ST13_00B_ST13_00A_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST13_00B_ST13_00A_0_header);
    ST13_00B_ST13_00A_0_header_ROM_END = __romPos;
    ST13_00B_ST13_00A_0_header_VRAM_END = .;

    ST13_00B_ST13_00A_0_ROM_START = __romPos;
    ST13_00B_ST13_00A_0_VRAM = ADDR(.ST13_00B_ST13_00A_0);
    .ST13_00B_ST13_00A_0 0x8016C000 : AT(ST13_00B_ST13_00A_0_ROM_START) SUBALIGN(4)
    {
        ST13_00B_ST13_00A_0_DATA_START = .;
        ST13_00A_0_data__s = .;
        build/asm/ST13_00B/ovl0__EMBIN_ST13_00A.EBD/data/ST13_00A_0.data.s.o(.data);
        ST13_00B_ST13_00A_0_DATA_END = .;
        ST13_00B_ST13_00A_0_DATA_SIZE = ABSOLUTE(ST13_00B_ST13_00A_0_DATA_END - ST13_00B_ST13_00A_0_DATA_START);
    }
    __romPos += SIZEOF(.ST13_00B_ST13_00A_0);
    __romPos = ALIGN(__romPos, 16);
    ST13_00B_ST13_00A_0_ROM_END = __romPos;
    ST13_00B_ST13_00A_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
