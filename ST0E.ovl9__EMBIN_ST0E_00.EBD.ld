SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST0E_ST0E_00_9_header_ROM_START = __romPos;
    ST0E_ST0E_00_9_header_VRAM = ADDR(.ST0E_ST0E_00_9_header);
    .ST0E_ST0E_00_9_header : AT(ST0E_ST0E_00_9_header_ROM_START) SUBALIGN(16)
    {
        ST0E_ST0E_00_9_header_DATA_START = .;
        ST0E_ST0E_00_9_header_s = .;
        build/asm/ST0E/ovl9__EMBIN_ST0E_00.EBD/ST0E_ST0E_00_9_header.s.o(.data);
        ST0E_ST0E_00_9_header_DATA_END = .;
        ST0E_ST0E_00_9_header_DATA_SIZE = ABSOLUTE(ST0E_ST0E_00_9_header_DATA_END - ST0E_ST0E_00_9_header_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_00_9_header);
    ST0E_ST0E_00_9_header_ROM_END = __romPos;
    ST0E_ST0E_00_9_header_VRAM_END = .;

    ST0E_ST0E_00_9_ROM_START = __romPos;
    ST0E_ST0E_00_9_VRAM = ADDR(.ST0E_ST0E_00_9);
    .ST0E_ST0E_00_9 0x8016C000 : AT(ST0E_ST0E_00_9_ROM_START) SUBALIGN(4)
    {
        ST0E_ST0E_00_9_DATA_START = .;
        ST0E_00_9_data__s = .;
        build/asm/ST0E/ovl9__EMBIN_ST0E_00.EBD/data/ST0E_00_9.data.s.o(.data);
        ST0E_ST0E_00_9_DATA_END = .;
        ST0E_ST0E_00_9_DATA_SIZE = ABSOLUTE(ST0E_ST0E_00_9_DATA_END - ST0E_ST0E_00_9_DATA_START);
    }
    __romPos += SIZEOF(.ST0E_ST0E_00_9);
    __romPos = ALIGN(__romPos, 16);
    ST0E_ST0E_00_9_ROM_END = __romPos;
    ST0E_ST0E_00_9_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
