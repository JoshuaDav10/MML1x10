.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004B414
    /* 3BC14 8004B414 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3BC18 8004B418 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3BC1C 8004B41C 21808000 */  addu       $s0, $a0, $zero
    /* 3BC20 8004B420 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3BC24 8004B424 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3BC28 8004B428 7800048E */  lw         $a0, 0x78($s0)
    /* 3BC2C 8004B42C F02C010C */  jal        func_8004B3C0
    /* 3BC30 8004B430 00000000 */   nop
    /* 3BC34 8004B434 01000492 */  lbu        $a0, 0x1($s0)
    /* 3BC38 8004B438 9DBF000C */  jal        func_8002FE74
    /* 3BC3C 8004B43C 00000000 */   nop
    /* 3BC40 8004B440 14000426 */  addiu      $a0, $s0, 0x14
    /* 3BC44 8004B444 0100422C */  sltiu      $v0, $v0, 0x1
    /* 3BC48 8004B448 C0130200 */  sll        $v0, $v0, 15
    /* 3BC4C 8004B44C 21884000 */  addu       $s1, $v0, $zero
    /* 3BC50 8004B450 2C000526 */  addiu      $a1, $s0, 0x2C
    /* 3BC54 8004B454 74000682 */  lb         $a2, 0x74($s0)
    /* 3BC58 8004B458 AB2D010C */  jal        func_8004B6AC
    /* 3BC5C 8004B45C 21382002 */   addu      $a3, $s1, $zero
    /* 3BC60 8004B460 21384000 */  addu       $a3, $v0, $zero
    /* 3BC64 8004B464 5200E010 */  beqz       $a3, .L8004B5B0
    /* 3BC68 8004B468 00000000 */   nop
    /* 3BC6C 8004B46C 2B00E018 */  blez       $a3, .L8004B51C
    /* 3BC70 8004B470 0003E230 */   andi      $v0, $a3, 0x300
    /* 3BC74 8004B474 09004010 */  beqz       $v0, .L8004B49C
    /* 3BC78 8004B478 801F033C */   lui       $v1, (0x1F8000C0 >> 16)
    /* 3BC7C 8004B47C C0006334 */  ori        $v1, $v1, (0x1F8000C0 & 0xFFFF)
    /* 3BC80 8004B480 00006294 */  lhu        $v0, 0x0($v1)
    /* 3BC84 8004B484 00000000 */  nop
    /* 3BC88 8004B488 140002A6 */  sh         $v0, 0x14($s0)
    /* 3BC8C 8004B48C 00006284 */  lh         $v0, 0x0($v1)
    /* 3BC90 8004B490 00000000 */  nop
    /* 3BC94 8004B494 00140200 */  sll        $v0, $v0, 16
    /* 3BC98 8004B498 1C0002AE */  sw         $v0, 0x1C($s0)
  .L8004B49C:
    /* 3BC9C 8004B49C 000CE230 */  andi       $v0, $a3, 0xC00
    /* 3BCA0 8004B4A0 0B004010 */  beqz       $v0, .L8004B4D0
    /* 3BCA4 8004B4A4 0030E230 */   andi      $v0, $a3, 0x3000
    /* 3BCA8 8004B4A8 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3BCAC 8004B4AC C4004294 */  lhu        $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3BCB0 8004B4B0 00000000 */  nop
    /* 3BCB4 8004B4B4 180002A6 */  sh         $v0, 0x18($s0)
    /* 3BCB8 8004B4B8 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3BCBC 8004B4BC C4004284 */  lh         $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3BCC0 8004B4C0 00000000 */  nop
    /* 3BCC4 8004B4C4 00140200 */  sll        $v0, $v0, 16
    /* 3BCC8 8004B4C8 240002AE */  sw         $v0, 0x24($s0)
    /* 3BCCC 8004B4CC 0030E230 */  andi       $v0, $a3, 0x3000
  .L8004B4D0:
    /* 3BCD0 8004B4D0 0A004010 */  beqz       $v0, .L8004B4FC
    /* 3BCD4 8004B4D4 00000000 */   nop
    /* 3BCD8 8004B4D8 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3BCDC 8004B4DC C2004294 */  lhu        $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3BCE0 8004B4E0 00000000 */  nop
    /* 3BCE4 8004B4E4 160002A6 */  sh         $v0, 0x16($s0)
    /* 3BCE8 8004B4E8 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3BCEC 8004B4EC C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3BCF0 8004B4F0 00000000 */  nop
    /* 3BCF4 8004B4F4 00140200 */  sll        $v0, $v0, 16
    /* 3BCF8 8004B4F8 200002AE */  sw         $v0, 0x20($s0)
  .L8004B4FC:
    /* 3BCFC 8004B4FC 74000382 */  lb         $v1, 0x74($s0)
    /* 3BD00 8004B500 02000224 */  addiu      $v0, $zero, 0x2
    /* 3BD04 8004B504 2B006210 */  beq        $v1, $v0, .L8004B5B4
    /* 3BD08 8004B508 2110E000 */   addu      $v0, $a3, $zero
    /* 3BD0C 8004B50C 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3BD10 8004B510 F6004290 */  lbu        $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3BD14 8004B514 6C2D0108 */  j          .L8004B5B0
    /* 3BD18 8004B518 740002A2 */   sb        $v0, 0x74($s0)
  .L8004B51C:
    /* 3BD1C 8004B51C 14002012 */  beqz       $s1, .L8004B570
    /* 3BD20 8004B520 00000000 */   nop
    /* 3BD24 8004B524 2C000296 */  lhu        $v0, 0x2C($s0)
    /* 3BD28 8004B528 30000396 */  lhu        $v1, 0x30($s0)
    /* 3BD2C 8004B52C 3400048E */  lw         $a0, 0x34($s0)
    /* 3BD30 8004B530 3C00058E */  lw         $a1, 0x3C($s0)
    /* 3BD34 8004B534 74000682 */  lb         $a2, 0x74($s0)
    /* 3BD38 8004B538 480000A6 */  sh         $zero, 0x48($s0)
    /* 3BD3C 8004B53C 440000A6 */  sh         $zero, 0x44($s0)
    /* 3BD40 8004B540 140002A6 */  sh         $v0, 0x14($s0)
    /* 3BD44 8004B544 180003A6 */  sh         $v1, 0x18($s0)
    /* 3BD48 8004B548 1C0004AE */  sw         $a0, 0x1C($s0)
    /* 3BD4C 8004B54C 1800C010 */  beqz       $a2, .L8004B5B0
    /* 3BD50 8004B550 240005AE */   sw        $a1, 0x24($s0)
    /* 3BD54 8004B554 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 3BD58 8004B558 3800038E */  lw         $v1, 0x38($s0)
    /* 3BD5C 8004B55C 740000A2 */  sb         $zero, 0x74($s0)
    /* 3BD60 8004B560 460000A6 */  sh         $zero, 0x46($s0)
    /* 3BD64 8004B564 160002A6 */  sh         $v0, 0x16($s0)
    /* 3BD68 8004B568 6C2D0108 */  j          .L8004B5B0
    /* 3BD6C 8004B56C 200003AE */   sw        $v1, 0x20($s0)
  .L8004B570:
    /* 3BD70 8004B570 2F00028A */  lwl        $v0, 0x2F($s0)
    /* 3BD74 8004B574 2C00029A */  lwr        $v0, 0x2C($s0)
    /* 3BD78 8004B578 3300038A */  lwl        $v1, 0x33($s0)
    /* 3BD7C 8004B57C 3000039A */  lwr        $v1, 0x30($s0)
    /* 3BD80 8004B580 170002AA */  swl        $v0, 0x17($s0)
    /* 3BD84 8004B584 140002BA */  swr        $v0, 0x14($s0)
    /* 3BD88 8004B588 1B0003AA */  swl        $v1, 0x1B($s0)
    /* 3BD8C 8004B58C 180003BA */  swr        $v1, 0x18($s0)
    /* 3BD90 8004B590 3400028E */  lw         $v0, 0x34($s0)
    /* 3BD94 8004B594 3800038E */  lw         $v1, 0x38($s0)
    /* 3BD98 8004B598 3C00048E */  lw         $a0, 0x3C($s0)
    /* 3BD9C 8004B59C 4000058E */  lw         $a1, 0x40($s0)
    /* 3BDA0 8004B5A0 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 3BDA4 8004B5A4 200003AE */  sw         $v1, 0x20($s0)
    /* 3BDA8 8004B5A8 240004AE */  sw         $a0, 0x24($s0)
    /* 3BDAC 8004B5AC 280005AE */  sw         $a1, 0x28($s0)
  .L8004B5B0:
    /* 3BDB0 8004B5B0 2110E000 */  addu       $v0, $a3, $zero
  .L8004B5B4:
    /* 3BDB4 8004B5B4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3BDB8 8004B5B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 3BDBC 8004B5BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3BDC0 8004B5C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3BDC4 8004B5C4 0800E003 */  jr         $ra
    /* 3BDC8 8004B5C8 00000000 */   nop
.size func_8004B414, . - func_8004B414
