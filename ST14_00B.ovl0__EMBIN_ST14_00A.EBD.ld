SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_00B_ST14_00A_0_header_ROM_START = __romPos;
    ST14_00B_ST14_00A_0_header_VRAM = ADDR(.ST14_00B_ST14_00A_0_header);
    .ST14_00B_ST14_00A_0_header : AT(ST14_00B_ST14_00A_0_header_ROM_START) SUBALIGN(16)
    {
        ST14_00B_ST14_00A_0_header_DATA_START = .;
        ST14_00B_ST14_00A_0_header_s = .;
        build/asm/ST14_00B/ovl0__EMBIN_ST14_00A.EBD/ST14_00B_ST14_00A_0_header.s.o(.data);
        ST14_00B_ST14_00A_0_header_DATA_END = .;
        ST14_00B_ST14_00A_0_header_DATA_SIZE = ABSOLUTE(ST14_00B_ST14_00A_0_header_DATA_END - ST14_00B_ST14_00A_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_00B_ST14_00A_0_header);
    ST14_00B_ST14_00A_0_header_ROM_END = __romPos;
    ST14_00B_ST14_00A_0_header_VRAM_END = .;

    ST14_00B_ST14_00A_0_ROM_START = __romPos;
    ST14_00B_ST14_00A_0_VRAM = ADDR(.ST14_00B_ST14_00A_0);
    .ST14_00B_ST14_00A_0 0x8016C000 : AT(ST14_00B_ST14_00A_0_ROM_START) SUBALIGN(4)
    {
        ST14_00B_ST14_00A_0_DATA_START = .;
        ST14_00A_0_data__s = .;
        build/asm/ST14_00B/ovl0__EMBIN_ST14_00A.EBD/data/ST14_00A_0.data.s.o(.data);
        ST14_00B_ST14_00A_0_DATA_END = .;
        ST14_00B_ST14_00A_0_DATA_SIZE = ABSOLUTE(ST14_00B_ST14_00A_0_DATA_END - ST14_00B_ST14_00A_0_DATA_START);
    }
    __romPos += SIZEOF(.ST14_00B_ST14_00A_0);
    __romPos = ALIGN(__romPos, 16);
    ST14_00B_ST14_00A_0_ROM_END = __romPos;
    ST14_00B_ST14_00A_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
