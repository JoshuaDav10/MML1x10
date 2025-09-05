.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FBE8
    /* 403E8 8004FBE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 403EC 8004FBEC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 403F0 8004FBF0 21888000 */  addu       $s1, $a0, $zero
    /* 403F4 8004FBF4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 403F8 8004FBF8 2190A000 */  addu       $s2, $a1, $zero
    /* 403FC 8004FBFC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 40400 8004FC00 0500C010 */  beqz       $a2, .L8004FC18
    /* 40404 8004FC04 1800B0AF */   sw        $s0, 0x18($sp)
    /* 40408 8004FC08 801F023C */  lui        $v0, (0x1F8000F0 >> 16)
    /* 4040C 8004FC0C F0004294 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($v0)
    /* 40410 8004FC10 083F0108 */  j          .L8004FC20
    /* 40414 8004FC14 00000000 */   nop
  .L8004FC18:
    /* 40418 8004FC18 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 4041C 8004FC1C F8004294 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($v0)
  .L8004FC20:
    /* 40420 8004FC20 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 40424 8004FC24 C0006394 */  lhu        $v1, (0x1F8000C0 & 0xFFFF)($v1)
    /* 40428 8004FC28 00000000 */  nop
    /* 4042C 8004FC2C 23104300 */  subu       $v0, $v0, $v1
    /* 40430 8004FC30 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 40434 8004FC34 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 40438 8004FC38 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 4043C 8004FC3C 00000000 */  nop
    /* 40440 8004FC40 05004004 */  bltz       $v0, .L8004FC58
    /* 40444 8004FC44 00000000 */   nop
    /* 40448 8004FC48 801F023C */  lui        $v0, (0x1F8000F2 >> 16)
    /* 4044C 8004FC4C F2004294 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($v0)
    /* 40450 8004FC50 183F0108 */  j          .L8004FC60
    /* 40454 8004FC54 00000000 */   nop
  .L8004FC58:
    /* 40458 8004FC58 801F023C */  lui        $v0, (0x1F8000FA >> 16)
    /* 4045C 8004FC5C FA004294 */  lhu        $v0, (0x1F8000FA & 0xFFFF)($v0)
  .L8004FC60:
    /* 40460 8004FC60 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 40464 8004FC64 C2006394 */  lhu        $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 40468 8004FC68 00000000 */  nop
    /* 4046C 8004FC6C 23104300 */  subu       $v0, $v0, $v1
.size func_8004FBE8, . - func_8004FBE8
