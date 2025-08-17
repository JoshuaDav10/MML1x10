SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19C_PL00D42S_6_header_ROM_START = __romPos;
    ST19C_PL00D42S_6_header_VRAM = ADDR(.ST19C_PL00D42S_6_header);
    .ST19C_PL00D42S_6_header : AT(ST19C_PL00D42S_6_header_ROM_START) SUBALIGN(16)
    {
        ST19C_PL00D42S_6_header_DATA_START = .;
        ST19C_PL00D42S_6_header_s = .;
        build/asm/ST19C/ovl6__PLBIN_PL00D42S.PBD/ST19C_PL00D42S_6_header.s.o(.data);
        ST19C_PL00D42S_6_header_DATA_END = .;
        ST19C_PL00D42S_6_header_DATA_SIZE = ABSOLUTE(ST19C_PL00D42S_6_header_DATA_END - ST19C_PL00D42S_6_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_PL00D42S_6_header);
    ST19C_PL00D42S_6_header_ROM_END = __romPos;
    ST19C_PL00D42S_6_header_VRAM_END = .;

    ST19C_PL00D42S_6_ROM_START = __romPos;
    ST19C_PL00D42S_6_VRAM = ADDR(.ST19C_PL00D42S_6);
    .ST19C_PL00D42S_6 0x800DBA00 : AT(ST19C_PL00D42S_6_ROM_START) SUBALIGN(4)
    {
        ST19C_PL00D42S_6_DATA_START = .;
        PL00D42S_6_data__s = .;
        build/asm/ST19C/ovl6__PLBIN_PL00D42S.PBD/data/PL00D42S_6.data.s.o(.data);
        ST19C_PL00D42S_6_DATA_END = .;
        ST19C_PL00D42S_6_DATA_SIZE = ABSOLUTE(ST19C_PL00D42S_6_DATA_END - ST19C_PL00D42S_6_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_PL00D42S_6);
    __romPos = ALIGN(__romPos, 16);
    ST19C_PL00D42S_6_ROM_END = __romPos;
    ST19C_PL00D42S_6_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
