.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C258
    /* 4CA58 8005C258 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4CA5C 8005C25C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4CA60 8005C260 0C80103C */  lui        $s0, %hi(D_800BBD78)
    /* 4CA64 8005C264 78BD1026 */  addiu      $s0, $s0, %lo(D_800BBD78)
    /* 4CA68 8005C268 21200002 */  addu       $a0, $s0, $zero
    /* 4CA6C 8005C26C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4CA70 8005C270 F35D000C */  jal        func_800177CC
    /* 4CA74 8005C274 D4000526 */   addiu     $a1, $s0, 0xD4
    /* 4CA78 8005C278 03000224 */  addiu      $v0, $zero, 0x3
    /* 4CA7C 8005C27C 000002A2 */  sb         $v0, 0x0($s0)
    /* 4CA80 8005C280 0C80013C */  lui        $at, %hi(D_800BBD9C)
    /* 4CA84 8005C284 9CBD22A0 */  sb         $v0, %lo(D_800BBD9C)($at)
    /* 4CA88 8005C288 05000224 */  addiu      $v0, $zero, 0x5
    /* 4CA8C 8005C28C 8C1280AF */  sw         $zero, %gp_rel(D_80098AF0)($gp)
    /* 4CA90 8005C290 A80782AF */  sw         $v0, %gp_rel(D_8009800C)($gp)
    /* 4CA94 8005C294 0C80013C */  lui        $at, %hi(Scene_work)
    /* 4CA98 8005C298 484C20A0 */  sb         $zero, %lo(Scene_work)($at)
    /* 4CA9C 8005C29C A40780AF */  sw         $zero, %gp_rel(D_80098008)($gp)
    /* 4CAA0 8005C2A0 B80780AF */  sw         $zero, %gp_rel(D_8009801C)($gp)
    /* 4CAA4 8005C2A4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4CAA8 8005C2A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CAAC 8005C2AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4CAB0 8005C2B0 0800E003 */  jr         $ra
    /* 4CAB4 8005C2B4 00000000 */   nop
.size func_8005C258, . - func_8005C258
