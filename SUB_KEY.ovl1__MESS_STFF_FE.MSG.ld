SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    SUB_KEY_STFF_FE_1_header_ROM_START = __romPos;
    SUB_KEY_STFF_FE_1_header_VRAM = ADDR(.SUB_KEY_STFF_FE_1_header);
    .SUB_KEY_STFF_FE_1_header : AT(SUB_KEY_STFF_FE_1_header_ROM_START) SUBALIGN(16)
    {
        SUB_KEY_STFF_FE_1_header_DATA_START = .;
        SUB_KEY_STFF_FE_1_header_s = .;
        build/asm/SUB_KEY/ovl1__MESS_STFF_FE.MSG/SUB_KEY_STFF_FE_1_header.s.o(.data);
        SUB_KEY_STFF_FE_1_header_DATA_END = .;
        SUB_KEY_STFF_FE_1_header_DATA_SIZE = ABSOLUTE(SUB_KEY_STFF_FE_1_header_DATA_END - SUB_KEY_STFF_FE_1_header_DATA_START);
    }
    __romPos += SIZEOF(.SUB_KEY_STFF_FE_1_header);
    SUB_KEY_STFF_FE_1_header_ROM_END = __romPos;
    SUB_KEY_STFF_FE_1_header_VRAM_END = .;

    SUB_KEY_STFF_FE_1_ROM_START = __romPos;
    SUB_KEY_STFF_FE_1_VRAM = ADDR(.SUB_KEY_STFF_FE_1);
    .SUB_KEY_STFF_FE_1 0x801F2000 : AT(SUB_KEY_STFF_FE_1_ROM_START) SUBALIGN(4)
    {
        SUB_KEY_STFF_FE_1_DATA_START = .;
        STFF_FE_1_data__s = .;
        build/asm/SUB_KEY/ovl1__MESS_STFF_FE.MSG/data/STFF_FE_1.data.s.o(.data);
        SUB_KEY_STFF_FE_1_DATA_END = .;
        SUB_KEY_STFF_FE_1_DATA_SIZE = ABSOLUTE(SUB_KEY_STFF_FE_1_DATA_END - SUB_KEY_STFF_FE_1_DATA_START);
    }
    __romPos += SIZEOF(.SUB_KEY_STFF_FE_1);
    __romPos = ALIGN(__romPos, 16);
    SUB_KEY_STFF_FE_1_ROM_END = __romPos;
    SUB_KEY_STFF_FE_1_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
