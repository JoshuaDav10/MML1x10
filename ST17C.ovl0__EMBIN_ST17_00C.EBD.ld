SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17C_ST17_00C_0_header_ROM_START = __romPos;
    ST17C_ST17_00C_0_header_VRAM = ADDR(.ST17C_ST17_00C_0_header);
    .ST17C_ST17_00C_0_header : AT(ST17C_ST17_00C_0_header_ROM_START) SUBALIGN(16)
    {
        ST17C_ST17_00C_0_header_DATA_START = .;
        ST17C_ST17_00C_0_header_s = .;
        build/asm/ST17C/ovl0__EMBIN_ST17_00C.EBD/ST17C_ST17_00C_0_header.s.o(.data);
        ST17C_ST17_00C_0_header_DATA_END = .;
        ST17C_ST17_00C_0_header_DATA_SIZE = ABSOLUTE(ST17C_ST17_00C_0_header_DATA_END - ST17C_ST17_00C_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17C_ST17_00C_0_header);
    ST17C_ST17_00C_0_header_ROM_END = __romPos;
    ST17C_ST17_00C_0_header_VRAM_END = .;

    ST17C_ST17_00C_0_ROM_START = __romPos;
    ST17C_ST17_00C_0_VRAM = ADDR(.ST17C_ST17_00C_0);
    .ST17C_ST17_00C_0 0x8016C000 : AT(ST17C_ST17_00C_0_ROM_START) SUBALIGN(4)
    {
        ST17C_ST17_00C_0_DATA_START = .;
        ST17_00C_0_data__s = .;
        build/asm/ST17C/ovl0__EMBIN_ST17_00C.EBD/data/ST17_00C_0.data.s.o(.data);
        ST17C_ST17_00C_0_DATA_END = .;
        ST17C_ST17_00C_0_DATA_SIZE = ABSOLUTE(ST17C_ST17_00C_0_DATA_END - ST17C_ST17_00C_0_DATA_START);
    }
    __romPos += SIZEOF(.ST17C_ST17_00C_0);
    __romPos = ALIGN(__romPos, 16);
    ST17C_ST17_00C_0_ROM_END = __romPos;
    ST17C_ST17_00C_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
