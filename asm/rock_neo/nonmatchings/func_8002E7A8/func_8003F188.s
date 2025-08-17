.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F188
    /* 2F988 8003F188 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F98C 8003F18C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F990 8003F190 21808000 */  addu       $s0, $a0, $zero
    /* 2F994 8003F194 0200A104 */  bgez       $a1, .L8003F1A0
    /* 2F998 8003F198 2110A000 */   addu      $v0, $a1, $zero
    /* 2F99C 8003F19C 23100200 */  negu       $v0, $v0
  .L8003F1A0:
    /* 2F9A0 8003F1A0 80004228 */  slti       $v0, $v0, 0x80
    /* 2F9A4 8003F1A4 0B004010 */  beqz       $v0, .L8003F1D4
    /* 2F9A8 8003F1A8 1400BFAF */   sw        $ra, 0x14($sp)
    /* 2F9AC 8003F1AC 0A010296 */  lhu        $v0, 0x10A($s0)
    /* 2F9B0 8003F1B0 B40000A6 */  sh         $zero, 0xB4($s0)
    /* 2F9B4 8003F1B4 1600C010 */  beqz       $a2, .L8003F210
    /* 2F9B8 8003F1B8 560002A6 */   sh        $v0, 0x56($s0)
    /* 2F9BC 8003F1BC 21280000 */  addu       $a1, $zero, $zero
    /* 2F9C0 8003F1C0 21300000 */  addu       $a2, $zero, $zero
.size func_8003F188, . - func_8003F188
