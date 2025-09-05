.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F254
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
.size func_8003F254, . - func_8003F254
