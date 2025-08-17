SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST04_00E_ST04_FF_46_header_ROM_START = __romPos;
    ST04_00E_ST04_FF_46_header_VRAM = ADDR(.ST04_00E_ST04_FF_46_header);
    .ST04_00E_ST04_FF_46_header : AT(ST04_00E_ST04_FF_46_header_ROM_START) SUBALIGN(16)
    {
        ST04_00E_ST04_FF_46_header_DATA_START = .;
        ST04_00E_ST04_FF_46_header_s = .;
        build/asm/ST04_00E/ovl46__MESS_ST04_FF.MSG/ST04_00E_ST04_FF_46_header.s.o(.data);
        ST04_00E_ST04_FF_46_header_DATA_END = .;
        ST04_00E_ST04_FF_46_header_DATA_SIZE = ABSOLUTE(ST04_00E_ST04_FF_46_header_DATA_END - ST04_00E_ST04_FF_46_header_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00E_ST04_FF_46_header);
    ST04_00E_ST04_FF_46_header_ROM_END = __romPos;
    ST04_00E_ST04_FF_46_header_VRAM_END = .;

    ST04_00E_ST04_FF_46_ROM_START = __romPos;
    ST04_00E_ST04_FF_46_VRAM = ADDR(.ST04_00E_ST04_FF_46);
    .ST04_00E_ST04_FF_46 0x80153000 : AT(ST04_00E_ST04_FF_46_ROM_START) SUBALIGN(4)
    {
        ST04_00E_ST04_FF_46_DATA_START = .;
        ST04_FF_46_data__s = .;
        build/asm/ST04_00E/ovl46__MESS_ST04_FF.MSG/data/ST04_FF_46.data.s.o(.data);
        ST04_00E_ST04_FF_46_DATA_END = .;
        ST04_00E_ST04_FF_46_DATA_SIZE = ABSOLUTE(ST04_00E_ST04_FF_46_DATA_END - ST04_00E_ST04_FF_46_DATA_START);
    }
    __romPos += SIZEOF(.ST04_00E_ST04_FF_46);
    __romPos = ALIGN(__romPos, 16);
    ST04_00E_ST04_FF_46_ROM_END = __romPos;
    ST04_00E_ST04_FF_46_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
