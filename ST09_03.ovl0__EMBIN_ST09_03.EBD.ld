SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_03_ST09_03_0_header_ROM_START = __romPos;
    ST09_03_ST09_03_0_header_VRAM = ADDR(.ST09_03_ST09_03_0_header);
    .ST09_03_ST09_03_0_header : AT(ST09_03_ST09_03_0_header_ROM_START) SUBALIGN(16)
    {
        ST09_03_ST09_03_0_header_DATA_START = .;
        ST09_03_ST09_03_0_header_s = .;
        build/asm/ST09_03/ovl0__EMBIN_ST09_03.EBD/ST09_03_ST09_03_0_header.s.o(.data);
        ST09_03_ST09_03_0_header_DATA_END = .;
        ST09_03_ST09_03_0_header_DATA_SIZE = ABSOLUTE(ST09_03_ST09_03_0_header_DATA_END - ST09_03_ST09_03_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_03_ST09_03_0_header);
    ST09_03_ST09_03_0_header_ROM_END = __romPos;
    ST09_03_ST09_03_0_header_VRAM_END = .;

    ST09_03_ST09_03_0_ROM_START = __romPos;
    ST09_03_ST09_03_0_VRAM = ADDR(.ST09_03_ST09_03_0);
    .ST09_03_ST09_03_0 0x8016C000 : AT(ST09_03_ST09_03_0_ROM_START) SUBALIGN(4)
    {
        ST09_03_ST09_03_0_DATA_START = .;
        ST09_03_0_data__s = .;
        build/asm/ST09_03/ovl0__EMBIN_ST09_03.EBD/data/ST09_03_0.data.s.o(.data);
        ST09_03_ST09_03_0_DATA_END = .;
        ST09_03_ST09_03_0_DATA_SIZE = ABSOLUTE(ST09_03_ST09_03_0_DATA_END - ST09_03_ST09_03_0_DATA_START);
    }
    __romPos += SIZEOF(.ST09_03_ST09_03_0);
    __romPos = ALIGN(__romPos, 16);
    ST09_03_ST09_03_0_ROM_END = __romPos;
    ST09_03_ST09_03_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
