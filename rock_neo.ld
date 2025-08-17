SECTIONS
{
    __romPos = 0;
    _gp = 0x80097864;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_DATA_START = .;
        header_s = .;
        build/asm/rock_neo/header.s.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80010000 : AT(main_ROM_START) SUBALIGN(4)
    {
        main_RODATA_START = .;
        build/asm/rock_neo/data/800.rodata.s.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        main_TEXT_START = .;
        build/src/rock_neo/main.c.o(.text);
        build/src/rock_neo/Code800133D8.c.o(.text);
        build/asm/rock_neo/52C0.s.o(.text);
        build/src/rock_neo/game.c.o(.text);
        build/asm/rock_neo/77D4.s.o(.text);
        build/src/rock_neo/sound.c.o(.text);
        build/src/rock_neo/cd.c.o(.text);
        build/src/rock_neo/scene.c.o(.text);
        build/src/rock_neo/FUN_800100b0.c.o(.text);
        build/asm/rock_neo/10638.s.o(.text);
        build/src/rock_neo/FUN_80012704.c.o(.text);
        build/src/rock_neo/FUN_800128a8.c.o(.text);
        build/src/rock_neo/FUN_8001295c.c.o(.text);
        build/src/rock_neo/FUN_800129ac.c.o(.text);
        build/src/rock_neo/FUN_80012a98.c.o(.text);
        build/src/rock_neo/FUN_80012ad0.c.o(.text);
        build/src/rock_neo/FUN_80013138.c.o(.text);
        build/src/rock_neo/FUN_80013188.c.o(.text);
        build/src/rock_neo/FUN_80013610.c.o(.text);
        build/src/rock_neo/FUN_80014a3c.c.o(.text);
        build/src/rock_neo/FUN_80015bd0.c.o(.text);
        build/src/rock_neo/func_8001B3E4.c.o(.text);
        build/src/rock_neo/func_8001B4C4.c.o(.text);
        build/src/rock_neo/func_8001B4CC.c.o(.text);
        build/src/rock_neo/func_8001B63C.c.o(.text);
        build/src/rock_neo/func_8001B644.c.o(.text);
        build/src/rock_neo/func_8001B6FC.c.o(.text);
        build/src/rock_neo/func_8001B858.c.o(.text);
        build/asm/rock_neo/1B898.s.o(.text);
        build/src/rock_neo/func_8001C95C.c.o(.text);
        build/asm/rock_neo/1C9A8.s.o(.text);
        build/src/rock_neo/func_8001CAAC.c.o(.text);
        build/src/rock_neo/func_8001CB7C.c.o(.text);
        build/asm/rock_neo/1CC04.s.o(.text);
        build/src/rock_neo/func_8001D254.c.o(.text);
        build/src/rock_neo/func_8001D2BC.c.o(.text);
        build/src/rock_neo/func_8001D324.c.o(.text);
        build/src/rock_neo/func_8001D394.c.o(.text);
        build/src/rock_neo/func_8001D414.c.o(.text);
        build/src/rock_neo/Cd_read_comb.c.o(.text);
        build/src/rock_neo/func_8001D468.c.o(.text);
        build/src/rock_neo/func_8001D494.c.o(.text);
        build/src/rock_neo/func_8001D58C.c.o(.text);
        build/asm/rock_neo/1D5C4.s.o(.text);
        build/asm/rock_neo/1D7E4.s.o(.text);
        build/src/rock_neo/Cd_read_sync2.c.o(.text);
        build/src/rock_neo/player.c.o(.text);
        build/src/rock_neo/func_8002E7A8.c.o(.text);
        build/src/rock_neo/func_8002F9C4.c.o(.text);
        build/asm/rock_neo/32A38.s.o(.text);
        build/src/rock_neo/func_8003697C.c.o(.text);
        build/src/rock_neo/moji.c.o(.text);
        build/asm/rock_neo/4C710.s.o(.text);
        build/src/rock_neo/sub_scrn.c.o(.text);
        build/src/rock_neo/debug.c.o(.text);
        build/asm/rock_neo/543A8.s.o(.text);
        build/asm/rock_neo/psxsdk/code.s.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        _70EC4_data__s = .;
        build/asm/rock_neo/data/70EC4.data.s.o(.data);
        build/asm/rock_neo/data/80064.sdata.s.o(.sdata);
        build/asm/rock_neo/data/88958.scommon.s.o(.scommon);
        build/src/rock_neo/moji.c.o(.scommon);
        build/asm/rock_neo/data/89260.scommon.s.o(.scommon);
        build/asm/rock_neo/data/8B648.bss.s.o(.bss);
        B5E88_bin = .;
        build/assets/rock_neo/B5E88.bin.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
