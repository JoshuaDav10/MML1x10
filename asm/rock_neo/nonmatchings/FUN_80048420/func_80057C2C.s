.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057C2C
    /* 4842C 80057C2C 0C80093C */  lui        $t1, %hi(D_800BE3DB)
    /* 48430 80057C30 DBE32925 */  addiu      $t1, $t1, %lo(D_800BE3DB)
    /* 48434 80057C34 21380000 */  addu       $a3, $zero, $zero
    /* 48438 80057C38 21280000 */  addu       $a1, $zero, $zero
    /* 4843C 80057C3C 80000824 */  addiu      $t0, $zero, 0x80
    /* 48440 80057C40 0C80063C */  lui        $a2, %hi(D_800BE2F8)
    /* 48444 80057C44 F8E2C624 */  addiu      $a2, $a2, %lo(D_800BE2F8)
  .L80057C48:
    /* 48448 80057C48 00002291 */  lbu        $v0, 0x0($t1)
    /* 4844C 80057C4C 0718A800 */  srav       $v1, $t0, $a1
    /* 48450 80057C50 24104300 */  and        $v0, $v0, $v1
    /* 48454 80057C54 04004010 */  beqz       $v0, .L80057C68
    /* 48458 80057C58 00000000 */   nop
    /* 4845C 80057C5C 0000C5A0 */  sb         $a1, 0x0($a2)
    /* 48460 80057C60 0100C624 */  addiu      $a2, $a2, 0x1
    /* 48464 80057C64 0100E724 */  addiu      $a3, $a3, 0x1
  .L80057C68:
    /* 48468 80057C68 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4846C 80057C6C 0800A22C */  sltiu      $v0, $a1, 0x8
    /* 48470 80057C70 F5FF4014 */  bnez       $v0, .L80057C48
    /* 48474 80057C74 08000224 */   addiu     $v0, $zero, 0x8
    /* 48478 80057C78 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4847C 80057C7C 21082700 */  addu       $at, $at, $a3
    /* 48480 80057C80 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 48484 80057C84 6C00838C */  lw         $v1, 0x6C($a0)
    /* 48488 80057C88 00000000 */  nop
    /* 4848C 80057C8C 21106700 */  addu       $v0, $v1, $a3
    /* 48490 80057C90 00004690 */  lbu        $a2, 0x0($v0)
    /* 48494 80057C94 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 48498 80057C98 FF00C530 */  andi       $a1, $a2, 0xFF
    /* 4849C 80057C9C 0300A214 */  bne        $a1, $v0, .L80057CAC
    /* 484A0 80057CA0 09006224 */   addiu     $v0, $v1, 0x9
    /* 484A4 80057CA4 3E5F0108 */  j          .L80057CF8
    /* 484A8 80057CA8 6C0082AC */   sw        $v0, 0x6C($a0)
  .L80057CAC:
    /* 484AC 80057CAC 4400838C */  lw         $v1, 0x44($a0)
    /* 484B0 80057CB0 00000000 */  nop
    /* 484B4 80057CB4 06006010 */  beqz       $v1, .L80057CD0
    /* 484B8 80057CB8 C20086A4 */   sh        $a2, 0xC2($a0)
    /* 484BC 80057CBC 40100500 */  sll        $v0, $a1, 1
    /* 484C0 80057CC0 21104300 */  addu       $v0, $v0, $v1
    /* 484C4 80057CC4 00004294 */  lhu        $v0, 0x0($v0)
    /* 484C8 80057CC8 385F0108 */  j          .L80057CE0
    /* 484CC 80057CCC 21106200 */   addu      $v0, $v1, $v0
  .L80057CD0:
    /* 484D0 80057CD0 80100500 */  sll        $v0, $a1, 2
    /* 484D4 80057CD4 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 484D8 80057CD8 21082200 */  addu       $at, $at, $v0
    /* 484DC 80057CDC CCCA228C */  lw         $v0, %lo(D_8008CACC)($at)
  .L80057CE0:
    /* 484E0 80057CE0 00000000 */  nop
    /* 484E4 80057CE4 480082AC */  sw         $v0, 0x48($a0)
    /* 484E8 80057CE8 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 484EC 80057CEC 3E0080A0 */  sb         $zero, 0x3E($a0)
    /* 484F0 80057CF0 3C0080A0 */  sb         $zero, 0x3C($a0)
    /* 484F4 80057CF4 720080A0 */  sb         $zero, 0x72($a0)
  .L80057CF8:
    /* 484F8 80057CF8 0800E003 */  jr         $ra
    /* 484FC 80057CFC 01000224 */   addiu     $v0, $zero, 0x1
.size func_80057C2C, . - func_80057C2C
