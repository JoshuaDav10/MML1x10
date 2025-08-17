SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_03_ST04_03_16_header_ROM_START = __romPos;
    ST04_03_ST04_03_16_header_VRAM = ADDR(.ST04_03_ST04_03_16_header);
    .ST04_03_ST04_03_16_header : AT(ST04_03_ST04_03_16_header_ROM_START) SUBALIGN(16)
    {
        ST04_03_ST04_03_16_header_DATA_START = .;
        ST04_03_ST04_03_16_header_s = .;
        build/asm/ST04_03/ovl16__MESS_ST04_03.MSG/ST04_03_ST04_03_16_header.s.o(.data);
        ST04_03_ST04_03_16_header_DATA_END = .;
        ST04_03_ST04_03_16_header_DATA_SIZE = ABSOLUTE(ST04_03_ST04_03_16_header_DATA_END - ST04_03_ST04_03_16_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_03_ST04_03_16_header);
    ST04_03_ST04_03_16_header_ROM_END = __romPos;
    ST04_03_ST04_03_16_header_VRAM_END = .;

    ST04_03_ST04_03_16_ROM_START = __romPos;
    ST04_03_ST04_03_16_VRAM = ADDR(.ST04_03_ST04_03_16);
    .ST04_03_ST04_03_16 0x80153000 : AT(ST04_03_ST04_03_16_ROM_START) SUBALIGN(4)
    {
        ST04_03_ST04_03_16_DATA_START = .;
        ST04_03_16_data__s = .;
        build/asm/ST04_03/ovl16__MESS_ST04_03.MSG/data/ST04_03_16.data.s.o(.data);
        ST04_03_ST04_03_16_DATA_END = .;
        ST04_03_ST04_03_16_DATA_SIZE = ABSOLUTE(ST04_03_ST04_03_16_DATA_END - ST04_03_ST04_03_16_DATA_START);
    }
    __romPos += SIZEOF(.ST04_03_ST04_03_16);
    __romPos = ALIGN(__romPos, 16);
    ST04_03_ST04_03_16_ROM_END = __romPos;
    ST04_03_ST04_03_16_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
