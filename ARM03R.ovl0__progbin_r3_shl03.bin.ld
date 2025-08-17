SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ARM03R_r3_shl03_0_header_ROM_START = __romPos;
    ARM03R_r3_shl03_0_header_VRAM = ADDR(.ARM03R_r3_shl03_0_header);
    .ARM03R_r3_shl03_0_header : AT(ARM03R_r3_shl03_0_header_ROM_START) SUBALIGN(16)
    {
        ARM03R_r3_shl03_0_header_DATA_START = .;
        ARM03R_r3_shl03_0_header_s = .;
        build/asm/ARM03R/ovl0__progbin_r3_shl03.bin/ARM03R_r3_shl03_0_header.s.o(.data);
        ARM03R_r3_shl03_0_header_DATA_END = .;
        ARM03R_r3_shl03_0_header_DATA_SIZE = ABSOLUTE(ARM03R_r3_shl03_0_header_DATA_END - ARM03R_r3_shl03_0_header_DATA_START);
    }
    __romPos += SIZEOF(.ARM03R_r3_shl03_0_header);
    ARM03R_r3_shl03_0_header_ROM_END = __romPos;
    ARM03R_r3_shl03_0_header_VRAM_END = .;

    ARM03R_r3_shl03_0_ROM_START = __romPos;
    ARM03R_r3_shl03_0_VRAM = ADDR(.ARM03R_r3_shl03_0);
    .ARM03R_r3_shl03_0 0x800D8800 : AT(ARM03R_r3_shl03_0_ROM_START) SUBALIGN(4)
    {
        ARM03R_r3_shl03_0_DATA_START = .;
        r3_shl03_0_data__s = .;
        build/asm/ARM03R/ovl0__progbin_r3_shl03.bin/data/r3_shl03_0.data.s.o(.data);
        ARM03R_r3_shl03_0_DATA_END = .;
        ARM03R_r3_shl03_0_DATA_SIZE = ABSOLUTE(ARM03R_r3_shl03_0_DATA_END - ARM03R_r3_shl03_0_DATA_START);
    }
    __romPos += SIZEOF(.ARM03R_r3_shl03_0);
    __romPos = ALIGN(__romPos, 16);
    ARM03R_r3_shl03_0_ROM_END = __romPos;
    ARM03R_r3_shl03_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
