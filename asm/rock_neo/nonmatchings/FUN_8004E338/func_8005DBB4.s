.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DBB4
    /* 4E3B4 8005DBB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E3B8 8005DBB8 0B008014 */  bnez       $a0, .L8005DBE8
    /* 4E3BC 8005DBBC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4E3C0 8005DBC0 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 4E3C4 8005DBC4 7F020324 */  addiu      $v1, $zero, 0x27F
    /* 4E3C8 8005DBC8 0C80023C */  lui        $v0, %hi(D_800BD3B4)
    /* 4E3CC 8005DBCC B4D34224 */  addiu      $v0, $v0, %lo(D_800BD3B4)
  .L8005DBD0:
    /* 4E3D0 8005DBD0 000044AC */  sw         $a0, 0x0($v0)
    /* 4E3D4 8005DBD4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 4E3D8 8005DBD8 FDFF6104 */  bgez       $v1, .L8005DBD0
    /* 4E3DC 8005DBDC FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 4E3E0 8005DBE0 00770108 */  j          .L8005DC00
    /* 4E3E4 8005DBE4 00000000 */   nop
  .L8005DBE8:
    /* 4E3E8 8005DBE8 0B80043C */  lui        $a0, %hi(D_800B7030)
    /* 4E3EC 8005DBEC 30708424 */  addiu      $a0, $a0, %lo(D_800B7030)
    /* 4E3F0 8005DBF0 0C80053C */  lui        $a1, %hi(D_800BC9B8)
    /* 4E3F4 8005DBF4 B8C9A524 */  addiu      $a1, $a1, %lo(D_800BC9B8)
    /* 4E3F8 8005DBF8 B75D000C */  jal        .L800176DC
    /* 4E3FC 8005DBFC 50000624 */   addiu     $a2, $zero, 0x50
  .L8005DC00:
    /* 4E400 8005DC00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E404 8005DC04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E408 8005DC08 0800E003 */  jr         $ra
    /* 4E40C 8005DC0C 00000000 */   nop
.size func_8005DBB4, . - func_8005DBB4
