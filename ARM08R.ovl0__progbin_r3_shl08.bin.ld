SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM08R_r3_shl08_0_header_ROM_START = __romPos;
    ARM08R_r3_shl08_0_header_VRAM = ADDR(.ARM08R_r3_shl08_0_header);
    .ARM08R_r3_shl08_0_header : AT(ARM08R_r3_shl08_0_header_ROM_START) SUBALIGN(16)
    {
        ARM08R_r3_shl08_0_header_DATA_START = .;
        ARM08R_r3_shl08_0_header_s = .;
        build/asm/ARM08R/ovl0__progbin_r3_shl08.bin/ARM08R_r3_shl08_0_header.s.o(.data);
        ARM08R_r3_shl08_0_header_DATA_END = .;
        ARM08R_r3_shl08_0_header_DATA_SIZE = ABSOLUTE(ARM08R_r3_shl08_0_header_DATA_END - ARM08R_r3_shl08_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM08R_r3_shl08_0_header);
    ARM08R_r3_shl08_0_header_ROM_END = __romPos;
    ARM08R_r3_shl08_0_header_VRAM_END = .;

    ARM08R_r3_shl08_0_ROM_START = __romPos;
    ARM08R_r3_shl08_0_VRAM = ADDR(.ARM08R_r3_shl08_0);
    .ARM08R_r3_shl08_0 0x800D8800 : AT(ARM08R_r3_shl08_0_ROM_START) SUBALIGN(4)
    {
        ARM08R_r3_shl08_0_DATA_START = .;
        r3_shl08_0_data__s = .;
        build/asm/ARM08R/ovl0__progbin_r3_shl08.bin/data/r3_shl08_0.data.s.o(.data);
        ARM08R_r3_shl08_0_DATA_END = .;
        ARM08R_r3_shl08_0_DATA_SIZE = ABSOLUTE(ARM08R_r3_shl08_0_DATA_END - ARM08R_r3_shl08_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM08R_r3_shl08_0);
    __romPos = ALIGN(__romPos, 16);
    ARM08R_r3_shl08_0_ROM_END = __romPos;
    ARM08R_r3_shl08_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
