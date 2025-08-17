SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1E_ST1e_4_header_ROM_START = __romPos;
    ST1E_ST1e_4_header_VRAM = ADDR(.ST1E_ST1e_4_header);
    .ST1E_ST1e_4_header : AT(ST1E_ST1e_4_header_ROM_START) SUBALIGN(16)
    {
        ST1E_ST1e_4_header_DATA_START = .;
        ST1E_ST1e_4_header_s = .;
        build/asm/ST1E/ovl4__SCR_DATA_ST1e.HED/ST1E_ST1e_4_header.s.o(.data);
        ST1E_ST1e_4_header_DATA_END = .;
        ST1E_ST1e_4_header_DATA_SIZE = ABSOLUTE(ST1E_ST1e_4_header_DATA_END - ST1E_ST1e_4_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_4_header);
    ST1E_ST1e_4_header_ROM_END = __romPos;
    ST1E_ST1e_4_header_VRAM_END = .;

    ST1E_ST1e_4_ROM_START = __romPos;
    ST1E_ST1e_4_VRAM = ADDR(.ST1E_ST1e_4);
    .ST1E_ST1e_4 0x8013A000 : AT(ST1E_ST1e_4_ROM_START) SUBALIGN(4)
    {
        ST1E_ST1e_4_DATA_START = .;
        ST1e_4_data__s = .;
        build/asm/ST1E/ovl4__SCR_DATA_ST1e.HED/data/ST1e_4.data.s.o(.data);
        ST1E_ST1e_4_DATA_END = .;
        ST1E_ST1e_4_DATA_SIZE = ABSOLUTE(ST1E_ST1e_4_DATA_END - ST1E_ST1e_4_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_ST1e_4);
    __romPos = ALIGN(__romPos, 16);
    ST1E_ST1e_4_ROM_END = __romPos;
    ST1E_ST1e_4_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
