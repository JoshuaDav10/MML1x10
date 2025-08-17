SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1A_r3_st1a_0_header_ROM_START = __romPos;
    ST1A_r3_st1a_0_header_VRAM = ADDR(.ST1A_r3_st1a_0_header);
    .ST1A_r3_st1a_0_header : AT(ST1A_r3_st1a_0_header_ROM_START) SUBALIGN(16)
    {
        ST1A_r3_st1a_0_header_DATA_START = .;
        ST1A_r3_st1a_0_header_s = .;
        build/asm/ST1A/ovl0__progbin_r3_st1a.bin/ST1A_r3_st1a_0_header.s.o(.data);
        ST1A_r3_st1a_0_header_DATA_END = .;
        ST1A_r3_st1a_0_header_DATA_SIZE = ABSOLUTE(ST1A_r3_st1a_0_header_DATA_END - ST1A_r3_st1a_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_r3_st1a_0_header);
    ST1A_r3_st1a_0_header_ROM_END = __romPos;
    ST1A_r3_st1a_0_header_VRAM_END = .;

    ST1A_r3_st1a_0_ROM_START = __romPos;
    ST1A_r3_st1a_0_VRAM = ADDR(.ST1A_r3_st1a_0);
    .ST1A_r3_st1a_0 0x80100000 : AT(ST1A_r3_st1a_0_ROM_START) SUBALIGN(4)
    {
        ST1A_r3_st1a_0_RODATA_START = .;
        build/asm/ST1A/ovl0__progbin_r3_st1a.bin/data/800.rodata.s.o(.rodata);
        ST1A_r3_st1a_0_RODATA_END = .;
        ST1A_r3_st1a_0_RODATA_SIZE = ABSOLUTE(ST1A_r3_st1a_0_RODATA_END - ST1A_r3_st1a_0_RODATA_START);
        ST1A_r3_st1a_0_TEXT_START = .;
        build/asm/ST1A/ovl0__progbin_r3_st1a.bin/EF8.s.o(.text);
        build/src/ST1A/ovl0__progbin_r3_st1a.bin/eve19.c.o(.text);
        build/asm/ST1A/ovl0__progbin_r3_st1a.bin/2CAEC.s.o(.text);
        ST1A_r3_st1a_0_TEXT_END = .;
        ST1A_r3_st1a_0_TEXT_SIZE = ABSOLUTE(ST1A_r3_st1a_0_TEXT_END - ST1A_r3_st1a_0_TEXT_START);
        ST1A_r3_st1a_0_DATA_START = .;
        _2CB58_data__s = .;
        build/asm/ST1A/ovl0__progbin_r3_st1a.bin/data/2CB58.data.s.o(.data);
        ST1A_r3_st1a_0_DATA_END = .;
        ST1A_r3_st1a_0_DATA_SIZE = ABSOLUTE(ST1A_r3_st1a_0_DATA_END - ST1A_r3_st1a_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1A_r3_st1a_0);
    __romPos = ALIGN(__romPos, 16);
    ST1A_r3_st1a_0_ROM_END = __romPos;
    ST1A_r3_st1a_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
