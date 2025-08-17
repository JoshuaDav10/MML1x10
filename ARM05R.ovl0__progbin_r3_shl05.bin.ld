SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM05R_r3_shl05_0_header_ROM_START = __romPos;
    ARM05R_r3_shl05_0_header_VRAM = ADDR(.ARM05R_r3_shl05_0_header);
    .ARM05R_r3_shl05_0_header : AT(ARM05R_r3_shl05_0_header_ROM_START) SUBALIGN(16)
    {
        ARM05R_r3_shl05_0_header_DATA_START = .;
        ARM05R_r3_shl05_0_header_s = .;
        build/asm/ARM05R/ovl0__progbin_r3_shl05.bin/ARM05R_r3_shl05_0_header.s.o(.data);
        ARM05R_r3_shl05_0_header_DATA_END = .;
        ARM05R_r3_shl05_0_header_DATA_SIZE = ABSOLUTE(ARM05R_r3_shl05_0_header_DATA_END - ARM05R_r3_shl05_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM05R_r3_shl05_0_header);
    ARM05R_r3_shl05_0_header_ROM_END = __romPos;
    ARM05R_r3_shl05_0_header_VRAM_END = .;

    ARM05R_r3_shl05_0_ROM_START = __romPos;
    ARM05R_r3_shl05_0_VRAM = ADDR(.ARM05R_r3_shl05_0);
    .ARM05R_r3_shl05_0 0x800D8800 : AT(ARM05R_r3_shl05_0_ROM_START) SUBALIGN(4)
    {
        ARM05R_r3_shl05_0_DATA_START = .;
        r3_shl05_0_data__s = .;
        build/asm/ARM05R/ovl0__progbin_r3_shl05.bin/data/r3_shl05_0.data.s.o(.data);
        ARM05R_r3_shl05_0_DATA_END = .;
        ARM05R_r3_shl05_0_DATA_SIZE = ABSOLUTE(ARM05R_r3_shl05_0_DATA_END - ARM05R_r3_shl05_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM05R_r3_shl05_0);
    __romPos = ALIGN(__romPos, 16);
    ARM05R_r3_shl05_0_ROM_END = __romPos;
    ARM05R_r3_shl05_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
