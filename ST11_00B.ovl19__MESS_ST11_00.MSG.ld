SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_00B_ST11_00_19_header_ROM_START = __romPos;
    ST11_00B_ST11_00_19_header_VRAM = ADDR(.ST11_00B_ST11_00_19_header);
    .ST11_00B_ST11_00_19_header : AT(ST11_00B_ST11_00_19_header_ROM_START) SUBALIGN(16)
    {
        ST11_00B_ST11_00_19_header_DATA_START = .;
        ST11_00B_ST11_00_19_header_s = .;
        build/asm/ST11_00B/ovl19__MESS_ST11_00.MSG/ST11_00B_ST11_00_19_header.s.o(.data);
        ST11_00B_ST11_00_19_header_DATA_END = .;
        ST11_00B_ST11_00_19_header_DATA_SIZE = ABSOLUTE(ST11_00B_ST11_00_19_header_DATA_END - ST11_00B_ST11_00_19_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00B_ST11_00_19_header);
    ST11_00B_ST11_00_19_header_ROM_END = __romPos;
    ST11_00B_ST11_00_19_header_VRAM_END = .;

    ST11_00B_ST11_00_19_ROM_START = __romPos;
    ST11_00B_ST11_00_19_VRAM = ADDR(.ST11_00B_ST11_00_19);
    .ST11_00B_ST11_00_19 0x80153000 : AT(ST11_00B_ST11_00_19_ROM_START) SUBALIGN(4)
    {
        ST11_00B_ST11_00_19_DATA_START = .;
        ST11_00_19_data__s = .;
        build/asm/ST11_00B/ovl19__MESS_ST11_00.MSG/data/ST11_00_19.data.s.o(.data);
        ST11_00B_ST11_00_19_DATA_END = .;
        ST11_00B_ST11_00_19_DATA_SIZE = ABSOLUTE(ST11_00B_ST11_00_19_DATA_END - ST11_00B_ST11_00_19_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00B_ST11_00_19);
    __romPos = ALIGN(__romPos, 16);
    ST11_00B_ST11_00_19_ROM_END = __romPos;
    ST11_00B_ST11_00_19_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
