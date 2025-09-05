.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DA1C
    /* 4E21C 8005DA1C 10008010 */  beqz       $a0, .L8005DA60
    /* 4E220 8005DA20 00000000 */   nop
    /* 4E224 8005DA24 0C80033C */  lui        $v1, %hi(D_800BBD87)
    /* 4E228 8005DA28 87BD6324 */  addiu      $v1, $v1, %lo(D_800BBD87)
    /* 4E22C 8005DA2C 00006290 */  lbu        $v0, 0x0($v1)
    /* 4E230 8005DA30 00000000 */  nop
    /* 4E234 8005DA34 0A004010 */  beqz       $v0, .L8005DA60
    /* 4E238 8005DA38 21100000 */   addu      $v0, $zero, $zero
    /* 4E23C 8005DA3C 000060A0 */  sb         $zero, 0x0($v1)
    /* 4E240 8005DA40 03000324 */  addiu      $v1, $zero, 0x3
    /* 4E244 8005DA44 0C80013C */  lui        $at, %hi(D_800BBD85)
    /* 4E248 8005DA48 85BD23A0 */  sb         $v1, %lo(D_800BBD85)($at)
    /* 4E24C 8005DA4C 06000324 */  addiu      $v1, $zero, 0x6
    /* 4E250 8005DA50 0C80013C */  lui        $at, %hi(D_800BBD81)
    /* 4E254 8005DA54 81BD23A0 */  sb         $v1, %lo(D_800BBD81)($at)
    /* 4E258 8005DA58 9C760108 */  j          .L8005DA70
    /* 4E25C 8005DA5C 00000000 */   nop
  .L8005DA60:
    /* 4E260 8005DA60 0C80023C */  lui        $v0, %hi(D_800BBD87)
    /* 4E264 8005DA64 87BD4290 */  lbu        $v0, %lo(D_800BBD87)($v0)
    /* 4E268 8005DA68 00000000 */  nop
    /* 4E26C 8005DA6C 0100422C */  sltiu      $v0, $v0, 0x1
  .L8005DA70:
    /* 4E270 8005DA70 0800E003 */  jr         $ra
    /* 4E274 8005DA74 00000000 */   nop
.size func_8005DA1C, . - func_8005DA1C
