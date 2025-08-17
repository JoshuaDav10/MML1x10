SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1B_00_ST03_00C_0_header_ROM_START = __romPos;
    ST1B_00_ST03_00C_0_header_VRAM = ADDR(.ST1B_00_ST03_00C_0_header);
    .ST1B_00_ST03_00C_0_header : AT(ST1B_00_ST03_00C_0_header_ROM_START) SUBALIGN(16)
    {
        ST1B_00_ST03_00C_0_header_DATA_START = .;
        ST1B_00_ST03_00C_0_header_s = .;
        build/asm/ST1B_00/ovl0__EMBIN_ST03_00C.EBD/ST1B_00_ST03_00C_0_header.s.o(.data);
        ST1B_00_ST03_00C_0_header_DATA_END = .;
        ST1B_00_ST03_00C_0_header_DATA_SIZE = ABSOLUTE(ST1B_00_ST03_00C_0_header_DATA_END - ST1B_00_ST03_00C_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_00_ST03_00C_0_header);
    ST1B_00_ST03_00C_0_header_ROM_END = __romPos;
    ST1B_00_ST03_00C_0_header_VRAM_END = .;

    ST1B_00_ST03_00C_0_ROM_START = __romPos;
    ST1B_00_ST03_00C_0_VRAM = ADDR(.ST1B_00_ST03_00C_0);
    .ST1B_00_ST03_00C_0 0x8016C000 : AT(ST1B_00_ST03_00C_0_ROM_START) SUBALIGN(4)
    {
        ST1B_00_ST03_00C_0_DATA_START = .;
        ST03_00C_0_data__s = .;
        build/asm/ST1B_00/ovl0__EMBIN_ST03_00C.EBD/data/ST03_00C_0.data.s.o(.data);
        ST1B_00_ST03_00C_0_DATA_END = .;
        ST1B_00_ST03_00C_0_DATA_SIZE = ABSOLUTE(ST1B_00_ST03_00C_0_DATA_END - ST1B_00_ST03_00C_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_00_ST03_00C_0);
    __romPos = ALIGN(__romPos, 16);
    ST1B_00_ST03_00C_0_ROM_END = __romPos;
    ST1B_00_ST03_00C_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
