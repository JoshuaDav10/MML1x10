SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    ST10_05_stff_ff_5_header_ROM_START = __romPos;
    ST10_05_stff_ff_5_header_VRAM = ADDR(.ST10_05_stff_ff_5_header);
    .ST10_05_stff_ff_5_header : AT(ST10_05_stff_ff_5_header_ROM_START) SUBALIGN(16)
    {
        ST10_05_stff_ff_5_header_DATA_START = .;
        ST10_05_stff_ff_5_header_s = .;
        build/asm/ST10_05/ovl5__mess_stff_ff.msg/ST10_05_stff_ff_5_header.s.o(.data);
        ST10_05_stff_ff_5_header_DATA_END = .;
        ST10_05_stff_ff_5_header_DATA_SIZE = ABSOLUTE(ST10_05_stff_ff_5_header_DATA_END - ST10_05_stff_ff_5_header_DATA_START);
    }
    __romPos += SIZEOF(.ST10_05_stff_ff_5_header);
    ST10_05_stff_ff_5_header_ROM_END = __romPos;
    ST10_05_stff_ff_5_header_VRAM_END = .;

    ST10_05_stff_ff_5_ROM_START = __romPos;
    ST10_05_stff_ff_5_VRAM = ADDR(.ST10_05_stff_ff_5);
    .ST10_05_stff_ff_5 0x80153000 : AT(ST10_05_stff_ff_5_ROM_START) SUBALIGN(4)
    {
        ST10_05_stff_ff_5_DATA_START = .;
        stff_ff_5_data__s = .;
        build/asm/ST10_05/ovl5__mess_stff_ff.msg/data/stff_ff_5.data.s.o(.data);
        ST10_05_stff_ff_5_DATA_END = .;
        ST10_05_stff_ff_5_DATA_SIZE = ABSOLUTE(ST10_05_stff_ff_5_DATA_END - ST10_05_stff_ff_5_DATA_START);
    }
    __romPos += SIZEOF(.ST10_05_stff_ff_5);
    __romPos = ALIGN(__romPos, 16);
    ST10_05_stff_ff_5_ROM_END = __romPos;
    ST10_05_stff_ff_5_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
