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
    /* 2F9C4 8003F1C4 7707010C */  jal        func_80041DDC
    /* 2F9C8 8003F1C8 21380000 */   addu      $a3, $zero, $zero
    /* 2F9CC 8003F1CC 84FC0008 */  j          .L8003F210
    /* 2F9D0 8003F1D0 00000000 */   nop
  .L8003F1D4:
    /* 2F9D4 8003F1D4 0200A01C */  bgtz       $a1, .L8003F1E0
    /* 2F9D8 8003F1D8 80FF0224 */   addiu     $v0, $zero, -0x80
    /* 2F9DC 8003F1DC 80000224 */  addiu      $v0, $zero, 0x80
  .L8003F1E0:
    /* 2F9E0 8003F1E0 0600C010 */  beqz       $a2, .L8003F1FC
    /* 2F9E4 8003F1E4 B40002A6 */   sh        $v0, 0xB4($s0)
    /* 2F9E8 8003F1E8 21200002 */  addu       $a0, $s0, $zero
    /* 2F9EC 8003F1EC 0D000524 */  addiu      $a1, $zero, 0xD
    /* 2F9F0 8003F1F0 21300000 */  addu       $a2, $zero, $zero
    /* 2F9F4 8003F1F4 7707010C */  jal        func_80041DDC
    /* 2F9F8 8003F1F8 21380000 */   addu      $a3, $zero, $zero
  .L8003F1FC:
    /* 2F9FC 8003F1FC 56000296 */  lhu        $v0, 0x56($s0)
    /* 2FA00 8003F200 B4000396 */  lhu        $v1, 0xB4($s0)
    /* 2FA04 8003F204 00000000 */  nop
    /* 2FA08 8003F208 21104300 */  addu       $v0, $v0, $v1
    /* 2FA0C 8003F20C 560002A6 */  sh         $v0, 0x56($s0)
  .L8003F210:
    /* 2FA10 8003F210 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FA14 8003F214 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FA18 8003F218 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FA1C 8003F21C 0800E003 */  jr         $ra
    /* 2FA20 8003F220 00000000 */   nop
.size func_8003F188, . - func_8003F188
