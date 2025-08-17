SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    LEG00_PL00F00P_0_header_ROM_START = __romPos;
    LEG00_PL00F00P_0_header_VRAM = ADDR(.LEG00_PL00F00P_0_header);
    .LEG00_PL00F00P_0_header : AT(LEG00_PL00F00P_0_header_ROM_START) SUBALIGN(16)
    {
        LEG00_PL00F00P_0_header_DATA_START = .;
        LEG00_PL00F00P_0_header_s = .;
        build/asm/LEG00/ovl0__PLBIN_PL00F00P.PBD/LEG00_PL00F00P_0_header.s.o(.data);
        LEG00_PL00F00P_0_header_DATA_END = .;
        LEG00_PL00F00P_0_header_DATA_SIZE = ABSOLUTE(LEG00_PL00F00P_0_header_DATA_END - LEG00_PL00F00P_0_header_DATA_START);
    }
    __romPos += SIZEOF(.LEG00_PL00F00P_0_header);
    LEG00_PL00F00P_0_header_ROM_END = __romPos;
    LEG00_PL00F00P_0_header_VRAM_END = .;

    LEG00_PL00F00P_0_ROM_START = __romPos;
    LEG00_PL00F00P_0_VRAM = ADDR(.LEG00_PL00F00P_0);
    .LEG00_PL00F00P_0 0x800FF400 : AT(LEG00_PL00F00P_0_ROM_START) SUBALIGN(4)
    {
        LEG00_PL00F00P_0_DATA_START = .;
        PL00F00P_0_data__s = .;
        build/asm/LEG00/ovl0__PLBIN_PL00F00P.PBD/data/PL00F00P_0.data.s.o(.data);
        LEG00_PL00F00P_0_DATA_END = .;
        LEG00_PL00F00P_0_DATA_SIZE = ABSOLUTE(LEG00_PL00F00P_0_DATA_END - LEG00_PL00F00P_0_DATA_START);
    }
    __romPos += SIZEOF(.LEG00_PL00F00P_0);
    __romPos = ALIGN(__romPos, 16);
    LEG00_PL00F00P_0_ROM_END = __romPos;
    LEG00_PL00F00P_0_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
