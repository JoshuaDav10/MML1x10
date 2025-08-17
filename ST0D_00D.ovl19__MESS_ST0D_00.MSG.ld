SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_00D_ST0D_00_19_header_ROM_START = __romPos;
    ST0D_00D_ST0D_00_19_header_VRAM = ADDR(.ST0D_00D_ST0D_00_19_header);
    .ST0D_00D_ST0D_00_19_header : AT(ST0D_00D_ST0D_00_19_header_ROM_START) SUBALIGN(16)
    {
        ST0D_00D_ST0D_00_19_header_DATA_START = .;
        ST0D_00D_ST0D_00_19_header_s = .;
        build/asm/ST0D_00D/ovl19__MESS_ST0D_00.MSG/ST0D_00D_ST0D_00_19_header.s.o(.data);
        ST0D_00D_ST0D_00_19_header_DATA_END = .;
        ST0D_00D_ST0D_00_19_header_DATA_SIZE = ABSOLUTE(ST0D_00D_ST0D_00_19_header_DATA_END - ST0D_00D_ST0D_00_19_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00D_ST0D_00_19_header);
    ST0D_00D_ST0D_00_19_header_ROM_END = __romPos;
    ST0D_00D_ST0D_00_19_header_VRAM_END = .;

    ST0D_00D_ST0D_00_19_ROM_START = __romPos;
    ST0D_00D_ST0D_00_19_VRAM = ADDR(.ST0D_00D_ST0D_00_19);
    .ST0D_00D_ST0D_00_19 0x80153000 : AT(ST0D_00D_ST0D_00_19_ROM_START) SUBALIGN(4)
    {
        ST0D_00D_ST0D_00_19_DATA_START = .;
        ST0D_00_19_data__s = .;
        build/asm/ST0D_00D/ovl19__MESS_ST0D_00.MSG/data/ST0D_00_19.data.s.o(.data);
        ST0D_00D_ST0D_00_19_DATA_END = .;
        ST0D_00D_ST0D_00_19_DATA_SIZE = ABSOLUTE(ST0D_00D_ST0D_00_19_DATA_END - ST0D_00D_ST0D_00_19_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_00D_ST0D_00_19);
    __romPos = ALIGN(__romPos, 16);
    ST0D_00D_ST0D_00_19_ROM_END = __romPos;
    ST0D_00D_ST0D_00_19_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
