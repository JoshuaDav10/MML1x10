SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM06R_r3_shl06_0_header_ROM_START = __romPos;
    ARM06R_r3_shl06_0_header_VRAM = ADDR(.ARM06R_r3_shl06_0_header);
    .ARM06R_r3_shl06_0_header : AT(ARM06R_r3_shl06_0_header_ROM_START) SUBALIGN(16)
    {
        ARM06R_r3_shl06_0_header_DATA_START = .;
        ARM06R_r3_shl06_0_header_s = .;
        build/asm/ARM06R/ovl0__progbin_r3_shl06.bin/ARM06R_r3_shl06_0_header.s.o(.data);
        ARM06R_r3_shl06_0_header_DATA_END = .;
        ARM06R_r3_shl06_0_header_DATA_SIZE = ABSOLUTE(ARM06R_r3_shl06_0_header_DATA_END - ARM06R_r3_shl06_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM06R_r3_shl06_0_header);
    ARM06R_r3_shl06_0_header_ROM_END = __romPos;
    ARM06R_r3_shl06_0_header_VRAM_END = .;

    ARM06R_r3_shl06_0_ROM_START = __romPos;
    ARM06R_r3_shl06_0_VRAM = ADDR(.ARM06R_r3_shl06_0);
    .ARM06R_r3_shl06_0 0x800D8800 : AT(ARM06R_r3_shl06_0_ROM_START) SUBALIGN(4)
    {
        ARM06R_r3_shl06_0_DATA_START = .;
        r3_shl06_0_data__s = .;
        build/asm/ARM06R/ovl0__progbin_r3_shl06.bin/data/r3_shl06_0.data.s.o(.data);
        ARM06R_r3_shl06_0_DATA_END = .;
        ARM06R_r3_shl06_0_DATA_SIZE = ABSOLUTE(ARM06R_r3_shl06_0_DATA_END - ARM06R_r3_shl06_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM06R_r3_shl06_0);
    __romPos = ALIGN(__romPos, 16);
    ARM06R_r3_shl06_0_ROM_END = __romPos;
    ARM06R_r3_shl06_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
