.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F5E4
    /* FDE4 8001F5E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FDE8 8001F5E8 0B80023C */  lui        $v0, %hi(Player_work + 0x16A)
    /* FDEC 8001F5EC 1A534280 */  lb         $v0, %lo(Player_work + 0x16A)($v0)
    /* FDF0 8001F5F0 0C80033C */  lui        $v1, %hi(Game_work + 0x70)
    /* FDF4 8001F5F4 801B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x70)
    /* FDF8 8001F5F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* FDFC 8001F5FC 40100200 */  sll        $v0, $v0, 1
    /* FE00 8001F600 0980013C */  lui        $at, %hi(D_80089200)
    /* FE04 8001F604 21082200 */  addu       $at, $at, $v0
    /* FE08 8001F608 00922484 */  lh         $a0, %lo(D_80089200)($at)
    /* FE0C 8001F60C 00006284 */  lh         $v0, 0x0($v1)
    /* FE10 8001F610 00000000 */  nop
    /* FE14 8001F614 03004410 */  beq        $v0, $a0, .L8001F624
    /* FE18 8001F618 00000000 */   nop
    /* FE1C 8001F61C 1075000C */  jal        Cd_read_comb
    /* FE20 8001F620 000064A4 */   sh        $a0, 0x0($v1)
  .L8001F624:
    /* FE24 8001F624 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* FE28 8001F628 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* FE2C 8001F62C 00000000 */  nop
    /* FE30 8001F630 00160200 */  sll        $v0, $v0, 24
    /* FE34 8001F634 43160200 */  sra        $v0, $v0, 25
    /* FE38 8001F638 40100200 */  sll        $v0, $v0, 1
    /* FE3C 8001F63C 0980013C */  lui        $at, %hi(D_80089204)
    /* FE40 8001F640 21082200 */  addu       $at, $at, $v0
    /* FE44 8001F644 04922484 */  lh         $a0, %lo(D_80089204)($at)
    /* FE48 8001F648 0C80023C */  lui        $v0, %hi(Game_work + 0x72)
    /* FE4C 8001F64C 821B4284 */  lh         $v0, %lo(Game_work + 0x72)($v0)
    /* FE50 8001F650 00000000 */  nop
    /* FE54 8001F654 05004410 */  beq        $v0, $a0, .L8001F66C
    /* FE58 8001F658 00000000 */   nop
    /* FE5C 8001F65C 0C80013C */  lui        $at, %hi(Game_work + 0x72)
    /* FE60 8001F660 821B24A4 */  sh         $a0, %lo(Game_work + 0x72)($at)
    /* FE64 8001F664 1075000C */  jal        Cd_read_comb
    /* FE68 8001F668 00000000 */   nop
  .L8001F66C:
    /* FE6C 8001F66C 0B80033C */  lui        $v1, %hi(Player_work + 0x172)
    /* FE70 8001F670 22536380 */  lb         $v1, %lo(Player_work + 0x172)($v1)
    /* FE74 8001F674 00000000 */  nop
    /* FE78 8001F678 02006228 */  slti       $v0, $v1, 0x2
    /* FE7C 8001F67C 0D004014 */  bnez       $v0, .L8001F6B4
    /* FE80 8001F680 40100300 */   sll       $v0, $v1, 1
    /* FE84 8001F684 0980013C */  lui        $at, %hi(D_80089208)
    /* FE88 8001F688 21082200 */  addu       $at, $at, $v0
    /* FE8C 8001F68C 08922484 */  lh         $a0, %lo(D_80089208)($at)
    /* FE90 8001F690 0C80023C */  lui        $v0, %hi(Game_work + 0x74)
    /* FE94 8001F694 841B4284 */  lh         $v0, %lo(Game_work + 0x74)($v0)
    /* FE98 8001F698 00000000 */  nop
    /* FE9C 8001F69C 05004410 */  beq        $v0, $a0, .L8001F6B4
    /* FEA0 8001F6A0 00000000 */   nop
    /* FEA4 8001F6A4 0C80013C */  lui        $at, %hi(Game_work + 0x74)
    /* FEA8 8001F6A8 841B24A4 */  sh         $a0, %lo(Game_work + 0x74)($at)
    /* FEAC 8001F6AC 1075000C */  jal        Cd_read_comb
    /* FEB0 8001F6B0 00000000 */   nop
  .L8001F6B4:
    /* FEB4 8001F6B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* FEB8 8001F6B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FEBC 8001F6BC 0800E003 */  jr         $ra
    /* FEC0 8001F6C0 00000000 */   nop
.size func_8001F5E4, . - func_8001F5E4
