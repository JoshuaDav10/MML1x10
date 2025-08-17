SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    LEG01_PL00F01P_0_header_ROM_START = __romPos;
    LEG01_PL00F01P_0_header_VRAM = ADDR(.LEG01_PL00F01P_0_header);
    .LEG01_PL00F01P_0_header : AT(LEG01_PL00F01P_0_header_ROM_START) SUBALIGN(16)
    {
        LEG01_PL00F01P_0_header_DATA_START = .;
        LEG01_PL00F01P_0_header_s = .;
        build/asm/LEG01/ovl0__PLBIN_PL00F01P.PBD/LEG01_PL00F01P_0_header.s.o(.data);
        LEG01_PL00F01P_0_header_DATA_END = .;
        LEG01_PL00F01P_0_header_DATA_SIZE = ABSOLUTE(LEG01_PL00F01P_0_header_DATA_END - LEG01_PL00F01P_0_header_DATA_START);
    }
    __romPos += SIZEOF(.LEG01_PL00F01P_0_header);
    LEG01_PL00F01P_0_header_ROM_END = __romPos;
    LEG01_PL00F01P_0_header_VRAM_END = .;

    LEG01_PL00F01P_0_ROM_START = __romPos;
    LEG01_PL00F01P_0_VRAM = ADDR(.LEG01_PL00F01P_0);
    .LEG01_PL00F01P_0 0x800FF400 : AT(LEG01_PL00F01P_0_ROM_START) SUBALIGN(4)
    {
        LEG01_PL00F01P_0_DATA_START = .;
        PL00F01P_0_data__s = .;
        build/asm/LEG01/ovl0__PLBIN_PL00F01P.PBD/data/PL00F01P_0.data.s.o(.data);
        LEG01_PL00F01P_0_DATA_END = .;
        LEG01_PL00F01P_0_DATA_SIZE = ABSOLUTE(LEG01_PL00F01P_0_DATA_END - LEG01_PL00F01P_0_DATA_START);
    }
    __romPos += SIZEOF(.LEG01_PL00F01P_0);
    __romPos = ALIGN(__romPos, 16);
    LEG01_PL00F01P_0_ROM_END = __romPos;
    LEG01_PL00F01P_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
