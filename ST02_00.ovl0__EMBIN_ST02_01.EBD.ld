SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_00_ST02_01_0_header_ROM_START = __romPos;
    ST02_00_ST02_01_0_header_VRAM = ADDR(.ST02_00_ST02_01_0_header);
    .ST02_00_ST02_01_0_header : AT(ST02_00_ST02_01_0_header_ROM_START) SUBALIGN(16)
    {
        ST02_00_ST02_01_0_header_DATA_START = .;
        ST02_00_ST02_01_0_header_s = .;
        build/asm/ST02_00/ovl0__EMBIN_ST02_01.EBD/ST02_00_ST02_01_0_header.s.o(.data);
        ST02_00_ST02_01_0_header_DATA_END = .;
        ST02_00_ST02_01_0_header_DATA_SIZE = ABSOLUTE(ST02_00_ST02_01_0_header_DATA_END - ST02_00_ST02_01_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_00_ST02_01_0_header);
    ST02_00_ST02_01_0_header_ROM_END = __romPos;
    ST02_00_ST02_01_0_header_VRAM_END = .;

    ST02_00_ST02_01_0_ROM_START = __romPos;
    ST02_00_ST02_01_0_VRAM = ADDR(.ST02_00_ST02_01_0);
    .ST02_00_ST02_01_0 0x8016C000 : AT(ST02_00_ST02_01_0_ROM_START) SUBALIGN(4)
    {
        ST02_00_ST02_01_0_DATA_START = .;
        ST02_01_0_data__s = .;
        build/asm/ST02_00/ovl0__EMBIN_ST02_01.EBD/data/ST02_01_0.data.s.o(.data);
        ST02_00_ST02_01_0_DATA_END = .;
        ST02_00_ST02_01_0_DATA_SIZE = ABSOLUTE(ST02_00_ST02_01_0_DATA_END - ST02_00_ST02_01_0_DATA_START);
    }
    __romPos += SIZEOF(.ST02_00_ST02_01_0);
    __romPos = ALIGN(__romPos, 16);
    ST02_00_ST02_01_0_ROM_END = __romPos;
    ST02_00_ST02_01_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
