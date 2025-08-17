SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0D_01_ST0D_01_12_header_ROM_START = __romPos;
    ST0D_01_ST0D_01_12_header_VRAM = ADDR(.ST0D_01_ST0D_01_12_header);
    .ST0D_01_ST0D_01_12_header : AT(ST0D_01_ST0D_01_12_header_ROM_START) SUBALIGN(16)
    {
        ST0D_01_ST0D_01_12_header_DATA_START = .;
        ST0D_01_ST0D_01_12_header_s = .;
        build/asm/ST0D_01/ovl12__MESS_ST0D_01.MSG/ST0D_01_ST0D_01_12_header.s.o(.data);
        ST0D_01_ST0D_01_12_header_DATA_END = .;
        ST0D_01_ST0D_01_12_header_DATA_SIZE = ABSOLUTE(ST0D_01_ST0D_01_12_header_DATA_END - ST0D_01_ST0D_01_12_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_01_ST0D_01_12_header);
    ST0D_01_ST0D_01_12_header_ROM_END = __romPos;
    ST0D_01_ST0D_01_12_header_VRAM_END = .;

    ST0D_01_ST0D_01_12_ROM_START = __romPos;
    ST0D_01_ST0D_01_12_VRAM = ADDR(.ST0D_01_ST0D_01_12);
    .ST0D_01_ST0D_01_12 0x80153000 : AT(ST0D_01_ST0D_01_12_ROM_START) SUBALIGN(4)
    {
        ST0D_01_ST0D_01_12_DATA_START = .;
        ST0D_01_12_data__s = .;
        build/asm/ST0D_01/ovl12__MESS_ST0D_01.MSG/data/ST0D_01_12.data.s.o(.data);
        ST0D_01_ST0D_01_12_DATA_END = .;
        ST0D_01_ST0D_01_12_DATA_SIZE = ABSOLUTE(ST0D_01_ST0D_01_12_DATA_END - ST0D_01_ST0D_01_12_DATA_START);
    }
    __romPos += SIZEOF(.ST0D_01_ST0D_01_12);
    __romPos = ALIGN(__romPos, 16);
    ST0D_01_ST0D_01_12_ROM_END = __romPos;
    ST0D_01_ST0D_01_12_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
