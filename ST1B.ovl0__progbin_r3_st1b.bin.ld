SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST1B_r3_st1b_0_header_ROM_START = __romPos;
    ST1B_r3_st1b_0_header_VRAM = ADDR(.ST1B_r3_st1b_0_header);
    .ST1B_r3_st1b_0_header : AT(ST1B_r3_st1b_0_header_ROM_START) SUBALIGN(16)
    {
        ST1B_r3_st1b_0_header_DATA_START = .;
        ST1B_r3_st1b_0_header_s = .;
        build/asm/ST1B/ovl0__progbin_r3_st1b.bin/ST1B_r3_st1b_0_header.s.o(.data);
        ST1B_r3_st1b_0_header_DATA_END = .;
        ST1B_r3_st1b_0_header_DATA_SIZE = ABSOLUTE(ST1B_r3_st1b_0_header_DATA_END - ST1B_r3_st1b_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_r3_st1b_0_header);
    ST1B_r3_st1b_0_header_ROM_END = __romPos;
    ST1B_r3_st1b_0_header_VRAM_END = .;

    ST1B_r3_st1b_0_ROM_START = __romPos;
    ST1B_r3_st1b_0_VRAM = ADDR(.ST1B_r3_st1b_0);
    .ST1B_r3_st1b_0 0x80100000 : AT(ST1B_r3_st1b_0_ROM_START) SUBALIGN(4)
    {
        ST1B_r3_st1b_0_RODATA_START = .;
        build/asm/ST1B/ovl0__progbin_r3_st1b.bin/data/800.rodata.s.o(.rodata);
        ST1B_r3_st1b_0_RODATA_END = .;
        ST1B_r3_st1b_0_RODATA_SIZE = ABSOLUTE(ST1B_r3_st1b_0_RODATA_END - ST1B_r3_st1b_0_RODATA_START);
        ST1B_r3_st1b_0_TEXT_START = .;
        build/asm/ST1B/ovl0__progbin_r3_st1b.bin/FA8.s.o(.text);
        ST1B_r3_st1b_0_TEXT_END = .;
        ST1B_r3_st1b_0_TEXT_SIZE = ABSOLUTE(ST1B_r3_st1b_0_TEXT_END - ST1B_r3_st1b_0_TEXT_START);
        ST1B_r3_st1b_0_DATA_START = .;
        CD60_data__s = .;
        build/asm/ST1B/ovl0__progbin_r3_st1b.bin/data/CD60.data.s.o(.data);
        ST1B_r3_st1b_0_DATA_END = .;
        ST1B_r3_st1b_0_DATA_SIZE = ABSOLUTE(ST1B_r3_st1b_0_DATA_END - ST1B_r3_st1b_0_DATA_START);
    }
    __romPos += SIZEOF(.ST1B_r3_st1b_0);
    __romPos = ALIGN(__romPos, 16);
    ST1B_r3_st1b_0_ROM_END = __romPos;
    ST1B_r3_st1b_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
