.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FA94
    /* 10294 8001FA94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10298 8001FA98 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 1029C 8001FA9C 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 102A0 8001FAA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 102A4 8001FAA4 19006210 */  beq        $v1, $v0, .L8001FB0C
    /* 102A8 8001FAA8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 102AC 8001FAAC 02006228 */  slti       $v0, $v1, 0x2
    /* 102B0 8001FAB0 05004010 */  beqz       $v0, .L8001FAC8
    /* 102B4 8001FAB4 00000000 */   nop
    /* 102B8 8001FAB8 08006010 */  beqz       $v1, .L8001FADC
    /* 102BC 8001FABC 59000224 */   addiu     $v0, $zero, 0x59
    /* 102C0 8001FAC0 C47E0008 */  j          .L8001FB10
    /* 102C4 8001FAC4 5C000224 */   addiu     $v0, $zero, 0x5C
  .L8001FAC8:
    /* 102C8 8001FAC8 06006228 */  slti       $v0, $v1, 0x6
    /* 102CC 8001FACC 10004010 */  beqz       $v0, .L8001FB10
    /* 102D0 8001FAD0 5C000224 */   addiu     $v0, $zero, 0x5C
    /* 102D4 8001FAD4 C47E0008 */  j          .L8001FB10
    /* 102D8 8001FAD8 5B000224 */   addiu     $v0, $zero, 0x5B
  .L8001FADC:
    /* 102DC 8001FADC 8A0982A7 */  sh         $v0, %gp_rel(D_800981EE)($gp)
    /* 102E0 8001FAE0 9676000C */  jal        Sce_flag_test
    /* 102E4 8001FAE4 30060424 */   addiu     $a0, $zero, 0x630
    /* 102E8 8001FAE8 04004010 */  beqz       $v0, .L8001FAFC
    /* 102EC 8001FAEC 61000224 */   addiu     $v0, $zero, 0x61
    /* 102F0 8001FAF0 8E0982A7 */  sh         $v0, %gp_rel(D_800981F2)($gp)
    /* 102F4 8001FAF4 C57E0008 */  j          .L8001FB14
    /* 102F8 8001FAF8 00000000 */   nop
  .L8001FAFC:
    /* 102FC 8001FAFC 5F000224 */  addiu      $v0, $zero, 0x5F
    /* 10300 8001FB00 8E0982A7 */  sh         $v0, %gp_rel(D_800981F2)($gp)
    /* 10304 8001FB04 C57E0008 */  j          .L8001FB14
    /* 10308 8001FB08 00000000 */   nop
  .L8001FB0C:
    /* 1030C 8001FB0C 5A000224 */  addiu      $v0, $zero, 0x5A
  .L8001FB10:
    /* 10310 8001FB10 8A0982A7 */  sh         $v0, %gp_rel(D_800981EE)($gp)
  .L8001FB14:
    /* 10314 8001FB14 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10318 8001FB18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1031C 8001FB1C 0800E003 */  jr         $ra
    /* 10320 8001FB20 00000000 */   nop
.size func_8001FA94, . - func_8001FA94
