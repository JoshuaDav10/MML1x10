.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058B00
    /* 49300 80058B00 F8FFBD27 */  addiu      $sp, $sp, -0x8
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
.size func_80058B00, . - func_80058B00
    /* 49374 80058B74 00000000 */  nop
