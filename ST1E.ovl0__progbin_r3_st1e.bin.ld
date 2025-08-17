SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1E_r3_st1e_0_header_ROM_START = __romPos;
    ST1E_r3_st1e_0_header_VRAM = ADDR(.ST1E_r3_st1e_0_header);
    .ST1E_r3_st1e_0_header : AT(ST1E_r3_st1e_0_header_ROM_START) SUBALIGN(16)
    {
        ST1E_r3_st1e_0_header_DATA_START = .;
        ST1E_r3_st1e_0_header_s = .;
        build/asm/ST1E/ovl0__progbin_r3_st1e.bin/ST1E_r3_st1e_0_header.s.o(.data);
        ST1E_r3_st1e_0_header_DATA_END = .;
        ST1E_r3_st1e_0_header_DATA_SIZE = ABSOLUTE(ST1E_r3_st1e_0_header_DATA_END - ST1E_r3_st1e_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_r3_st1e_0_header);
    ST1E_r3_st1e_0_header_ROM_END = __romPos;
    ST1E_r3_st1e_0_header_VRAM_END = .;

    ST1E_r3_st1e_0_ROM_START = __romPos;
    ST1E_r3_st1e_0_VRAM = ADDR(.ST1E_r3_st1e_0);
    .ST1E_r3_st1e_0 0x80100000 : AT(ST1E_r3_st1e_0_ROM_START) SUBALIGN(4)
    {
        ST1E_r3_st1e_0_RODATA_START = .;
        build/asm/ST1E/ovl0__progbin_r3_st1e.bin/data/800.rodata.s.o(.rodata);
        ST1E_r3_st1e_0_RODATA_END = .;
        ST1E_r3_st1e_0_RODATA_SIZE = ABSOLUTE(ST1E_r3_st1e_0_RODATA_END - ST1E_r3_st1e_0_RODATA_START);
        ST1E_r3_st1e_0_TEXT_START = .;
        build/asm/ST1E/ovl0__progbin_r3_st1e.bin/8AC.s.o(.text);
        ST1E_r3_st1e_0_TEXT_END = .;
        ST1E_r3_st1e_0_TEXT_SIZE = ABSOLUTE(ST1E_r3_st1e_0_TEXT_END - ST1E_r3_st1e_0_TEXT_START);
        ST1E_r3_st1e_0_DATA_START = .;
        _4598_data__s = .;
        build/asm/ST1E/ovl0__progbin_r3_st1e.bin/data/4598.data.s.o(.data);
        ST1E_r3_st1e_0_DATA_END = .;
        ST1E_r3_st1e_0_DATA_SIZE = ABSOLUTE(ST1E_r3_st1e_0_DATA_END - ST1E_r3_st1e_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1E_r3_st1e_0);
    __romPos = ALIGN(__romPos, 16);
    ST1E_r3_st1e_0_ROM_END = __romPos;
    ST1E_r3_st1e_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
