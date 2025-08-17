.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B4CC
    /* BCCC 8001B4CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BCD0 8001B4D0 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* BCD4 8001B4D4 C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* BCD8 8001B4D8 01000224 */  addiu      $v0, $zero, 0x1
    /* BCDC 8001B4DC 16006210 */  beq        $v1, $v0, .L8001B538
    /* BCE0 8001B4E0 1000BFAF */   sw        $ra, 0x10($sp)
    /* BCE4 8001B4E4 07006010 */  beqz       $v1, .L8001B504
    /* BCE8 8001B4E8 02000224 */   addiu     $v0, $zero, 0x2
    /* BCEC 8001B4EC 1F006210 */  beq        $v1, $v0, .L8001B56C
    /* BCF0 8001B4F0 03000224 */   addiu     $v0, $zero, 0x3
    /* BCF4 8001B4F4 36006210 */  beq        $v1, $v0, .L8001B5D0
    /* BCF8 8001B4F8 00000000 */   nop
    /* BCFC 8001B4FC 8B6D0008 */  j          .L8001B62C
    /* BD00 8001B500 00000000 */   nop
  .L8001B504:
    /* BD04 8001B504 0A80023C */  lui        $v0, %hi(D_80098964)
    /* BD08 8001B508 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* BD0C 8001B50C 00000000 */  nop
    /* BD10 8001B510 03004014 */  bnez       $v0, .L8001B520
    /* BD14 8001B514 00000000 */   nop
    /* BD18 8001B518 DF72000C */  jal        func_8001CB7C
    /* BD1C 8001B51C 00000000 */   nop
  .L8001B520:
    /* BD20 8001B520 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* BD24 8001B524 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* BD28 8001B528 00000000 */  nop
    /* BD2C 8001B52C 01004224 */  addiu      $v0, $v0, 0x1
    /* BD30 8001B530 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BD34 8001B534 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B538:
    /* BD38 8001B538 0A80023C */  lui        $v0, %hi(D_80098964)
    /* BD3C 8001B53C 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* BD40 8001B540 00000000 */  nop
    /* BD44 8001B544 39004010 */  beqz       $v0, .L8001B62C
    /* BD48 8001B548 00000000 */   nop
    /* BD4C 8001B54C C974000C */  jal        func_8001D324
    /* BD50 8001B550 A0000424 */   addiu     $a0, $zero, 0xA0
    /* BD54 8001B554 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* BD58 8001B558 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* BD5C 8001B55C 00000000 */  nop
    /* BD60 8001B560 01004224 */  addiu      $v0, $v0, 0x1
    /* BD64 8001B564 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BD68 8001B568 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B56C:
    /* BD6C 8001B56C 0A80023C */  lui        $v0, %hi(D_80098828)
    /* BD70 8001B570 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* BD74 8001B574 00000000 */  nop
    /* BD78 8001B578 05004010 */  beqz       $v0, .L8001B590
    /* BD7C 8001B57C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* BD80 8001B580 0A80013C */  lui        $at, %hi(D_80098828)
    /* BD84 8001B584 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* BD88 8001B588 8B6D0008 */  j          .L8001B62C
    /* BD8C 8001B58C 00000000 */   nop
  .L8001B590:
    /* BD90 8001B590 0A80023C */  lui        $v0, %hi(D_80098A84)
    /* BD94 8001B594 848A428C */  lw         $v0, %lo(D_80098A84)($v0)
    /* BD98 8001B598 00000000 */  nop
    /* BD9C 8001B59C 0400448C */  lw         $a0, 0x4($v0)
    /* BDA0 8001B5A0 0800458C */  lw         $a1, 0x8($v0)
    /* BDA4 8001B5A4 1F73000C */  jal        func_8001CC7C
    /* BDA8 8001B5A8 00000000 */   nop
    /* BDAC 8001B5AC 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* BDB0 8001B5B0 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* BDB4 8001B5B4 0A80013C */  lui        $at, %hi(D_800988D0)
    /* BDB8 8001B5B8 D08820A0 */  sb         $zero, %lo(D_800988D0)($at)
    /* BDBC 8001B5BC 0A80013C */  lui        $at, %hi(D_80098828)
    /* BDC0 8001B5C0 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* BDC4 8001B5C4 01004224 */  addiu      $v0, $v0, 0x1
    /* BDC8 8001B5C8 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BDCC 8001B5CC C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B5D0:
    /* BDD0 8001B5D0 0A80023C */  lui        $v0, %hi(D_80098828)
    /* BDD4 8001B5D4 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* BDD8 8001B5D8 96000324 */  addiu      $v1, $zero, 0x96
    /* BDDC 8001B5DC 01004224 */  addiu      $v0, $v0, 0x1
    /* BDE0 8001B5E0 0A80013C */  lui        $at, %hi(D_80098828)
    /* BDE4 8001B5E4 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* BDE8 8001B5E8 09004314 */  bne        $v0, $v1, .L8001B610
    /* BDEC 8001B5EC 00000000 */   nop
    /* BDF0 8001B5F0 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* BDF4 8001B5F4 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* BDF8 8001B5F8 00000000 */  nop
    /* BDFC 8001B5FC 02004234 */  ori        $v0, $v0, 0x2
    /* BE00 8001B600 0A80013C */  lui        $at, %hi(D_8009896C)
    /* BE04 8001B604 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* BE08 8001B608 8B6D0008 */  j          .L8001B62C
    /* BE0C 8001B60C 00000000 */   nop
  .L8001B610:
    /* BE10 8001B610 0A80023C */  lui        $v0, %hi(D_800988C0)
    /* BE14 8001B614 C0884290 */  lbu        $v0, %lo(D_800988C0)($v0)
    /* BE18 8001B618 00000000 */  nop
    /* BE1C 8001B61C 03004014 */  bnez       $v0, .L8001B62C
    /* BE20 8001B620 00000000 */   nop
    /* BE24 8001B624 AB72000C */  jal        func_8001CAAC
    /* BE28 8001B628 00000000 */   nop
  .L8001B62C:
    /* BE2C 8001B62C 1000BF8F */  lw         $ra, 0x10($sp)
    /* BE30 8001B630 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BE34 8001B634 0800E003 */  jr         $ra
    /* BE38 8001B638 00000000 */   nop
.size func_8001B4CC, . - func_8001B4CC
