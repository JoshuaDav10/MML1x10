SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_PL00D34M_35_header_ROM_START = __romPos;
    ST17_PL00D34M_35_header_VRAM = ADDR(.ST17_PL00D34M_35_header);
    .ST17_PL00D34M_35_header : AT(ST17_PL00D34M_35_header_ROM_START) SUBALIGN(16)
    {
        ST17_PL00D34M_35_header_DATA_START = .;
        ST17_PL00D34M_35_header_s = .;
        build/asm/ST17/ovl35__PLBIN_PL00D34M.PBD/ST17_PL00D34M_35_header.s.o(.data);
        ST17_PL00D34M_35_header_DATA_END = .;
        ST17_PL00D34M_35_header_DATA_SIZE = ABSOLUTE(ST17_PL00D34M_35_header_DATA_END - ST17_PL00D34M_35_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_PL00D34M_35_header);
    ST17_PL00D34M_35_header_ROM_END = __romPos;
    ST17_PL00D34M_35_header_VRAM_END = .;

    ST17_PL00D34M_35_ROM_START = __romPos;
    ST17_PL00D34M_35_VRAM = ADDR(.ST17_PL00D34M_35);
    .ST17_PL00D34M_35 0x800E9600 : AT(ST17_PL00D34M_35_ROM_START) SUBALIGN(4)
    {
        ST17_PL00D34M_35_DATA_START = .;
        PL00D34M_35_data__s = .;
        build/asm/ST17/ovl35__PLBIN_PL00D34M.PBD/data/PL00D34M_35.data.s.o(.data);
        ST17_PL00D34M_35_DATA_END = .;
        ST17_PL00D34M_35_DATA_SIZE = ABSOLUTE(ST17_PL00D34M_35_DATA_END - ST17_PL00D34M_35_DATA_START);
    }
    __romPos += SIZEOF(.ST17_PL00D34M_35);
    __romPos = ALIGN(__romPos, 16);
    ST17_PL00D34M_35_ROM_END = __romPos;
    ST17_PL00D34M_35_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
