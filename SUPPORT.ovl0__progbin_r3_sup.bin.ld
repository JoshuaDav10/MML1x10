SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    SUPPORT_r3_sup_0_header_ROM_START = __romPos;
    SUPPORT_r3_sup_0_header_VRAM = ADDR(.SUPPORT_r3_sup_0_header);
    .SUPPORT_r3_sup_0_header : AT(SUPPORT_r3_sup_0_header_ROM_START) SUBALIGN(16)
    {
        SUPPORT_r3_sup_0_header_DATA_START = .;
        SUPPORT_r3_sup_0_header_s = .;
        build/asm/SUPPORT/ovl0__progbin_r3_sup.bin/SUPPORT_r3_sup_0_header.s.o(.data);
        SUPPORT_r3_sup_0_header_DATA_END = .;
        SUPPORT_r3_sup_0_header_DATA_SIZE = ABSOLUTE(SUPPORT_r3_sup_0_header_DATA_END - SUPPORT_r3_sup_0_header_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT_r3_sup_0_header);
    SUPPORT_r3_sup_0_header_ROM_END = __romPos;
    SUPPORT_r3_sup_0_header_VRAM_END = .;

    SUPPORT_r3_sup_0_ROM_START = __romPos;
    SUPPORT_r3_sup_0_VRAM = ADDR(.SUPPORT_r3_sup_0);
    .SUPPORT_r3_sup_0 0x801D8000 : AT(SUPPORT_r3_sup_0_ROM_START) SUBALIGN(4)
    {
        SUPPORT_r3_sup_0_DATA_START = .;
        r3_sup_0_data__s = .;
        build/asm/SUPPORT/ovl0__progbin_r3_sup.bin/data/r3_sup_0.data.s.o(.data);
        SUPPORT_r3_sup_0_DATA_END = .;
        SUPPORT_r3_sup_0_DATA_SIZE = ABSOLUTE(SUPPORT_r3_sup_0_DATA_END - SUPPORT_r3_sup_0_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT_r3_sup_0);
    __romPos = ALIGN(__romPos, 16);
    SUPPORT_r3_sup_0_ROM_END = __romPos;
    SUPPORT_r3_sup_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
