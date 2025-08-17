SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1C_r3_st1c_0_header_ROM_START = __romPos;
    ST1C_r3_st1c_0_header_VRAM = ADDR(.ST1C_r3_st1c_0_header);
    .ST1C_r3_st1c_0_header : AT(ST1C_r3_st1c_0_header_ROM_START) SUBALIGN(16)
    {
        ST1C_r3_st1c_0_header_DATA_START = .;
        ST1C_r3_st1c_0_header_s = .;
        build/asm/ST1C/ovl0__progbin_r3_st1c.bin/ST1C_r3_st1c_0_header.s.o(.data);
        ST1C_r3_st1c_0_header_DATA_END = .;
        ST1C_r3_st1c_0_header_DATA_SIZE = ABSOLUTE(ST1C_r3_st1c_0_header_DATA_END - ST1C_r3_st1c_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_r3_st1c_0_header);
    ST1C_r3_st1c_0_header_ROM_END = __romPos;
    ST1C_r3_st1c_0_header_VRAM_END = .;

    ST1C_r3_st1c_0_ROM_START = __romPos;
    ST1C_r3_st1c_0_VRAM = ADDR(.ST1C_r3_st1c_0);
    .ST1C_r3_st1c_0 0x80100000 : AT(ST1C_r3_st1c_0_ROM_START) SUBALIGN(4)
    {
        ST1C_r3_st1c_0_RODATA_START = .;
        build/asm/ST1C/ovl0__progbin_r3_st1c.bin/data/800.rodata.s.o(.rodata);
        ST1C_r3_st1c_0_RODATA_END = .;
        ST1C_r3_st1c_0_RODATA_SIZE = ABSOLUTE(ST1C_r3_st1c_0_RODATA_END - ST1C_r3_st1c_0_RODATA_START);
        ST1C_r3_st1c_0_TEXT_START = .;
        build/asm/ST1C/ovl0__progbin_r3_st1c.bin/81C.s.o(.text);
        ST1C_r3_st1c_0_TEXT_END = .;
        ST1C_r3_st1c_0_TEXT_SIZE = ABSOLUTE(ST1C_r3_st1c_0_TEXT_END - ST1C_r3_st1c_0_TEXT_START);
        ST1C_r3_st1c_0_DATA_START = .;
        _3E40_data__s = .;
        build/asm/ST1C/ovl0__progbin_r3_st1c.bin/data/3E40.data.s.o(.data);
        ST1C_r3_st1c_0_DATA_END = .;
        ST1C_r3_st1c_0_DATA_SIZE = ABSOLUTE(ST1C_r3_st1c_0_DATA_END - ST1C_r3_st1c_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1C_r3_st1c_0);
    __romPos = ALIGN(__romPos, 16);
    ST1C_r3_st1c_0_ROM_END = __romPos;
    ST1C_r3_st1c_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
