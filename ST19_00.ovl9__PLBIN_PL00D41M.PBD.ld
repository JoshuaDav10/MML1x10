SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST19_00_PL00D41M_9_header_ROM_START = __romPos;
    ST19_00_PL00D41M_9_header_VRAM = ADDR(.ST19_00_PL00D41M_9_header);
    .ST19_00_PL00D41M_9_header : AT(ST19_00_PL00D41M_9_header_ROM_START) SUBALIGN(16)
    {
        ST19_00_PL00D41M_9_header_DATA_START = .;
        ST19_00_PL00D41M_9_header_s = .;
        build/asm/ST19_00/ovl9__PLBIN_PL00D41M.PBD/ST19_00_PL00D41M_9_header.s.o(.data);
        ST19_00_PL00D41M_9_header_DATA_END = .;
        ST19_00_PL00D41M_9_header_DATA_SIZE = ABSOLUTE(ST19_00_PL00D41M_9_header_DATA_END - ST19_00_PL00D41M_9_header_DATA_START);
    }
    __romPos += SIZEOF(.ST19_00_PL00D41M_9_header);
    ST19_00_PL00D41M_9_header_ROM_END = __romPos;
    ST19_00_PL00D41M_9_header_VRAM_END = .;

    ST19_00_PL00D41M_9_ROM_START = __romPos;
    ST19_00_PL00D41M_9_VRAM = ADDR(.ST19_00_PL00D41M_9);
    .ST19_00_PL00D41M_9 0x800E9600 : AT(ST19_00_PL00D41M_9_ROM_START) SUBALIGN(4)
    {
        ST19_00_PL00D41M_9_DATA_START = .;
        PL00D41M_9_data__s = .;
        build/asm/ST19_00/ovl9__PLBIN_PL00D41M.PBD/data/PL00D41M_9.data.s.o(.data);
        ST19_00_PL00D41M_9_DATA_END = .;
        ST19_00_PL00D41M_9_DATA_SIZE = ABSOLUTE(ST19_00_PL00D41M_9_DATA_END - ST19_00_PL00D41M_9_DATA_START);
    }
    __romPos += SIZEOF(.ST19_00_PL00D41M_9);
    __romPos = ALIGN(__romPos, 16);
    ST19_00_PL00D41M_9_ROM_END = __romPos;
    ST19_00_PL00D41M_9_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
