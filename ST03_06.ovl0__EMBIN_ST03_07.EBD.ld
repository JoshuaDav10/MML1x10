SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST03_06_ST03_07_0_header_ROM_START = __romPos;
    ST03_06_ST03_07_0_header_VRAM = ADDR(.ST03_06_ST03_07_0_header);
    .ST03_06_ST03_07_0_header : AT(ST03_06_ST03_07_0_header_ROM_START) SUBALIGN(16)
    {
        ST03_06_ST03_07_0_header_DATA_START = .;
        ST03_06_ST03_07_0_header_s = .;
        build/asm/ST03_06/ovl0__EMBIN_ST03_07.EBD/ST03_06_ST03_07_0_header.s.o(.data);
        ST03_06_ST03_07_0_header_DATA_END = .;
        ST03_06_ST03_07_0_header_DATA_SIZE = ABSOLUTE(ST03_06_ST03_07_0_header_DATA_END - ST03_06_ST03_07_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST03_06_ST03_07_0_header);
    ST03_06_ST03_07_0_header_ROM_END = __romPos;
    ST03_06_ST03_07_0_header_VRAM_END = .;

    ST03_06_ST03_07_0_ROM_START = __romPos;
    ST03_06_ST03_07_0_VRAM = ADDR(.ST03_06_ST03_07_0);
    .ST03_06_ST03_07_0 0x8016C000 : AT(ST03_06_ST03_07_0_ROM_START) SUBALIGN(4)
    {
        ST03_06_ST03_07_0_DATA_START = .;
        ST03_07_0_data__s = .;
        build/asm/ST03_06/ovl0__EMBIN_ST03_07.EBD/data/ST03_07_0.data.s.o(.data);
        ST03_06_ST03_07_0_DATA_END = .;
        ST03_06_ST03_07_0_DATA_SIZE = ABSOLUTE(ST03_06_ST03_07_0_DATA_END - ST03_06_ST03_07_0_DATA_START);
    }
    __romPos += SIZEOF(.ST03_06_ST03_07_0);
    __romPos = ALIGN(__romPos, 16);
    ST03_06_ST03_07_0_ROM_END = __romPos;
    ST03_06_ST03_07_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
