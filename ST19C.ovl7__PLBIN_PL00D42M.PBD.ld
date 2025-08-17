SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19C_PL00D42M_7_header_ROM_START = __romPos;
    ST19C_PL00D42M_7_header_VRAM = ADDR(.ST19C_PL00D42M_7_header);
    .ST19C_PL00D42M_7_header : AT(ST19C_PL00D42M_7_header_ROM_START) SUBALIGN(16)
    {
        ST19C_PL00D42M_7_header_DATA_START = .;
        ST19C_PL00D42M_7_header_s = .;
        build/asm/ST19C/ovl7__PLBIN_PL00D42M.PBD/ST19C_PL00D42M_7_header.s.o(.data);
        ST19C_PL00D42M_7_header_DATA_END = .;
        ST19C_PL00D42M_7_header_DATA_SIZE = ABSOLUTE(ST19C_PL00D42M_7_header_DATA_END - ST19C_PL00D42M_7_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_PL00D42M_7_header);
    ST19C_PL00D42M_7_header_ROM_END = __romPos;
    ST19C_PL00D42M_7_header_VRAM_END = .;

    ST19C_PL00D42M_7_ROM_START = __romPos;
    ST19C_PL00D42M_7_VRAM = ADDR(.ST19C_PL00D42M_7);
    .ST19C_PL00D42M_7 0x800E9600 : AT(ST19C_PL00D42M_7_ROM_START) SUBALIGN(4)
    {
        ST19C_PL00D42M_7_DATA_START = .;
        PL00D42M_7_data__s = .;
        build/asm/ST19C/ovl7__PLBIN_PL00D42M.PBD/data/PL00D42M_7.data.s.o(.data);
        ST19C_PL00D42M_7_DATA_END = .;
        ST19C_PL00D42M_7_DATA_SIZE = ABSOLUTE(ST19C_PL00D42M_7_DATA_END - ST19C_PL00D42M_7_DATA_START);
    }
    __romPos += SIZEOF(.ST19C_PL00D42M_7);
    __romPos = ALIGN(__romPos, 16);
    ST19C_PL00D42M_7_ROM_END = __romPos;
    ST19C_PL00D42M_7_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
