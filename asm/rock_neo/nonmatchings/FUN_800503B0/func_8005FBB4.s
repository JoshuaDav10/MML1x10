.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FBB4
    /* 503B4 8005FBB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 503B8 8005FBB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 503BC 8005FBBC 21808000 */  addu       $s0, $a0, $zero
    /* 503C0 8005FBC0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 503C4 8005FBC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 503C8 8005FBC8 02000382 */  lb         $v1, 0x2($s0)
    /* 503CC 8005FBCC 0C80113C */  lui        $s1, %hi(Game_work)
    /* 503D0 8005FBD0 101B3126 */  addiu      $s1, $s1, %lo(Game_work)
    /* 503D4 8005FBD4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 503D8 8005FBD8 7C004010 */  beqz       $v0, .L8005FDCC
.size func_8005FBB4, . - func_8005FBB4
