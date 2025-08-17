.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019FB4
    /* A7B4 80019FB4 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* A7B8 80019FB8 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* A7BC 80019FBC 0A80033C */  lui        $v1, %hi(D_80098958)
    /* A7C0 80019FC0 5889638C */  lw         $v1, %lo(D_80098958)($v1)
    /* A7C4 80019FC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7C8 80019FC8 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7CC 80019FCC 80100200 */  sll        $v0, $v0, 2
    /* A7D0 80019FD0 0880013C */  lui        $at, %hi(Unk_stage_func_tbl)
    /* A7D4 80019FD4 21082200 */  addu       $at, $at, $v0
    /* A7D8 80019FD8 A023228C */  lw         $v0, %lo(Unk_stage_func_tbl)($at)
    /* A7DC 80019FDC 00086334 */  ori        $v1, $v1, 0x800
    /* A7E0 80019FE0 0A80013C */  lui        $at, %hi(D_80098958)
    /* A7E4 80019FE4 588923AC */  sw         $v1, %lo(D_80098958)($at)
    /* A7E8 80019FE8 03004010 */  beqz       $v0, .L80019FF8
    /* A7EC 80019FEC 00000000 */   nop
    /* A7F0 80019FF0 09F84000 */  jalr       $v0
    /* A7F4 80019FF4 21200000 */   addu      $a0, $zero, $zero
  .L80019FF8:
    /* A7F8 80019FF8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7FC 80019FFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A800 8001A000 0800E003 */  jr         $ra
    /* A804 8001A004 00000000 */   nop
.size func_80019FB4, . - func_80019FB4
