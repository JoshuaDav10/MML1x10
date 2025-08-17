SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    SUPPORT2_r3_sup_0_header_ROM_START = __romPos;
    SUPPORT2_r3_sup_0_header_VRAM = ADDR(.SUPPORT2_r3_sup_0_header);
    .SUPPORT2_r3_sup_0_header : AT(SUPPORT2_r3_sup_0_header_ROM_START) SUBALIGN(16)
    {
        SUPPORT2_r3_sup_0_header_DATA_START = .;
        SUPPORT2_r3_sup_0_header_s = .;
        build/asm/SUPPORT2/ovl0__progbin_r3_sup.bin/SUPPORT2_r3_sup_0_header.s.o(.data);
        SUPPORT2_r3_sup_0_header_DATA_END = .;
        SUPPORT2_r3_sup_0_header_DATA_SIZE = ABSOLUTE(SUPPORT2_r3_sup_0_header_DATA_END - SUPPORT2_r3_sup_0_header_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT2_r3_sup_0_header);
    SUPPORT2_r3_sup_0_header_ROM_END = __romPos;
    SUPPORT2_r3_sup_0_header_VRAM_END = .;

    SUPPORT2_r3_sup_0_ROM_START = __romPos;
    SUPPORT2_r3_sup_0_VRAM = ADDR(.SUPPORT2_r3_sup_0);
    .SUPPORT2_r3_sup_0 0x801D8000 : AT(SUPPORT2_r3_sup_0_ROM_START) SUBALIGN(4)
    {
        SUPPORT2_r3_sup_0_DATA_START = .;
        r3_sup_0_data__s = .;
        build/asm/SUPPORT2/ovl0__progbin_r3_sup.bin/data/r3_sup_0.data.s.o(.data);
        SUPPORT2_r3_sup_0_DATA_END = .;
        SUPPORT2_r3_sup_0_DATA_SIZE = ABSOLUTE(SUPPORT2_r3_sup_0_DATA_END - SUPPORT2_r3_sup_0_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT2_r3_sup_0);
    __romPos = ALIGN(__romPos, 16);
    SUPPORT2_r3_sup_0_ROM_END = __romPos;
    SUPPORT2_r3_sup_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
