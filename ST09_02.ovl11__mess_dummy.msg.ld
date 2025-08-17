SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST09_02_dummy_11_header_ROM_START = __romPos;
    ST09_02_dummy_11_header_VRAM = ADDR(.ST09_02_dummy_11_header);
    .ST09_02_dummy_11_header : AT(ST09_02_dummy_11_header_ROM_START) SUBALIGN(16)
    {
        ST09_02_dummy_11_header_DATA_START = .;
        ST09_02_dummy_11_header_s = .;
        build/asm/ST09_02/ovl11__mess_dummy.msg/ST09_02_dummy_11_header.s.o(.data);
        ST09_02_dummy_11_header_DATA_END = .;
        ST09_02_dummy_11_header_DATA_SIZE = ABSOLUTE(ST09_02_dummy_11_header_DATA_END - ST09_02_dummy_11_header_DATA_START);
    }
    __romPos += SIZEOF(.ST09_02_dummy_11_header);
    ST09_02_dummy_11_header_ROM_END = __romPos;
    ST09_02_dummy_11_header_VRAM_END = .;

    ST09_02_dummy_11_ROM_START = __romPos;
    ST09_02_dummy_11_VRAM = ADDR(.ST09_02_dummy_11);
    .ST09_02_dummy_11 0x80153000 : AT(ST09_02_dummy_11_ROM_START) SUBALIGN(4)
    {
        ST09_02_dummy_11_DATA_START = .;
        dummy_11_data__s = .;
        build/asm/ST09_02/ovl11__mess_dummy.msg/data/dummy_11.data.s.o(.data);
        ST09_02_dummy_11_DATA_END = .;
        ST09_02_dummy_11_DATA_SIZE = ABSOLUTE(ST09_02_dummy_11_DATA_END - ST09_02_dummy_11_DATA_START);
    }
    __romPos += SIZEOF(.ST09_02_dummy_11);
    __romPos = ALIGN(__romPos, 16);
    ST09_02_dummy_11_ROM_END = __romPos;
    ST09_02_dummy_11_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
