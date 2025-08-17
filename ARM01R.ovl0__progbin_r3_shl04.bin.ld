SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM01R_r3_shl04_0_header_ROM_START = __romPos;
    ARM01R_r3_shl04_0_header_VRAM = ADDR(.ARM01R_r3_shl04_0_header);
    .ARM01R_r3_shl04_0_header : AT(ARM01R_r3_shl04_0_header_ROM_START) SUBALIGN(16)
    {
        ARM01R_r3_shl04_0_header_DATA_START = .;
        ARM01R_r3_shl04_0_header_s = .;
        build/asm/ARM01R/ovl0__progbin_r3_shl04.bin/ARM01R_r3_shl04_0_header.s.o(.data);
        ARM01R_r3_shl04_0_header_DATA_END = .;
        ARM01R_r3_shl04_0_header_DATA_SIZE = ABSOLUTE(ARM01R_r3_shl04_0_header_DATA_END - ARM01R_r3_shl04_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM01R_r3_shl04_0_header);
    ARM01R_r3_shl04_0_header_ROM_END = __romPos;
    ARM01R_r3_shl04_0_header_VRAM_END = .;

    ARM01R_r3_shl04_0_ROM_START = __romPos;
    ARM01R_r3_shl04_0_VRAM = ADDR(.ARM01R_r3_shl04_0);
    .ARM01R_r3_shl04_0 0x800D8800 : AT(ARM01R_r3_shl04_0_ROM_START) SUBALIGN(4)
    {
        ARM01R_r3_shl04_0_DATA_START = .;
        r3_shl04_0_data__s = .;
        build/asm/ARM01R/ovl0__progbin_r3_shl04.bin/data/r3_shl04_0.data.s.o(.data);
        ARM01R_r3_shl04_0_DATA_END = .;
        ARM01R_r3_shl04_0_DATA_SIZE = ABSOLUTE(ARM01R_r3_shl04_0_DATA_END - ARM01R_r3_shl04_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM01R_r3_shl04_0);
    __romPos = ALIGN(__romPos, 16);
    ARM01R_r3_shl04_0_ROM_END = __romPos;
    ARM01R_r3_shl04_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
