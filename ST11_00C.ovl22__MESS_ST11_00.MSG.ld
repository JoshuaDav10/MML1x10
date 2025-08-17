SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST11_00C_ST11_00_22_header_ROM_START = __romPos;
    ST11_00C_ST11_00_22_header_VRAM = ADDR(.ST11_00C_ST11_00_22_header);
    .ST11_00C_ST11_00_22_header : AT(ST11_00C_ST11_00_22_header_ROM_START) SUBALIGN(16)
    {
        ST11_00C_ST11_00_22_header_DATA_START = .;
        ST11_00C_ST11_00_22_header_s = .;
        build/asm/ST11_00C/ovl22__MESS_ST11_00.MSG/ST11_00C_ST11_00_22_header.s.o(.data);
        ST11_00C_ST11_00_22_header_DATA_END = .;
        ST11_00C_ST11_00_22_header_DATA_SIZE = ABSOLUTE(ST11_00C_ST11_00_22_header_DATA_END - ST11_00C_ST11_00_22_header_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00C_ST11_00_22_header);
    ST11_00C_ST11_00_22_header_ROM_END = __romPos;
    ST11_00C_ST11_00_22_header_VRAM_END = .;

    ST11_00C_ST11_00_22_ROM_START = __romPos;
    ST11_00C_ST11_00_22_VRAM = ADDR(.ST11_00C_ST11_00_22);
    .ST11_00C_ST11_00_22 0x80153000 : AT(ST11_00C_ST11_00_22_ROM_START) SUBALIGN(4)
    {
        ST11_00C_ST11_00_22_DATA_START = .;
        ST11_00_22_data__s = .;
        build/asm/ST11_00C/ovl22__MESS_ST11_00.MSG/data/ST11_00_22.data.s.o(.data);
        ST11_00C_ST11_00_22_DATA_END = .;
        ST11_00C_ST11_00_22_DATA_SIZE = ABSOLUTE(ST11_00C_ST11_00_22_DATA_END - ST11_00C_ST11_00_22_DATA_START);
    }
    __romPos += SIZEOF(.ST11_00C_ST11_00_22);
    __romPos = ALIGN(__romPos, 16);
    ST11_00C_ST11_00_22_ROM_END = __romPos;
    ST11_00C_ST11_00_22_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
