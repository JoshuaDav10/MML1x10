.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C08C
    /* 1C88C 8002C08C E800428C */  lw         $v0, 0xE8($v0)
    /* 1C890 8002C090 80200400 */  sll        $a0, $a0, 2
    /* 1C894 8002C094 2BB00008 */  j          .L8002C0AC
    /* 1C898 8002C098 21204400 */   addu      $a0, $v0, $a0
    /* 1C89C 8002C09C 801F043C */  lui        $a0, (0x1F8000E8 >> 16)
    /* 1C8A0 8002C0A0 E800848C */  lw         $a0, (0x1F8000E8 & 0xFFFF)($a0)
    /* 1C8A4 8002C0A4 3000C58C */  lw         $a1, 0x30($a2)
    /* 1C8A8 8002C0A8 2C00C68C */  lw         $a2, 0x2C($a2)
  .L8002C0AC:
    /* 1C8AC 8002C0AC 31B0000C */  jal        func_8002C0C4
    /* 1C8B0 8002C0B0 00000000 */   nop
    /* 1C8B4 8002C0B4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1C8B8 8002C0B8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1C8BC 8002C0BC 0800E003 */  jr         $ra
    /* 1C8C0 8002C0C0 00000000 */   nop
.size func_8002C08C, . - func_8002C08C
