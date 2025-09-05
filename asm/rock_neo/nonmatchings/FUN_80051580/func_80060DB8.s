.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060DB8
    /* 515B8 80060DB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 515BC 80060DBC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 515C0 80060DC0 21808000 */  addu       $s0, $a0, $zero
    /* 515C4 80060DC4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 515C8 80060DC8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 515CC 80060DCC 0B000392 */  lbu        $v1, 0xB($s0)
    /* 515D0 80060DD0 0B80023C */  lui        $v0, %hi(Player_work + 0x170)
    /* 515D4 80060DD4 20534280 */  lb         $v0, %lo(Player_work + 0x170)($v0)
    /* 515D8 80060DD8 0B80113C */  lui        $s1, %hi(Player_work)
    /* 515DC 80060DDC B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* 515E0 80060DE0 0D006214 */  bne        $v1, $v0, .L80060E18
    /* 515E4 80060DE4 00000000 */   nop
    /* 515E8 80060DE8 08000396 */  lhu        $v1, 0x8($s0)
    /* 515EC 80060DEC 0B80023C */  lui        $v0, %hi(Player_work + 0x450)
    /* 515F0 80060DF0 00564294 */  lhu        $v0, %lo(Player_work + 0x450)($v0)
    /* 515F4 80060DF4 00000000 */  nop
    /* 515F8 80060DF8 07006214 */  bne        $v1, $v0, .L80060E18
    /* 515FC 80060DFC 00000000 */   nop
.size func_80060DB8, . - func_80060DB8
