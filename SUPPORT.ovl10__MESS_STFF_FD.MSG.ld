SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    SUPPORT_STFF_FD_10_header_ROM_START = __romPos;
    SUPPORT_STFF_FD_10_header_VRAM = ADDR(.SUPPORT_STFF_FD_10_header);
    .SUPPORT_STFF_FD_10_header : AT(SUPPORT_STFF_FD_10_header_ROM_START) SUBALIGN(16)
    {
        SUPPORT_STFF_FD_10_header_DATA_START = .;
        SUPPORT_STFF_FD_10_header_s = .;
        build/asm/SUPPORT/ovl10__MESS_STFF_FD.MSG/SUPPORT_STFF_FD_10_header.s.o(.data);
        SUPPORT_STFF_FD_10_header_DATA_END = .;
        SUPPORT_STFF_FD_10_header_DATA_SIZE = ABSOLUTE(SUPPORT_STFF_FD_10_header_DATA_END - SUPPORT_STFF_FD_10_header_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT_STFF_FD_10_header);
    SUPPORT_STFF_FD_10_header_ROM_END = __romPos;
    SUPPORT_STFF_FD_10_header_VRAM_END = .;

    SUPPORT_STFF_FD_10_ROM_START = __romPos;
    SUPPORT_STFF_FD_10_VRAM = ADDR(.SUPPORT_STFF_FD_10);
    .SUPPORT_STFF_FD_10 0x801E4000 : AT(SUPPORT_STFF_FD_10_ROM_START) SUBALIGN(4)
    {
        SUPPORT_STFF_FD_10_DATA_START = .;
        STFF_FD_10_data__s = .;
        build/asm/SUPPORT/ovl10__MESS_STFF_FD.MSG/data/STFF_FD_10.data.s.o(.data);
        SUPPORT_STFF_FD_10_DATA_END = .;
        SUPPORT_STFF_FD_10_DATA_SIZE = ABSOLUTE(SUPPORT_STFF_FD_10_DATA_END - SUPPORT_STFF_FD_10_DATA_START);
    }
    __romPos += SIZEOF(.SUPPORT_STFF_FD_10);
    __romPos = ALIGN(__romPos, 16);
    SUPPORT_STFF_FD_10_ROM_END = __romPos;
    SUPPORT_STFF_FD_10_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
