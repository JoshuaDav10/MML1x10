.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058AEC
    /* 492EC 80058AEC 21288000 */  addu       $a1, $a0, $zero
    /* 492F0 80058AF0 0000A38C */  lw         $v1, 0x0($a1)
    /* 492F4 80058AF4 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* 492F8 80058AF8 24106400 */  and        $v0, $v1, $a0
    /* 492FC 80058AFC 08004014 */  bnez       $v0, .L80058B20
    /* 49300 80058B00 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 49304 80058B04 FFFF023C */  lui        $v0, (0xFFFF7FFF >> 16)
    /* 49308 80058B08 FF7F4234 */  ori        $v0, $v0, (0xFFFF7FFF & 0xFFFF)
    /* 4930C 80058B0C 25186400 */  or         $v1, $v1, $a0
    /* 49310 80058B10 24186200 */  and        $v1, $v1, $v0
    /* 49314 80058B14 05000224 */  addiu      $v0, $zero, 0x5
    /* 49318 80058B18 0000A3AC */  sw         $v1, 0x0($a1)
    /* 4931C 80058B1C 0400A2A4 */  sh         $v0, 0x4($a1)
  .L80058B20:
    /* 49320 80058B20 BFFF033C */  lui        $v1, (0xFFBFFFFF >> 16)
    /* 49324 80058B24 0000A28C */  lw         $v0, 0x0($a1)
    /* 49328 80058B28 FFFF6334 */  ori        $v1, $v1, (0xFFBFFFFF & 0xFFFF)
    /* 4932C 80058B2C 24104300 */  and        $v0, $v0, $v1
    /* 49330 80058B30 F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 49334 80058B34 0000A2AC */  sw         $v0, 0x0($a1)
    /* 49338 80058B38 0008023C */  lui        $v0, (0x8000000 >> 16)
    /* 4933C 80058B3C 24106200 */  and        $v0, $v1, $v0
    /* 49340 80058B40 03004010 */  beqz       $v0, .L80058B50
    /* 49344 80058B44 0200023C */   lui       $v0, (0x20000 >> 16)
    /* 49348 80058B48 D7620108 */  j          .L80058B5C
    /* 4934C 80058B4C 25106200 */   or        $v0, $v1, $v0
  .L80058B50:
    /* 49350 80058B50 FDFF023C */  lui        $v0, (0xFFFDFFFF >> 16)
    /* 49354 80058B54 FFFF4234 */  ori        $v0, $v0, (0xFFFDFFFF & 0xFFFF)
    /* 49358 80058B58 24106200 */  and        $v0, $v1, $v0
  .L80058B5C:
    /* 4935C 80058B5C F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49360 80058B60 0400A284 */  lh         $v0, 0x4($a1)
    /* 49364 80058B64 00000000 */  nop
    /* 49368 80058B68 1F00401C */  bgtz       $v0, .L80058BE8
    /* 4936C 80058B6C 21184000 */   addu      $v1, $v0, $zero
    /* 49370 80058B70 BA00A394 */  lhu        $v1, 0xBA($a1)
    /* 49374 80058B74 00000000 */  nop
    /* 49378 80058B78 00406230 */  andi       $v0, $v1, 0x4000
    /* 4937C 80058B7C 0C004010 */  beqz       $v0, .L80058BB0
    /* 49380 80058B80 00106230 */   andi      $v0, $v1, 0x1000
    /* 49384 80058B84 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49388 80058B88 00FF0324 */  addiu      $v1, $zero, -0x100
    /* 4938C 80058B8C 24104300 */  and        $v0, $v0, $v1
    /* 49390 80058B90 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 49394 80058B94 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49398 80058B98 7100A490 */  lbu        $a0, 0x71($a1)
    /* 4939C 80058B9C 25104300 */  or         $v0, $v0, $v1
    /* 493A0 80058BA0 25104400 */  or         $v0, $v0, $a0
    /* 493A4 80058BA4 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 493A8 80058BA8 FD620108 */  j          .L80058BF4
    /* 493AC 80058BAC 80000224 */   addiu     $v0, $zero, 0x80
  .L80058BB0:
    /* 493B0 80058BB0 0F004010 */  beqz       $v0, .L80058BF0
    /* 493B4 80058BB4 00FF0224 */   addiu     $v0, $zero, -0x100
    /* 493B8 80058BB8 F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493BC 80058BBC 0020043C */  lui        $a0, (0x20000000 >> 16)
    /* 493C0 80058BC0 24186200 */  and        $v1, $v1, $v0
    /* 493C4 80058BC4 F41183AF */  sw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493C8 80058BC8 7200A280 */  lb         $v0, 0x72($a1)
    /* 493CC 80058BCC 25186400 */  or         $v1, $v1, $a0
    /* 493D0 80058BD0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 493D4 80058BD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 493D8 80058BD8 25186200 */  or         $v1, $v1, $v0
    /* 493DC 80058BDC F41183AF */  sw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493E0 80058BE0 FD620108 */  j          .L80058BF4
    /* 493E4 80058BE4 80000224 */   addiu     $v0, $zero, 0x80
  .L80058BE8:
    /* 493E8 80058BE8 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 493EC 80058BEC 0400A2A4 */  sh         $v0, 0x4($a1)
  .L80058BF0:
    /* 493F0 80058BF0 80000224 */  addiu      $v0, $zero, 0x80
  .L80058BF4:
    /* 493F4 80058BF4 7800A2A0 */  sb         $v0, 0x78($a1)
    /* 493F8 80058BF8 21100000 */  addu       $v0, $zero, $zero
    /* 493FC 80058BFC 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 49400 80058C00 0800E003 */  jr         $ra
    /* 49404 80058C04 00000000 */   nop
.size func_80058AEC, . - func_80058AEC
