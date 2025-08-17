.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D990
    /* E190 8001D990 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E194 8001D994 1000B0AF */  sw         $s0, 0x10($sp)
    /* E198 8001D998 0C80103C */  lui        $s0, %hi(Scene_work)
    /* E19C 8001D99C 484C1026 */  addiu      $s0, $s0, %lo(Scene_work)
    /* E1A0 8001D9A0 1400BFAF */  sw         $ra, 0x14($sp)
    /* E1A4 8001D9A4 00000292 */  lbu        $v0, 0x0($s0)
    /* E1A8 8001D9A8 00000000 */  nop
    /* E1AC 8001D9AC 14004014 */  bnez       $v0, .L8001DA00
    /* E1B0 8001D9B0 00000000 */   nop
    /* E1B4 8001D9B4 0C80023C */  lui        $v0, %hi(D_800C356C)
    /* E1B8 8001D9B8 6C354280 */  lb         $v0, %lo(D_800C356C)($v0)
    /* E1BC 8001D9BC 00000000 */  nop
    /* E1C0 8001D9C0 0B004014 */  bnez       $v0, .L8001D9F0
    /* E1C4 8001D9C4 00000000 */   nop
    /* E1C8 8001D9C8 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* E1CC 8001D9CC 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* E1D0 8001D9D0 00000000 */  nop
    /* E1D4 8001D9D4 80100200 */  sll        $v0, $v0, 2
    /* E1D8 8001D9D8 0980013C */  lui        $at, %hi(D_80088FA8)
    /* E1DC 8001D9DC 21082200 */  addu       $at, $at, $v0
    /* E1E0 8001D9E0 A88F228C */  lw         $v0, %lo(D_80088FA8)($at)
    /* E1E4 8001D9E4 00000000 */  nop
    /* E1E8 8001D9E8 09F84000 */  jalr       $v0
    /* E1EC 8001D9EC 00000000 */   nop
  .L8001D9F0:
    /* E1F0 8001D9F0 00000292 */  lbu        $v0, 0x0($s0)
    /* E1F4 8001D9F4 00000000 */  nop
    /* E1F8 8001D9F8 12004010 */  beqz       $v0, .L8001DA44
    /* E1FC 8001D9FC 00000000 */   nop
  .L8001DA00:
    /* E200 8001DA00 01000392 */  lbu        $v1, 0x1($s0)
    /* E204 8001DA04 FF000224 */  addiu      $v0, $zero, 0xFF
    /* E208 8001DA08 07006210 */  beq        $v1, $v0, .L8001DA28
    /* E20C 8001DA0C 80100300 */   sll       $v0, $v1, 2
    /* E210 8001DA10 0980013C */  lui        $at, %hi(D_80089024)
    /* E214 8001DA14 21082200 */  addu       $at, $at, $v0
    /* E218 8001DA18 2490228C */  lw         $v0, %lo(D_80089024)($at)
    /* E21C 8001DA1C 00000000 */  nop
    /* E220 8001DA20 09F84000 */  jalr       $v0
    /* E224 8001DA24 21200002 */   addu      $a0, $s0, $zero
  .L8001DA28:
    /* E228 8001DA28 00000292 */  lbu        $v0, 0x0($s0)
    /* E22C 8001DA2C 00000000 */  nop
    /* E230 8001DA30 04004014 */  bnez       $v0, .L8001DA44
    /* E234 8001DA34 00000000 */   nop
    /* E238 8001DA38 01000492 */  lbu        $a0, 0x1($s0)
    /* E23C 8001DA3C A376000C */  jal        Sce_flag_on
    /* E240 8001DA40 80038424 */   addiu     $a0, $a0, 0x380
  .L8001DA44:
    /* E244 8001DA44 1400BF8F */  lw         $ra, 0x14($sp)
    /* E248 8001DA48 1000B08F */  lw         $s0, 0x10($sp)
    /* E24C 8001DA4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E250 8001DA50 0800E003 */  jr         $ra
    /* E254 8001DA54 00000000 */   nop
.size func_8001D990, . - func_8001D990
