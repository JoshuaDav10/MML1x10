SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_00F_ST04_FF_48_header_ROM_START = __romPos;
    ST04_00F_ST04_FF_48_header_VRAM = ADDR(.ST04_00F_ST04_FF_48_header);
    .ST04_00F_ST04_FF_48_header : AT(ST04_00F_ST04_FF_48_header_ROM_START) SUBALIGN(16)
    {
        ST04_00F_ST04_FF_48_header_DATA_START = .;
        ST04_00F_ST04_FF_48_header_s = .;
        build/asm/ST04_00F/ovl48__MESS_ST04_FF.MSG/ST04_00F_ST04_FF_48_header.s.o(.data);
        ST04_00F_ST04_FF_48_header_DATA_END = .;
        ST04_00F_ST04_FF_48_header_DATA_SIZE = ABSOLUTE(ST04_00F_ST04_FF_48_header_DATA_END - ST04_00F_ST04_FF_48_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00F_ST04_FF_48_header);
    ST04_00F_ST04_FF_48_header_ROM_END = __romPos;
    ST04_00F_ST04_FF_48_header_VRAM_END = .;

    ST04_00F_ST04_FF_48_ROM_START = __romPos;
    ST04_00F_ST04_FF_48_VRAM = ADDR(.ST04_00F_ST04_FF_48);
    .ST04_00F_ST04_FF_48 0x80153000 : AT(ST04_00F_ST04_FF_48_ROM_START) SUBALIGN(4)
    {
        ST04_00F_ST04_FF_48_DATA_START = .;
        ST04_FF_48_data__s = .;
        build/asm/ST04_00F/ovl48__MESS_ST04_FF.MSG/data/ST04_FF_48.data.s.o(.data);
        ST04_00F_ST04_FF_48_DATA_END = .;
        ST04_00F_ST04_FF_48_DATA_SIZE = ABSOLUTE(ST04_00F_ST04_FF_48_DATA_END - ST04_00F_ST04_FF_48_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00F_ST04_FF_48);
    __romPos = ALIGN(__romPos, 16);
    ST04_00F_ST04_FF_48_ROM_END = __romPos;
    ST04_00F_ST04_FF_48_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
