.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F224
    /* 2FA24 8003F224 0C80023C */  lui        $v0, %hi(Game_work + 0x56)
    /* 2FA28 8003F228 661B4280 */  lb         $v0, %lo(Game_work + 0x56)($v0)
    /* 2FA2C 8003F22C 1C018594 */  lhu        $a1, 0x11C($a0)
    /* 2FA30 8003F230 12004014 */  bnez       $v0, .L8003F27C
    /* 2FA34 8003F234 00000000 */   nop
    /* 2FA38 8003F238 0C80033C */  lui        $v1, %hi(Game_work + 0x83)
    /* 2FA3C 8003F23C 931B6390 */  lbu        $v1, %lo(Game_work + 0x83)($v1)
    /* 2FA40 8003F240 00000000 */  nop
    /* 2FA44 8003F244 06006014 */  bnez       $v1, .L8003F260
    /* 2FA48 8003F248 01000224 */   addiu     $v0, $zero, 0x1
    /* 2FA4C 8003F24C 3E018294 */  lhu        $v0, 0x13E($a0)
    /* 2FA50 8003F250 00000000 */  nop
    /* 2FA54 8003F254 2410A200 */  and        $v0, $a1, $v0
    /* 2FA58 8003F258 09004014 */  bnez       $v0, .L8003F280
    /* 2FA5C 8003F25C 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F260:
    /* 2FA60 8003F260 07006214 */  bne        $v1, $v0, .L8003F280
    /* 2FA64 8003F264 21100000 */   addu      $v0, $zero, $zero
    /* 2FA68 8003F268 40018294 */  lhu        $v0, 0x140($a0)
    /* 2FA6C 8003F26C 00000000 */  nop
    /* 2FA70 8003F270 2410A200 */  and        $v0, $a1, $v0
    /* 2FA74 8003F274 02004014 */  bnez       $v0, .L8003F280
    /* 2FA78 8003F278 21100000 */   addu      $v0, $zero, $zero
  .L8003F27C:
    /* 2FA7C 8003F27C 01000224 */  addiu      $v0, $zero, 0x1
  .L8003F280:
    /* 2FA80 8003F280 0800E003 */  jr         $ra
    /* 2FA84 8003F284 00000000 */   nop
.size func_8003F224, . - func_8003F224
