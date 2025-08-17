SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_01_STFF_FF_14_header_ROM_START = __romPos;
    ST04_01_STFF_FF_14_header_VRAM = ADDR(.ST04_01_STFF_FF_14_header);
    .ST04_01_STFF_FF_14_header : AT(ST04_01_STFF_FF_14_header_ROM_START) SUBALIGN(16)
    {
        ST04_01_STFF_FF_14_header_DATA_START = .;
        ST04_01_STFF_FF_14_header_s = .;
        build/asm/ST04_01/ovl14__MESS_STFF_FF.MSG/ST04_01_STFF_FF_14_header.s.o(.data);
        ST04_01_STFF_FF_14_header_DATA_END = .;
        ST04_01_STFF_FF_14_header_DATA_SIZE = ABSOLUTE(ST04_01_STFF_FF_14_header_DATA_END - ST04_01_STFF_FF_14_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_01_STFF_FF_14_header);
    ST04_01_STFF_FF_14_header_ROM_END = __romPos;
    ST04_01_STFF_FF_14_header_VRAM_END = .;

    ST04_01_STFF_FF_14_ROM_START = __romPos;
    ST04_01_STFF_FF_14_VRAM = ADDR(.ST04_01_STFF_FF_14);
    .ST04_01_STFF_FF_14 0x80153000 : AT(ST04_01_STFF_FF_14_ROM_START) SUBALIGN(4)
    {
        ST04_01_STFF_FF_14_DATA_START = .;
        STFF_FF_14_data__s = .;
        build/asm/ST04_01/ovl14__MESS_STFF_FF.MSG/data/STFF_FF_14.data.s.o(.data);
        ST04_01_STFF_FF_14_DATA_END = .;
        ST04_01_STFF_FF_14_DATA_SIZE = ABSOLUTE(ST04_01_STFF_FF_14_DATA_END - ST04_01_STFF_FF_14_DATA_START);
    }
    __romPos += SIZEOF(.ST04_01_STFF_FF_14);
    __romPos = ALIGN(__romPos, 16);
    ST04_01_STFF_FF_14_ROM_END = __romPos;
    ST04_01_STFF_FF_14_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
