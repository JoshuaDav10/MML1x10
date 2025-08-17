SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM10R_r3_shl0d_0_header_ROM_START = __romPos;
    ARM10R_r3_shl0d_0_header_VRAM = ADDR(.ARM10R_r3_shl0d_0_header);
    .ARM10R_r3_shl0d_0_header : AT(ARM10R_r3_shl0d_0_header_ROM_START) SUBALIGN(16)
    {
        ARM10R_r3_shl0d_0_header_DATA_START = .;
        ARM10R_r3_shl0d_0_header_s = .;
        build/asm/ARM10R/ovl0__progbin_r3_shl0d.bin/ARM10R_r3_shl0d_0_header.s.o(.data);
        ARM10R_r3_shl0d_0_header_DATA_END = .;
        ARM10R_r3_shl0d_0_header_DATA_SIZE = ABSOLUTE(ARM10R_r3_shl0d_0_header_DATA_END - ARM10R_r3_shl0d_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM10R_r3_shl0d_0_header);
    ARM10R_r3_shl0d_0_header_ROM_END = __romPos;
    ARM10R_r3_shl0d_0_header_VRAM_END = .;

    ARM10R_r3_shl0d_0_ROM_START = __romPos;
    ARM10R_r3_shl0d_0_VRAM = ADDR(.ARM10R_r3_shl0d_0);
    .ARM10R_r3_shl0d_0 0x800D8800 : AT(ARM10R_r3_shl0d_0_ROM_START) SUBALIGN(4)
    {
        ARM10R_r3_shl0d_0_DATA_START = .;
        r3_shl0d_0_data__s = .;
        build/asm/ARM10R/ovl0__progbin_r3_shl0d.bin/data/r3_shl0d_0.data.s.o(.data);
        ARM10R_r3_shl0d_0_DATA_END = .;
        ARM10R_r3_shl0d_0_DATA_SIZE = ABSOLUTE(ARM10R_r3_shl0d_0_DATA_END - ARM10R_r3_shl0d_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM10R_r3_shl0d_0);
    __romPos = ALIGN(__romPos, 16);
    ARM10R_r3_shl0d_0_ROM_END = __romPos;
    ARM10R_r3_shl0d_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
