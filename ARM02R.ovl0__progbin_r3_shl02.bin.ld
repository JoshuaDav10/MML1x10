SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM02R_r3_shl02_0_header_ROM_START = __romPos;
    ARM02R_r3_shl02_0_header_VRAM = ADDR(.ARM02R_r3_shl02_0_header);
    .ARM02R_r3_shl02_0_header : AT(ARM02R_r3_shl02_0_header_ROM_START) SUBALIGN(16)
    {
        ARM02R_r3_shl02_0_header_DATA_START = .;
        ARM02R_r3_shl02_0_header_s = .;
        build/asm/ARM02R/ovl0__progbin_r3_shl02.bin/ARM02R_r3_shl02_0_header.s.o(.data);
        ARM02R_r3_shl02_0_header_DATA_END = .;
        ARM02R_r3_shl02_0_header_DATA_SIZE = ABSOLUTE(ARM02R_r3_shl02_0_header_DATA_END - ARM02R_r3_shl02_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM02R_r3_shl02_0_header);
    ARM02R_r3_shl02_0_header_ROM_END = __romPos;
    ARM02R_r3_shl02_0_header_VRAM_END = .;

    ARM02R_r3_shl02_0_ROM_START = __romPos;
    ARM02R_r3_shl02_0_VRAM = ADDR(.ARM02R_r3_shl02_0);
    .ARM02R_r3_shl02_0 0x800D8800 : AT(ARM02R_r3_shl02_0_ROM_START) SUBALIGN(4)
    {
        ARM02R_r3_shl02_0_DATA_START = .;
        r3_shl02_0_data__s = .;
        build/asm/ARM02R/ovl0__progbin_r3_shl02.bin/data/r3_shl02_0.data.s.o(.data);
        ARM02R_r3_shl02_0_DATA_END = .;
        ARM02R_r3_shl02_0_DATA_SIZE = ABSOLUTE(ARM02R_r3_shl02_0_DATA_END - ARM02R_r3_shl02_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM02R_r3_shl02_0);
    __romPos = ALIGN(__romPos, 16);
    ARM02R_r3_shl02_0_ROM_END = __romPos;
    ARM02R_r3_shl02_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
