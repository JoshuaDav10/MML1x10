SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_00_PL00D41S_8_header_ROM_START = __romPos;
    ST19_00_PL00D41S_8_header_VRAM = ADDR(.ST19_00_PL00D41S_8_header);
    .ST19_00_PL00D41S_8_header : AT(ST19_00_PL00D41S_8_header_ROM_START) SUBALIGN(16)
    {
        ST19_00_PL00D41S_8_header_DATA_START = .;
        ST19_00_PL00D41S_8_header_s = .;
        build/asm/ST19_00/ovl8__PLBIN_PL00D41S.PBD/ST19_00_PL00D41S_8_header.s.o(.data);
        ST19_00_PL00D41S_8_header_DATA_END = .;
        ST19_00_PL00D41S_8_header_DATA_SIZE = ABSOLUTE(ST19_00_PL00D41S_8_header_DATA_END - ST19_00_PL00D41S_8_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_00_PL00D41S_8_header);
    ST19_00_PL00D41S_8_header_ROM_END = __romPos;
    ST19_00_PL00D41S_8_header_VRAM_END = .;

    ST19_00_PL00D41S_8_ROM_START = __romPos;
    ST19_00_PL00D41S_8_VRAM = ADDR(.ST19_00_PL00D41S_8);
    .ST19_00_PL00D41S_8 0x800DBA00 : AT(ST19_00_PL00D41S_8_ROM_START) SUBALIGN(4)
    {
        ST19_00_PL00D41S_8_DATA_START = .;
        PL00D41S_8_data__s = .;
        build/asm/ST19_00/ovl8__PLBIN_PL00D41S.PBD/data/PL00D41S_8.data.s.o(.data);
        ST19_00_PL00D41S_8_DATA_END = .;
        ST19_00_PL00D41S_8_DATA_SIZE = ABSOLUTE(ST19_00_PL00D41S_8_DATA_END - ST19_00_PL00D41S_8_DATA_START);
    }
    __romPos += SIZEOF(.ST19_00_PL00D41S_8);
    __romPos = ALIGN(__romPos, 16);
    ST19_00_PL00D41S_8_ROM_END = __romPos;
    ST19_00_PL00D41S_8_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
