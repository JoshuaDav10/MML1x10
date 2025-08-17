SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    DEMO_DAT_DEMO_DAT_0_header_ROM_START = __romPos;
    DEMO_DAT_DEMO_DAT_0_header_VRAM = ADDR(.DEMO_DAT_DEMO_DAT_0_header);
    .DEMO_DAT_DEMO_DAT_0_header : AT(DEMO_DAT_DEMO_DAT_0_header_ROM_START) SUBALIGN(16)
    {
        DEMO_DAT_DEMO_DAT_0_header_DATA_START = .;
        DEMO_DAT_DEMO_DAT_0_header_s = .;
        build/asm/DEMO_DAT/ovl0__EMBIN_DEMO_DAT.EBD/DEMO_DAT_DEMO_DAT_0_header.s.o(.data);
        DEMO_DAT_DEMO_DAT_0_header_DATA_END = .;
        DEMO_DAT_DEMO_DAT_0_header_DATA_SIZE = ABSOLUTE(DEMO_DAT_DEMO_DAT_0_header_DATA_END - DEMO_DAT_DEMO_DAT_0_header_DATA_START);
    }
    __romPos += SIZEOF(.DEMO_DAT_DEMO_DAT_0_header);
    DEMO_DAT_DEMO_DAT_0_header_ROM_END = __romPos;
    DEMO_DAT_DEMO_DAT_0_header_VRAM_END = .;

    DEMO_DAT_DEMO_DAT_0_ROM_START = __romPos;
    DEMO_DAT_DEMO_DAT_0_VRAM = ADDR(.DEMO_DAT_DEMO_DAT_0);
    .DEMO_DAT_DEMO_DAT_0 0x8016C000 : AT(DEMO_DAT_DEMO_DAT_0_ROM_START) SUBALIGN(4)
    {
        DEMO_DAT_DEMO_DAT_0_DATA_START = .;
        DEMO_DAT_0_data__s = .;
        build/asm/DEMO_DAT/ovl0__EMBIN_DEMO_DAT.EBD/data/DEMO_DAT_0.data.s.o(.data);
        DEMO_DAT_DEMO_DAT_0_DATA_END = .;
        DEMO_DAT_DEMO_DAT_0_DATA_SIZE = ABSOLUTE(DEMO_DAT_DEMO_DAT_0_DATA_END - DEMO_DAT_DEMO_DAT_0_DATA_START);
    }
    __romPos += SIZEOF(.DEMO_DAT_DEMO_DAT_0);
    __romPos = ALIGN(__romPos, 16);
    DEMO_DAT_DEMO_DAT_0_ROM_END = __romPos;
    DEMO_DAT_DEMO_DAT_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
