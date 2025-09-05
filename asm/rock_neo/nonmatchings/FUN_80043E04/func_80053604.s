.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053604
    /* 43E04 80053604 3800A4AF */  sw         $a0, 0x38($sp)
    /* 43E08 80053608 3C00A5AF */  sw         $a1, 0x3C($sp)
    /* 43E0C 8005360C 4800A427 */  addiu      $a0, $sp, 0x48
    /* 43E10 80053610 6AED010C */  jal        RotMatrix
    /* 43E14 80053614 1000A527 */   addiu     $a1, $sp, 0x10
    /* 43E18 80053618 1000A427 */  addiu      $a0, $sp, 0x10
    /* 43E1C 8005361C 3000B027 */  addiu      $s0, $sp, 0x30
    /* 43E20 80053620 21280002 */  addu       $a1, $s0, $zero
    /* 43E24 80053624 6AC0000C */  jal        func_800301A8
    /* 43E28 80053628 21304002 */   addu      $a2, $s2, $zero
    /* 43E2C 8005362C 4000A427 */  addiu      $a0, $sp, 0x40
    /* 43E30 80053630 0EEE010C */  jal        RotMatrixYXZ
    /* 43E34 80053634 1000A527 */   addiu     $a1, $sp, 0x10
    /* 43E38 80053638 1000A427 */  addiu      $a0, $sp, 0x10
    /* 43E3C 8005363C 21280002 */  addu       $a1, $s0, $zero
    /* 43E40 80053640 6AC0000C */  jal        func_800301A8
    /* 43E44 80053644 21304002 */   addu      $a2, $s2, $zero
    /* 43E48 80053648 3000A38F */  lw         $v1, 0x30($sp)
.size func_80053604, . - func_80053604
