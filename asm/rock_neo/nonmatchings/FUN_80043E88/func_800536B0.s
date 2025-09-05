.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800536B0
    /* 43EB0 800536B0 21408000 */  addu       $t0, $a0, $zero
    /* 43EB4 800536B4 1300E104 */  bgez       $a3, .L80053704
    /* 43EB8 800536B8 2148A000 */   addu      $t1, $a1, $zero
    /* 43EBC 800536BC 1C00028D */  lw         $v0, 0x1C($t0)
    /* 43EC0 800536C0 2000038D */  lw         $v1, 0x20($t0)
    /* 43EC4 800536C4 2400048D */  lw         $a0, 0x24($t0)
    /* 43EC8 800536C8 2800058D */  lw         $a1, 0x28($t0)
    /* 43ECC 800536CC 000022AD */  sw         $v0, 0x0($t1)
    /* 43ED0 800536D0 040023AD */  sw         $v1, 0x4($t1)
    /* 43ED4 800536D4 080024AD */  sw         $a0, 0x8($t1)
    /* 43ED8 800536D8 0C0025AD */  sw         $a1, 0xC($t1)
    /* 43EDC 800536DC 3400028D */  lw         $v0, 0x34($t0)
    /* 43EE0 800536E0 3800038D */  lw         $v1, 0x38($t0)
    /* 43EE4 800536E4 3C00048D */  lw         $a0, 0x3C($t0)
    /* 43EE8 800536E8 4000058D */  lw         $a1, 0x40($t0)
    /* 43EEC 800536EC 0000C2AC */  sw         $v0, 0x0($a2)
.size func_800536B0, . - func_800536B0
