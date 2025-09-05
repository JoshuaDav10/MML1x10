.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A600
    /* 4AE00 8005A600 05004224 */  addiu      $v0, $v0, 0x5
    /* 4AE04 8005A604 8B690108 */  j          .L8005A62C
    /* 4AE08 8005A608 6C0082AC */   sw        $v0, 0x6C($a0)
  .L8005A60C:
    /* 4AE0C 8005A60C 4400828C */  lw         $v0, 0x44($a0)
    /* 4AE10 8005A610 C20085A4 */  sh         $a1, 0xC2($a0)
    /* 4AE14 8005A614 21186200 */  addu       $v1, $v1, $v0
    /* 4AE18 8005A618 00006394 */  lhu        $v1, 0x0($v1)
    /* 4AE1C 8005A61C 00000000 */  nop
    /* 4AE20 8005A620 21104300 */  addu       $v0, $v0, $v1
    /* 4AE24 8005A624 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 4AE28 8005A628 480082AC */  sw         $v0, 0x48($a0)
  .L8005A62C:
    /* 4AE2C 8005A62C 0800E003 */  jr         $ra
    /* 4AE30 8005A630 01000224 */   addiu     $v0, $zero, 0x1
.size func_8005A600, . - func_8005A600
