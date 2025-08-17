SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1D_01_ST1D_00_0_header_ROM_START = __romPos;
    ST1D_01_ST1D_00_0_header_VRAM = ADDR(.ST1D_01_ST1D_00_0_header);
    .ST1D_01_ST1D_00_0_header : AT(ST1D_01_ST1D_00_0_header_ROM_START) SUBALIGN(16)
    {
        ST1D_01_ST1D_00_0_header_DATA_START = .;
        ST1D_01_ST1D_00_0_header_s = .;
        build/asm/ST1D_01/ovl0__EMBIN_ST1D_00.EBD/ST1D_01_ST1D_00_0_header.s.o(.data);
        ST1D_01_ST1D_00_0_header_DATA_END = .;
        ST1D_01_ST1D_00_0_header_DATA_SIZE = ABSOLUTE(ST1D_01_ST1D_00_0_header_DATA_END - ST1D_01_ST1D_00_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_01_ST1D_00_0_header);
    ST1D_01_ST1D_00_0_header_ROM_END = __romPos;
    ST1D_01_ST1D_00_0_header_VRAM_END = .;

    ST1D_01_ST1D_00_0_ROM_START = __romPos;
    ST1D_01_ST1D_00_0_VRAM = ADDR(.ST1D_01_ST1D_00_0);
    .ST1D_01_ST1D_00_0 0x8016C000 : AT(ST1D_01_ST1D_00_0_ROM_START) SUBALIGN(4)
    {
        ST1D_01_ST1D_00_0_DATA_START = .;
        ST1D_00_0_data__s = .;
        build/asm/ST1D_01/ovl0__EMBIN_ST1D_00.EBD/data/ST1D_00_0.data.s.o(.data);
        ST1D_01_ST1D_00_0_DATA_END = .;
        ST1D_01_ST1D_00_0_DATA_SIZE = ABSOLUTE(ST1D_01_ST1D_00_0_DATA_END - ST1D_01_ST1D_00_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1D_01_ST1D_00_0);
    __romPos = ALIGN(__romPos, 16);
    ST1D_01_ST1D_00_0_ROM_END = __romPos;
    ST1D_01_ST1D_00_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
