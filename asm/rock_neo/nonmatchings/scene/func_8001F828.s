.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F828
    /* 10028 8001F828 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1002C 8001F82C 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10030 8001F830 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 10034 8001F834 01000224 */  addiu      $v0, $zero, 0x1
    /* 10038 8001F838 18006210 */  beq        $v1, $v0, .L8001F89C
    /* 1003C 8001F83C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 10040 8001F840 02006228 */  slti       $v0, $v1, 0x2
    /* 10044 8001F844 05004010 */  beqz       $v0, .L8001F85C
    /* 10048 8001F848 00000000 */   nop
    /* 1004C 8001F84C 08006010 */  beqz       $v1, .L8001F870
    /* 10050 8001F850 32000224 */   addiu     $v0, $zero, 0x32
    /* 10054 8001F854 2E7E0008 */  j          .L8001F8B8
    /* 10058 8001F858 00000000 */   nop
  .L8001F85C:
    /* 1005C 8001F85C 06006228 */  slti       $v0, $v1, 0x6
    /* 10060 8001F860 15004010 */  beqz       $v0, .L8001F8B8
    /* 10064 8001F864 32000224 */   addiu     $v0, $zero, 0x32
    /* 10068 8001F868 2B7E0008 */  j          .L8001F8AC
    /* 1006C 8001F86C 00000000 */   nop
  .L8001F870:
    /* 10070 8001F870 9676000C */  jal        Sce_flag_test
    /* 10074 8001F874 0C000424 */   addiu     $a0, $zero, 0xC
    /* 10078 8001F878 04004010 */  beqz       $v0, .L8001F88C
    /* 1007C 8001F87C 32000224 */   addiu     $v0, $zero, 0x32
    /* 10080 8001F880 580982A7 */  sh         $v0, %gp_rel(D_800981BC)($gp)
    /* 10084 8001F884 337E0008 */  j          .L8001F8CC
    /* 10088 8001F888 00000000 */   nop
  .L8001F88C:
    /* 1008C 8001F88C 31000224 */  addiu      $v0, $zero, 0x31
    /* 10090 8001F890 580982A7 */  sh         $v0, %gp_rel(D_800981BC)($gp)
    /* 10094 8001F894 337E0008 */  j          .L8001F8CC
    /* 10098 8001F898 00000000 */   nop
  .L8001F89C:
    /* 1009C 8001F89C 32000224 */  addiu      $v0, $zero, 0x32
    /* 100A0 8001F8A0 580982A7 */  sh         $v0, %gp_rel(D_800981BC)($gp)
    /* 100A4 8001F8A4 307E0008 */  j          .L8001F8C0
    /* 100A8 8001F8A8 36000224 */   addiu     $v0, $zero, 0x36
  .L8001F8AC:
    /* 100AC 8001F8AC 580982A7 */  sh         $v0, %gp_rel(D_800981BC)($gp)
.size func_8001F828, . - func_8001F828
