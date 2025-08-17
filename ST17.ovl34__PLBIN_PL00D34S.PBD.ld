SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST17_PL00D34S_34_header_ROM_START = __romPos;
    ST17_PL00D34S_34_header_VRAM = ADDR(.ST17_PL00D34S_34_header);
    .ST17_PL00D34S_34_header : AT(ST17_PL00D34S_34_header_ROM_START) SUBALIGN(16)
    {
        ST17_PL00D34S_34_header_DATA_START = .;
        ST17_PL00D34S_34_header_s = .;
        build/asm/ST17/ovl34__PLBIN_PL00D34S.PBD/ST17_PL00D34S_34_header.s.o(.data);
        ST17_PL00D34S_34_header_DATA_END = .;
        ST17_PL00D34S_34_header_DATA_SIZE = ABSOLUTE(ST17_PL00D34S_34_header_DATA_END - ST17_PL00D34S_34_header_DATA_START);
    }
    __romPos += SIZEOF(.ST17_PL00D34S_34_header);
    ST17_PL00D34S_34_header_ROM_END = __romPos;
    ST17_PL00D34S_34_header_VRAM_END = .;

    ST17_PL00D34S_34_ROM_START = __romPos;
    ST17_PL00D34S_34_VRAM = ADDR(.ST17_PL00D34S_34);
    .ST17_PL00D34S_34 0x800DBA00 : AT(ST17_PL00D34S_34_ROM_START) SUBALIGN(4)
    {
        ST17_PL00D34S_34_DATA_START = .;
        PL00D34S_34_data__s = .;
        build/asm/ST17/ovl34__PLBIN_PL00D34S.PBD/data/PL00D34S_34.data.s.o(.data);
        ST17_PL00D34S_34_DATA_END = .;
        ST17_PL00D34S_34_DATA_SIZE = ABSOLUTE(ST17_PL00D34S_34_DATA_END - ST17_PL00D34S_34_DATA_START);
    }
    __romPos += SIZEOF(.ST17_PL00D34S_34);
    __romPos = ALIGN(__romPos, 16);
    ST17_PL00D34S_34_ROM_END = __romPos;
    ST17_PL00D34S_34_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
