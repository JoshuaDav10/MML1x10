SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM09R_r3_shl09_0_header_ROM_START = __romPos;
    ARM09R_r3_shl09_0_header_VRAM = ADDR(.ARM09R_r3_shl09_0_header);
    .ARM09R_r3_shl09_0_header : AT(ARM09R_r3_shl09_0_header_ROM_START) SUBALIGN(16)
    {
        ARM09R_r3_shl09_0_header_DATA_START = .;
        ARM09R_r3_shl09_0_header_s = .;
        build/asm/ARM09R/ovl0__progbin_r3_shl09.bin/ARM09R_r3_shl09_0_header.s.o(.data);
        ARM09R_r3_shl09_0_header_DATA_END = .;
        ARM09R_r3_shl09_0_header_DATA_SIZE = ABSOLUTE(ARM09R_r3_shl09_0_header_DATA_END - ARM09R_r3_shl09_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM09R_r3_shl09_0_header);
    ARM09R_r3_shl09_0_header_ROM_END = __romPos;
    ARM09R_r3_shl09_0_header_VRAM_END = .;

    ARM09R_r3_shl09_0_ROM_START = __romPos;
    ARM09R_r3_shl09_0_VRAM = ADDR(.ARM09R_r3_shl09_0);
    .ARM09R_r3_shl09_0 0x800D8800 : AT(ARM09R_r3_shl09_0_ROM_START) SUBALIGN(4)
    {
        ARM09R_r3_shl09_0_DATA_START = .;
        r3_shl09_0_data__s = .;
        build/asm/ARM09R/ovl0__progbin_r3_shl09.bin/data/r3_shl09_0.data.s.o(.data);
        ARM09R_r3_shl09_0_DATA_END = .;
        ARM09R_r3_shl09_0_DATA_SIZE = ABSOLUTE(ARM09R_r3_shl09_0_DATA_END - ARM09R_r3_shl09_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM09R_r3_shl09_0);
    __romPos = ALIGN(__romPos, 16);
    ARM09R_r3_shl09_0_ROM_END = __romPos;
    ARM09R_r3_shl09_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
