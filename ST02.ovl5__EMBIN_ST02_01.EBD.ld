SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST02_ST02_01_5_header_ROM_START = __romPos;
    ST02_ST02_01_5_header_VRAM = ADDR(.ST02_ST02_01_5_header);
    .ST02_ST02_01_5_header : AT(ST02_ST02_01_5_header_ROM_START) SUBALIGN(16)
    {
        ST02_ST02_01_5_header_DATA_START = .;
        ST02_ST02_01_5_header_s = .;
        build/asm/ST02/ovl5__EMBIN_ST02_01.EBD/ST02_ST02_01_5_header.s.o(.data);
        ST02_ST02_01_5_header_DATA_END = .;
        ST02_ST02_01_5_header_DATA_SIZE = ABSOLUTE(ST02_ST02_01_5_header_DATA_END - ST02_ST02_01_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_01_5_header);
    ST02_ST02_01_5_header_ROM_END = __romPos;
    ST02_ST02_01_5_header_VRAM_END = .;

    ST02_ST02_01_5_ROM_START = __romPos;
    ST02_ST02_01_5_VRAM = ADDR(.ST02_ST02_01_5);
    .ST02_ST02_01_5 0x8016C000 : AT(ST02_ST02_01_5_ROM_START) SUBALIGN(4)
    {
        ST02_ST02_01_5_DATA_START = .;
        ST02_01_5_data__s = .;
        build/asm/ST02/ovl5__EMBIN_ST02_01.EBD/data/ST02_01_5.data.s.o(.data);
        ST02_ST02_01_5_DATA_END = .;
        ST02_ST02_01_5_DATA_SIZE = ABSOLUTE(ST02_ST02_01_5_DATA_END - ST02_ST02_01_5_DATA_START);
    }
    __romPos += SIZEOF(.ST02_ST02_01_5);
    __romPos = ALIGN(__romPos, 16);
    ST02_ST02_01_5_ROM_END = __romPos;
    ST02_ST02_01_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
