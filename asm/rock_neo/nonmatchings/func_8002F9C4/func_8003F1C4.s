.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F1C4
    /* 2F9C4 8003F1C4 7707010C */  jal        func_80041DDC
    /* 2F9C8 8003F1C8 21380000 */   addu      $a3, $zero, $zero
    /* 2F9CC 8003F1CC 84FC0008 */  j          .L8003F210
    /* 2F9D0 8003F1D0 00000000 */   nop
  .L8003F1D4:
    /* 2F9D4 8003F1D4 0200A01C */  bgtz       $a1, .L8003F1E0
    /* 2F9D8 8003F1D8 80FF0224 */   addiu     $v0, $zero, -0x80
    /* 2F9DC 8003F1DC 80000224 */  addiu      $v0, $zero, 0x80
  .L8003F1E0:
    /* 2F9E0 8003F1E0 0600C010 */  beqz       $a2, .L8003F1FC
    /* 2F9E4 8003F1E4 B40002A6 */   sh        $v0, 0xB4($s0)
.size func_8003F1C4, . - func_8003F1C4
