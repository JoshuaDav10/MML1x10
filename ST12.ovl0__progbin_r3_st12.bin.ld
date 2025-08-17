SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST12_r3_st12_0_header_ROM_START = __romPos;
    ST12_r3_st12_0_header_VRAM = ADDR(.ST12_r3_st12_0_header);
    .ST12_r3_st12_0_header : AT(ST12_r3_st12_0_header_ROM_START) SUBALIGN(16)
    {
        ST12_r3_st12_0_header_DATA_START = .;
        ST12_r3_st12_0_header_s = .;
        build/asm/ST12/ovl0__progbin_r3_st12.bin/ST12_r3_st12_0_header.s.o(.data);
        ST12_r3_st12_0_header_DATA_END = .;
        ST12_r3_st12_0_header_DATA_SIZE = ABSOLUTE(ST12_r3_st12_0_header_DATA_END - ST12_r3_st12_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ST12_r3_st12_0_header);
    ST12_r3_st12_0_header_ROM_END = __romPos;
    ST12_r3_st12_0_header_VRAM_END = .;

    ST12_r3_st12_0_ROM_START = __romPos;
    ST12_r3_st12_0_VRAM = ADDR(.ST12_r3_st12_0);
    .ST12_r3_st12_0 0x80100000 : AT(ST12_r3_st12_0_ROM_START) SUBALIGN(4)
    {
        ST12_r3_st12_0_RODATA_START = .;
        build/asm/ST12/ovl0__progbin_r3_st12.bin/data/800.rodata.s.o(.rodata);
        ST12_r3_st12_0_RODATA_END = .;
        ST12_r3_st12_0_RODATA_SIZE = ABSOLUTE(ST12_r3_st12_0_RODATA_END - ST12_r3_st12_0_RODATA_START);
        ST12_r3_st12_0_TEXT_START = .;
        build/asm/ST12/ovl0__progbin_r3_st12.bin/9D4.s.o(.text);
        ST12_r3_st12_0_TEXT_END = .;
        ST12_r3_st12_0_TEXT_SIZE = ABSOLUTE(ST12_r3_st12_0_TEXT_END - ST12_r3_st12_0_TEXT_START);
        ST12_r3_st12_0_DATA_START = .;
        _8620_data__s = .;
        build/asm/ST12/ovl0__progbin_r3_st12.bin/data/8620.data.s.o(.data);
        ST12_r3_st12_0_DATA_END = .;
        ST12_r3_st12_0_DATA_SIZE = ABSOLUTE(ST12_r3_st12_0_DATA_END - ST12_r3_st12_0_DATA_START);
    }
    __romPos += SIZEOF(.ST12_r3_st12_0);
    __romPos = ALIGN(__romPos, 16);
    ST12_r3_st12_0_ROM_END = __romPos;
    ST12_r3_st12_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
