.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F8DC
    /* 100DC 8001F8DC 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 100E0 8001F8E0 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 100E4 8001F8E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 100E8 8001F8E8 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 100EC 8001F8EC 27004010 */  beqz       $v0, .L8001F98C
    /* 100F0 8001F8F0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 100F4 8001F8F4 80100300 */  sll        $v0, $v1, 2
    /* 100F8 8001F8F8 0180013C */  lui        $at, %hi(jtbl_800108C0)
    /* 100FC 8001F8FC 21082200 */  addu       $at, $at, $v0
    /* 10100 8001F900 C008228C */  lw         $v0, %lo(jtbl_800108C0)($at)
    /* 10104 8001F904 00000000 */  nop
    /* 10108 8001F908 08004000 */  jr         $v0
    /* 1010C 8001F90C 00000000 */   nop
  glabel .L8001F910
    /* 10110 8001F910 9676000C */  jal        Sce_flag_test
    /* 10114 8001F914 06000424 */   addiu     $a0, $zero, 0x6
    /* 10118 8001F918 09004010 */  beqz       $v0, .L8001F940
    /* 1011C 8001F91C 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 10120 8001F920 9676000C */  jal        Sce_flag_test
    /* 10124 8001F924 59000424 */   addiu     $a0, $zero, 0x59
    /* 10128 8001F928 05004014 */  bnez       $v0, .L8001F940
    /* 1012C 8001F92C 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 10130 8001F930 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 10134 8001F934 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10138 8001F938 677E0008 */  j          .L8001F99C
    /* 1013C 8001F93C 00000000 */   nop
  .L8001F940:
    /* 10140 8001F940 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10144 8001F944 677E0008 */  j          .L8001F99C
    /* 10148 8001F948 00000000 */   nop
  glabel .L8001F94C
    /* 1014C 8001F94C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10150 8001F950 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10154 8001F954 667E0008 */  j          .L8001F998
    /* 10158 8001F958 3F000224 */   addiu     $v0, $zero, 0x3F
  glabel .L8001F95C
    /* 1015C 8001F95C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10160 8001F960 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10164 8001F964 667E0008 */  j          .L8001F998
    /* 10168 8001F968 40000224 */   addiu     $v0, $zero, 0x40
  glabel .L8001F96C
    /* 1016C 8001F96C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10170 8001F970 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10174 8001F974 667E0008 */  j          .L8001F998
    /* 10178 8001F978 41000224 */   addiu     $v0, $zero, 0x41
  glabel .L8001F97C
    /* 1017C 8001F97C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10180 8001F980 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10184 8001F984 667E0008 */  j          .L8001F998
    /* 10188 8001F988 43000224 */   addiu     $v0, $zero, 0x43
  glabel .L8001F98C
    /* 1018C 8001F98C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 10190 8001F990 6C0982A7 */  sh         $v0, %gp_rel(D_800981D0)($gp)
    /* 10194 8001F994 42000224 */  addiu      $v0, $zero, 0x42
  .L8001F998:
    /* 10198 8001F998 6E0982A7 */  sh         $v0, %gp_rel(D_800981D2)($gp)
  .L8001F99C:
    /* 1019C 8001F99C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 101A0 8001F9A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 101A4 8001F9A4 0800E003 */  jr         $ra
    /* 101A8 8001F9A8 00000000 */   nop
.size func_8001F8DC, . - func_8001F8DC
