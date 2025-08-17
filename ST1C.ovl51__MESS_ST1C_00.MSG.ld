SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1C_ST1C_00_51_header_ROM_START = __romPos;
    ST1C_ST1C_00_51_header_VRAM = ADDR(.ST1C_ST1C_00_51_header);
    .ST1C_ST1C_00_51_header : AT(ST1C_ST1C_00_51_header_ROM_START) SUBALIGN(16)
    {
        ST1C_ST1C_00_51_header_DATA_START = .;
        ST1C_ST1C_00_51_header_s = .;
        build/asm/ST1C/ovl51__MESS_ST1C_00.MSG/ST1C_ST1C_00_51_header.s.o(.data);
        ST1C_ST1C_00_51_header_DATA_END = .;
        ST1C_ST1C_00_51_header_DATA_SIZE = ABSOLUTE(ST1C_ST1C_00_51_header_DATA_END - ST1C_ST1C_00_51_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1C_00_51_header);
    ST1C_ST1C_00_51_header_ROM_END = __romPos;
    ST1C_ST1C_00_51_header_VRAM_END = .;

    ST1C_ST1C_00_51_ROM_START = __romPos;
    ST1C_ST1C_00_51_VRAM = ADDR(.ST1C_ST1C_00_51);
    .ST1C_ST1C_00_51 0x80153000 : AT(ST1C_ST1C_00_51_ROM_START) SUBALIGN(4)
    {
        ST1C_ST1C_00_51_DATA_START = .;
        ST1C_00_51_data__s = .;
        build/asm/ST1C/ovl51__MESS_ST1C_00.MSG/data/ST1C_00_51.data.s.o(.data);
        ST1C_ST1C_00_51_DATA_END = .;
        ST1C_ST1C_00_51_DATA_SIZE = ABSOLUTE(ST1C_ST1C_00_51_DATA_END - ST1C_ST1C_00_51_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_ST1C_00_51);
    __romPos = ALIGN(__romPos, 16);
    ST1C_ST1C_00_51_ROM_END = __romPos;
    ST1C_ST1C_00_51_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
