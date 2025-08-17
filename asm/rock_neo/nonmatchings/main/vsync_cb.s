.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel vsync_cb
    /* 2BFC 800123FC 0A80023C */  lui        $v0, %hi(idk_framecounter_maybe)
    /* 2C00 80012400 8888428C */  lw         $v0, %lo(idk_framecounter_maybe)($v0)
    /* 2C04 80012404 00000000 */  nop
    /* 2C08 80012408 01004224 */  addiu      $v0, $v0, 0x1
    /* 2C0C 8001240C 0A80013C */  lui        $at, %hi(idk_framecounter_maybe)
    /* 2C10 80012410 888822AC */  sw         $v0, %lo(idk_framecounter_maybe)($at)
    /* 2C14 80012414 0A80023C */  lui        $v0, %hi(idk_framecounter_maybe)
    /* 2C18 80012418 8888428C */  lw         $v0, %lo(idk_framecounter_maybe)($v0)
    /* 2C1C 8001241C 0800E003 */  jr         $ra
    /* 2C20 80012420 00000000 */   nop
.size vsync_cb, . - vsync_cb
