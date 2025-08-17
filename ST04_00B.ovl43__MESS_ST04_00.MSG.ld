SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_00B_ST04_00_43_header_ROM_START = __romPos;
    ST04_00B_ST04_00_43_header_VRAM = ADDR(.ST04_00B_ST04_00_43_header);
    .ST04_00B_ST04_00_43_header : AT(ST04_00B_ST04_00_43_header_ROM_START) SUBALIGN(16)
    {
        ST04_00B_ST04_00_43_header_DATA_START = .;
        ST04_00B_ST04_00_43_header_s = .;
        build/asm/ST04_00B/ovl43__MESS_ST04_00.MSG/ST04_00B_ST04_00_43_header.s.o(.data);
        ST04_00B_ST04_00_43_header_DATA_END = .;
        ST04_00B_ST04_00_43_header_DATA_SIZE = ABSOLUTE(ST04_00B_ST04_00_43_header_DATA_END - ST04_00B_ST04_00_43_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00B_ST04_00_43_header);
    ST04_00B_ST04_00_43_header_ROM_END = __romPos;
    ST04_00B_ST04_00_43_header_VRAM_END = .;

    ST04_00B_ST04_00_43_ROM_START = __romPos;
    ST04_00B_ST04_00_43_VRAM = ADDR(.ST04_00B_ST04_00_43);
    .ST04_00B_ST04_00_43 0x80153000 : AT(ST04_00B_ST04_00_43_ROM_START) SUBALIGN(4)
    {
        ST04_00B_ST04_00_43_DATA_START = .;
        ST04_00_43_data__s = .;
        build/asm/ST04_00B/ovl43__MESS_ST04_00.MSG/data/ST04_00_43.data.s.o(.data);
        ST04_00B_ST04_00_43_DATA_END = .;
        ST04_00B_ST04_00_43_DATA_SIZE = ABSOLUTE(ST04_00B_ST04_00_43_DATA_END - ST04_00B_ST04_00_43_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00B_ST04_00_43);
    __romPos = ALIGN(__romPos, 16);
    ST04_00B_ST04_00_43_ROM_END = __romPos;
    ST04_00B_ST04_00_43_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
