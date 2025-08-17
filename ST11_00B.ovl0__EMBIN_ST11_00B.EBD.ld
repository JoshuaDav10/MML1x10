SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_00B_ST11_00B_0_header_ROM_START = __romPos;
    ST11_00B_ST11_00B_0_header_VRAM = ADDR(.ST11_00B_ST11_00B_0_header);
    .ST11_00B_ST11_00B_0_header : AT(ST11_00B_ST11_00B_0_header_ROM_START) SUBALIGN(16)
    {
        ST11_00B_ST11_00B_0_header_DATA_START = .;
        ST11_00B_ST11_00B_0_header_s = .;
        build/asm/ST11_00B/ovl0__EMBIN_ST11_00B.EBD/ST11_00B_ST11_00B_0_header.s.o(.data);
        ST11_00B_ST11_00B_0_header_DATA_END = .;
        ST11_00B_ST11_00B_0_header_DATA_SIZE = ABSOLUTE(ST11_00B_ST11_00B_0_header_DATA_END - ST11_00B_ST11_00B_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00B_ST11_00B_0_header);
    ST11_00B_ST11_00B_0_header_ROM_END = __romPos;
    ST11_00B_ST11_00B_0_header_VRAM_END = .;

    ST11_00B_ST11_00B_0_ROM_START = __romPos;
    ST11_00B_ST11_00B_0_VRAM = ADDR(.ST11_00B_ST11_00B_0);
    .ST11_00B_ST11_00B_0 0x8016C000 : AT(ST11_00B_ST11_00B_0_ROM_START) SUBALIGN(4)
    {
        ST11_00B_ST11_00B_0_DATA_START = .;
        ST11_00B_0_data__s = .;
        build/asm/ST11_00B/ovl0__EMBIN_ST11_00B.EBD/data/ST11_00B_0.data.s.o(.data);
        ST11_00B_ST11_00B_0_DATA_END = .;
        ST11_00B_ST11_00B_0_DATA_SIZE = ABSOLUTE(ST11_00B_ST11_00B_0_DATA_END - ST11_00B_ST11_00B_0_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00B_ST11_00B_0);
    __romPos = ALIGN(__romPos, 16);
    ST11_00B_ST11_00B_0_ROM_END = __romPos;
    ST11_00B_ST11_00B_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
