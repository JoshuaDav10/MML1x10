.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D98C
    /* 4E18C 8005D98C 0C80023C */  lui        $v0, %hi(D_800BBD94)
    /* 4E190 8005D990 94BD4284 */  lh         $v0, %lo(D_800BBD94)($v0)
    /* 4E194 8005D994 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E198 8005D998 0600401C */  bgtz       $v0, .L8005D9B4
    /* 4E19C 8005D99C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4E1A0 8005D9A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4E1A4 8005D9A4 0C80013C */  lui        $at, %hi(D_800BBD87)
    /* 4E1A8 8005D9A8 87BD22A0 */  sb         $v0, %lo(D_800BBD87)($at)
    /* 4E1AC 8005D9AC 3E75010C */  jal        func_8005D4F8
    /* 4E1B0 8005D9B0 00000000 */   nop
  .L8005D9B4:
    /* 4E1B4 8005D9B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E1B8 8005D9B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E1BC 8005D9BC 0800E003 */  jr         $ra
    /* 4E1C0 8005D9C0 00000000 */   nop
.size func_8005D98C, . - func_8005D98C
