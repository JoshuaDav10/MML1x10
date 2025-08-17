SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST14_00B_ST14_00_4_header_ROM_START = __romPos;
    ST14_00B_ST14_00_4_header_VRAM = ADDR(.ST14_00B_ST14_00_4_header);
    .ST14_00B_ST14_00_4_header : AT(ST14_00B_ST14_00_4_header_ROM_START) SUBALIGN(16)
    {
        ST14_00B_ST14_00_4_header_DATA_START = .;
        ST14_00B_ST14_00_4_header_s = .;
        build/asm/ST14_00B/ovl4__MESS_ST14_00.MSG/ST14_00B_ST14_00_4_header.s.o(.data);
        ST14_00B_ST14_00_4_header_DATA_END = .;
        ST14_00B_ST14_00_4_header_DATA_SIZE = ABSOLUTE(ST14_00B_ST14_00_4_header_DATA_END - ST14_00B_ST14_00_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST14_00B_ST14_00_4_header);
    ST14_00B_ST14_00_4_header_ROM_END = __romPos;
    ST14_00B_ST14_00_4_header_VRAM_END = .;

    ST14_00B_ST14_00_4_ROM_START = __romPos;
    ST14_00B_ST14_00_4_VRAM = ADDR(.ST14_00B_ST14_00_4);
    .ST14_00B_ST14_00_4 0x80153000 : AT(ST14_00B_ST14_00_4_ROM_START) SUBALIGN(4)
    {
        ST14_00B_ST14_00_4_DATA_START = .;
        ST14_00_4_data__s = .;
        build/asm/ST14_00B/ovl4__MESS_ST14_00.MSG/data/ST14_00_4.data.s.o(.data);
        ST14_00B_ST14_00_4_DATA_END = .;
        ST14_00B_ST14_00_4_DATA_SIZE = ABSOLUTE(ST14_00B_ST14_00_4_DATA_END - ST14_00B_ST14_00_4_DATA_START);
    }
    __romPos += SIZEOF(.ST14_00B_ST14_00_4);
    __romPos = ALIGN(__romPos, 16);
    ST14_00B_ST14_00_4_ROM_END = __romPos;
    ST14_00B_ST14_00_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
