.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CD60
    /* D560 8001CD60 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D564 8001CD64 1400B1AF */  sw         $s1, 0x14($sp)
    /* D568 8001CD68 FF009130 */  andi       $s1, $a0, 0xFF
    /* D56C 8001CD6C 01000224 */  addiu      $v0, $zero, 0x1
    /* D570 8001CD70 1800BFAF */  sw         $ra, 0x18($sp)
    /* D574 8001CD74 1000B0AF */  sw         $s0, 0x10($sp)
    /* D578 8001CD78 0A80013C */  lui        $at, %hi(D_80098828)
    /* D57C 8001CD7C 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* D580 8001CD80 74002216 */  bne        $s1, $v0, .L8001CF54
    /* D584 8001CD84 00000000 */   nop
    /* D588 8001CD88 0B80103C */  lui        $s0, %hi(D_800B5DB0)
    /* D58C 8001CD8C B05D1026 */  addiu      $s0, $s0, %lo(D_800B5DB0)
    /* D590 8001CD90 21200002 */  addu       $a0, $s0, $zero
    /* D594 8001CD94 81DF010C */  jal        CdGetSector
    /* D598 8001CD98 03000524 */   addiu     $a1, $zero, 0x3
    /* D59C 8001CD9C E3DF010C */  jal        CdPosToInt
    /* D5A0 8001CDA0 21200002 */   addu      $a0, $s0, $zero
    /* D5A4 8001CDA4 0A80033C */  lui        $v1, %hi(D_80098A7C)
    /* D5A8 8001CDA8 7C8A638C */  lw         $v1, %lo(D_80098A7C)($v1)
    /* D5AC 8001CDAC 21204000 */  addu       $a0, $v0, $zero
    /* D5B0 8001CDB0 05008310 */  beq        $a0, $v1, .L8001CDC8
    /* D5B4 8001CDB4 01008324 */   addiu     $v1, $a0, 0x1
    /* D5B8 8001CDB8 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D5BC 8001CDBC 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D5C0 8001CDC0 D9730008 */  j          .L8001CF64
    /* D5C4 8001CDC4 40004234 */   ori       $v0, $v0, 0x40
  .L8001CDC8:
    /* D5C8 8001CDC8 0A80023C */  lui        $v0, %hi(D_8009881C)
    /* D5CC 8001CDCC 1C88428C */  lw         $v0, %lo(D_8009881C)($v0)
    /* D5D0 8001CDD0 0A80013C */  lui        $at, %hi(D_80098A7C)
    /* D5D4 8001CDD4 7C8A23AC */  sw         $v1, %lo(D_80098A7C)($at)
    /* D5D8 8001CDD8 00084228 */  slti       $v0, $v0, 0x800
    /* D5DC 8001CDDC 3E004014 */  bnez       $v0, .L8001CED8
    /* D5E0 8001CDE0 21200002 */   addu      $a0, $s0, $zero
    /* D5E4 8001CDE4 0A80043C */  lui        $a0, %hi(D_800987A4)
    /* D5E8 8001CDE8 A487848C */  lw         $a0, %lo(D_800987A4)($a0)
    /* D5EC 8001CDEC 81DF010C */  jal        CdGetSector
    /* D5F0 8001CDF0 00020524 */   addiu     $a1, $zero, 0x200
    /* D5F4 8001CDF4 0A80023C */  lui        $v0, %hi(D_800989C8)
    /* D5F8 8001CDF8 C889428C */  lw         $v0, %lo(D_800989C8)($v0)
    /* D5FC 8001CDFC 00000000 */  nop
    /* D600 8001CE00 18004014 */  bnez       $v0, .L8001CE64
    /* D604 8001CE04 00000000 */   nop
    /* D608 8001CE08 0A80023C */  lui        $v0, %hi(D_80098A84)
    /* D60C 8001CE0C 848A428C */  lw         $v0, %lo(D_80098A84)($v0)
    /* D610 8001CE10 00000000 */  nop
    /* D614 8001CE14 0400438C */  lw         $v1, 0x4($v0)
    /* D618 8001CE18 00000000 */  nop
    /* D61C 8001CE1C 40100300 */  sll        $v0, $v1, 1
    /* D620 8001CE20 21104300 */  addu       $v0, $v0, $v1
    /* D624 8001CE24 80100200 */  sll        $v0, $v0, 2
    /* D628 8001CE28 0A80033C */  lui        $v1, %hi(D_800987A4)
    /* D62C 8001CE2C A487638C */  lw         $v1, %lo(D_800987A4)($v1)
    /* D630 8001CE30 0880013C */  lui        $at, %hi(D_80082CD0 + 0x8)
    /* D634 8001CE34 21082200 */  addu       $at, $at, $v0
    /* D638 8001CE38 D82C248C */  lw         $a0, %lo(D_80082CD0 + 0x8)($at)
    /* D63C 8001CE3C 0000628C */  lw         $v0, 0x0($v1)
    /* D640 8001CE40 00000000 */  nop
    /* D644 8001CE44 05008210 */  beq        $a0, $v0, .L8001CE5C
    /* D648 8001CE48 00000000 */   nop
    /* D64C 8001CE4C 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D650 8001CE50 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D654 8001CE54 D9730008 */  j          .L8001CF64
    /* D658 8001CE58 20004234 */   ori       $v0, $v0, 0x20
  .L8001CE5C:
    /* D65C 8001CE5C 0A80013C */  lui        $at, %hi(D_800989C8)
    /* D660 8001CE60 C88931AC */  sw         $s1, %lo(D_800989C8)($at)
  .L8001CE64:
    /* D664 8001CE64 0A80023C */  lui        $v0, %hi(D_8009881C)
    /* D668 8001CE68 1C88428C */  lw         $v0, %lo(D_8009881C)($v0)
    /* D66C 8001CE6C 00000000 */  nop
    /* D670 8001CE70 00F84224 */  addiu      $v0, $v0, -0x800
    /* D674 8001CE74 0A80013C */  lui        $at, %hi(D_8009881C)
    /* D678 8001CE78 1C8822AC */  sw         $v0, %lo(D_8009881C)($at)
    /* D67C 8001CE7C 0E004014 */  bnez       $v0, .L8001CEB8
    /* D680 8001CE80 00000000 */   nop
    /* D684 8001CE84 89DE010C */  jal        CdReadyCallback
    /* D688 8001CE88 21200000 */   addu      $a0, $zero, $zero
    /* D68C 8001CE8C 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* D690 8001CE90 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* D694 8001CE94 83DE010C */  jal        CdSyncCallback
    /* D698 8001CE98 00000000 */   nop
    /* D69C 8001CE9C 09000424 */  addiu      $a0, $zero, 0x9
    /* D6A0 8001CEA0 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D6A4 8001CEA4 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D6A8 8001CEA8 9574000C */  jal        func_8001D254
    /* D6AC 8001CEAC 21280000 */   addu      $a1, $zero, $zero
    /* D6B0 8001CEB0 E0730008 */  j          .L8001CF80
    /* D6B4 8001CEB4 00000000 */   nop
  .L8001CEB8:
    /* D6B8 8001CEB8 0A80023C */  lui        $v0, %hi(D_800987A4)
    /* D6BC 8001CEBC A487428C */  lw         $v0, %lo(D_800987A4)($v0)
    /* D6C0 8001CEC0 00000000 */  nop
    /* D6C4 8001CEC4 00084224 */  addiu      $v0, $v0, 0x800
    /* D6C8 8001CEC8 0A80013C */  lui        $at, %hi(D_800987A4)
    /* D6CC 8001CECC A48722AC */  sw         $v0, %lo(D_800987A4)($at)
    /* D6D0 8001CED0 E0730008 */  j          .L8001CF80
    /* D6D4 8001CED4 00000000 */   nop
  .L8001CED8:
    /* D6D8 8001CED8 81DF010C */  jal        CdGetSector
    /* D6DC 8001CEDC 00020524 */   addiu     $a1, $zero, 0x200
    /* D6E0 8001CEE0 0A80053C */  lui        $a1, %hi(D_8009881C)
    /* D6E4 8001CEE4 1C88A58C */  lw         $a1, %lo(D_8009881C)($a1)
    /* D6E8 8001CEE8 00000000 */  nop
    /* D6EC 8001CEEC 0E00A010 */  beqz       $a1, .L8001CF28
    /* D6F0 8001CEF0 21200002 */   addu      $a0, $s0, $zero
  .L8001CEF4:
    /* D6F4 8001CEF4 0A80033C */  lui        $v1, %hi(D_800987A4)
    /* D6F8 8001CEF8 A487638C */  lw         $v1, %lo(D_800987A4)($v1)
    /* D6FC 8001CEFC 00008290 */  lbu        $v0, 0x0($a0)
    /* D700 8001CF00 00000000 */  nop
    /* D704 8001CF04 000062A0 */  sb         $v0, 0x0($v1)
    /* D708 8001CF08 0A80023C */  lui        $v0, %hi(D_800987A4)
    /* D70C 8001CF0C A487428C */  lw         $v0, %lo(D_800987A4)($v0)
    /* D710 8001CF10 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* D714 8001CF14 01004224 */  addiu      $v0, $v0, 0x1
    /* D718 8001CF18 0A80013C */  lui        $at, %hi(D_800987A4)
    /* D71C 8001CF1C A48722AC */  sw         $v0, %lo(D_800987A4)($at)
    /* D720 8001CF20 F4FFA014 */  bnez       $a1, .L8001CEF4
    /* D724 8001CF24 01008424 */   addiu     $a0, $a0, 0x1
  .L8001CF28:
    /* D728 8001CF28 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* D72C 8001CF2C 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* D730 8001CF30 83DE010C */  jal        CdSyncCallback
    /* D734 8001CF34 00000000 */   nop
    /* D738 8001CF38 09000424 */  addiu      $a0, $zero, 0x9
    /* D73C 8001CF3C 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D740 8001CF40 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D744 8001CF44 9574000C */  jal        func_8001D254
    /* D748 8001CF48 21280000 */   addu      $a1, $zero, $zero
    /* D74C 8001CF4C DE730008 */  j          .L8001CF78
    /* D750 8001CF50 00000000 */   nop
  .L8001CF54:
    /* D754 8001CF54 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D758 8001CF58 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D75C 8001CF5C 00000000 */  nop
    /* D760 8001CF60 04004234 */  ori        $v0, $v0, 0x4
  .L8001CF64:
    /* D764 8001CF64 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D768 8001CF68 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* D76C 8001CF6C 80000224 */  addiu      $v0, $zero, 0x80
    /* D770 8001CF70 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D774 8001CF74 C08822A0 */  sb         $v0, %lo(D_800988C0)($at)
  .L8001CF78:
    /* D778 8001CF78 89DE010C */  jal        CdReadyCallback
    /* D77C 8001CF7C 21200000 */   addu      $a0, $zero, $zero
  .L8001CF80:
    /* D780 8001CF80 1800BF8F */  lw         $ra, 0x18($sp)
    /* D784 8001CF84 1400B18F */  lw         $s1, 0x14($sp)
    /* D788 8001CF88 1000B08F */  lw         $s0, 0x10($sp)
    /* D78C 8001CF8C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D790 8001CF90 0800E003 */  jr         $ra
    /* D794 8001CF94 00000000 */   nop
.size func_8001CD60, . - func_8001CD60
