SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_00_ST10_00_27_header_ROM_START = __romPos;
    ST10_00_ST10_00_27_header_VRAM = ADDR(.ST10_00_ST10_00_27_header);
    .ST10_00_ST10_00_27_header : AT(ST10_00_ST10_00_27_header_ROM_START) SUBALIGN(16)
    {
        ST10_00_ST10_00_27_header_DATA_START = .;
        ST10_00_ST10_00_27_header_s = .;
        build/asm/ST10_00/ovl27__MESS_ST10_00.MSG/ST10_00_ST10_00_27_header.s.o(.data);
        ST10_00_ST10_00_27_header_DATA_END = .;
        ST10_00_ST10_00_27_header_DATA_SIZE = ABSOLUTE(ST10_00_ST10_00_27_header_DATA_END - ST10_00_ST10_00_27_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_00_ST10_00_27_header);
    ST10_00_ST10_00_27_header_ROM_END = __romPos;
    ST10_00_ST10_00_27_header_VRAM_END = .;

    ST10_00_ST10_00_27_ROM_START = __romPos;
    ST10_00_ST10_00_27_VRAM = ADDR(.ST10_00_ST10_00_27);
    .ST10_00_ST10_00_27 0x80153000 : AT(ST10_00_ST10_00_27_ROM_START) SUBALIGN(4)
    {
        ST10_00_ST10_00_27_DATA_START = .;
        ST10_00_27_data__s = .;
        build/asm/ST10_00/ovl27__MESS_ST10_00.MSG/data/ST10_00_27.data.s.o(.data);
        ST10_00_ST10_00_27_DATA_END = .;
        ST10_00_ST10_00_27_DATA_SIZE = ABSOLUTE(ST10_00_ST10_00_27_DATA_END - ST10_00_ST10_00_27_DATA_START);
    }
    __romPos += SIZEOF(.ST10_00_ST10_00_27);
    __romPos = ALIGN(__romPos, 16);
    ST10_00_ST10_00_27_ROM_END = __romPos;
    ST10_00_ST10_00_27_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
