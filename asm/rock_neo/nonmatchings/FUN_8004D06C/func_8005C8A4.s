.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C8A4
    /* 4D0A4 8005C8A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4D0A8 8005C8A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4D0AC 8005C8AC 21808000 */  addu       $s0, $a0, $zero
    /* 4D0B0 8005C8B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4D0B4 8005C8B4 0B80113C */  lui        $s1, %hi(Player_work)
    /* 4D0B8 8005C8B8 B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* 4D0BC 8005C8BC 21202002 */  addu       $a0, $s1, $zero
    /* 4D0C0 8005C8C0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4D0C4 8005C8C4 81DD000C */  jal        func_80037604
    /* 4D0C8 8005C8C8 01000524 */   addiu     $a1, $zero, 0x1
    /* 4D0CC 8005C8CC 0B80043C */  lui        $a0, %hi(Player_work + 0x171)
    /* 4D0D0 8005C8D0 21538480 */  lb         $a0, %lo(Player_work + 0x171)($a0)
    /* 4D0D4 8005C8D4 21284000 */  addu       $a1, $v0, $zero
    /* 4D0D8 8005C8D8 C0180400 */  sll        $v1, $a0, 3
    /* 4D0DC 8005C8DC 21187100 */  addu       $v1, $v1, $s1
    /* 4D0E0 8005C8E0 F5046380 */  lb         $v1, 0x4F5($v1)
    /* 4D0E4 8005C8E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 4D0E8 8005C8E8 07006338 */  xori       $v1, $v1, 0x7
    /* 4D0EC 8005C8EC 2B180300 */  sltu       $v1, $zero, $v1
    /* 4D0F0 8005C8F0 23180300 */  negu       $v1, $v1
    /* 4D0F4 8005C8F4 1A008214 */  bne        $a0, $v0, .L8005C960
    /* 4D0F8 8005C8F8 11006330 */   andi      $v1, $v1, 0x11
    /* 4D0FC 8005C8FC 0B80023C */  lui        $v0, %hi(Player_work + 0x502)
    /* 4D100 8005C900 B2564284 */  lh         $v0, %lo(Player_work + 0x502)($v0)
.size func_8005C8A4, . - func_8005C8A4
