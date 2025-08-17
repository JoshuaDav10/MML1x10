SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_r3_st10_0_header_ROM_START = __romPos;
    ST10_r3_st10_0_header_VRAM = ADDR(.ST10_r3_st10_0_header);
    .ST10_r3_st10_0_header : AT(ST10_r3_st10_0_header_ROM_START) SUBALIGN(16)
    {
        ST10_r3_st10_0_header_DATA_START = .;
        ST10_r3_st10_0_header_s = .;
        build/asm/ST10/ovl0__progbin_r3_st10.bin/ST10_r3_st10_0_header.s.o(.data);
        ST10_r3_st10_0_header_DATA_END = .;
        ST10_r3_st10_0_header_DATA_SIZE = ABSOLUTE(ST10_r3_st10_0_header_DATA_END - ST10_r3_st10_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_r3_st10_0_header);
    ST10_r3_st10_0_header_ROM_END = __romPos;
    ST10_r3_st10_0_header_VRAM_END = .;

    ST10_r3_st10_0_ROM_START = __romPos;
    ST10_r3_st10_0_VRAM = ADDR(.ST10_r3_st10_0);
    .ST10_r3_st10_0 0x80100000 : AT(ST10_r3_st10_0_ROM_START) SUBALIGN(4)
    {
        ST10_r3_st10_0_RODATA_START = .;
        build/asm/ST10/ovl0__progbin_r3_st10.bin/data/r3_st10_0.rodata.s.o(.rodata);
        ST10_r3_st10_0_RODATA_END = .;
        ST10_r3_st10_0_RODATA_SIZE = ABSOLUTE(ST10_r3_st10_0_RODATA_END - ST10_r3_st10_0_RODATA_START);
        ST10_r3_st10_0_TEXT_START = .;
        build/asm/ST10/ovl0__progbin_r3_st10.bin/AEC.s.o(.text);
        ST10_r3_st10_0_TEXT_END = .;
        ST10_r3_st10_0_TEXT_SIZE = ABSOLUTE(ST10_r3_st10_0_TEXT_END - ST10_r3_st10_0_TEXT_START);
        ST10_r3_st10_0_DATA_START = .;
        F800_data__s = .;
        build/asm/ST10/ovl0__progbin_r3_st10.bin/data/F800.data.s.o(.data);
        ST10_r3_st10_0_DATA_END = .;
        ST10_r3_st10_0_DATA_SIZE = ABSOLUTE(ST10_r3_st10_0_DATA_END - ST10_r3_st10_0_DATA_START);
    }
    __romPos += SIZEOF(.ST10_r3_st10_0);
    __romPos = ALIGN(__romPos, 16);
    ST10_r3_st10_0_ROM_END = __romPos;
    ST10_r3_st10_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
