.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060E00
    /* 51600 80060E00 0A000392 */  lbu        $v1, 0xA($s0)
    /* 51604 80060E04 0B80023C */  lui        $v0, %hi(Player_work + 0x452)
    /* 51608 80060E08 02564290 */  lbu        $v0, %lo(Player_work + 0x452)($v0)
    /* 5160C 80060E0C 00000000 */  nop
    /* 51610 80060E10 0E006210 */  beq        $v1, $v0, .L80060E4C
    /* 51614 80060E14 01000224 */   addiu     $v0, $zero, 0x1
  .L80060E18:
    /* 51618 80060E18 E808010C */  jal        Pl00_shot_enable_off
    /* 5161C 80060E1C 21202002 */   addu      $a0, $s1, $zero
    /* 51620 80060E20 F208010C */  jal        Pl00_shot_enable_on
    /* 51624 80060E24 21202002 */   addu      $a0, $s1, $zero
    /* 51628 80060E28 0B000392 */  lbu        $v1, 0xB($s0)
    /* 5162C 80060E2C 70012282 */  lb         $v0, 0x170($s1)
    /* 51630 80060E30 00000000 */  nop
    /* 51634 80060E34 03006210 */  beq        $v1, $v0, .L80060E44
    /* 51638 80060E38 08000424 */   addiu     $a0, $zero, 0x8
    /* 5163C 80060E3C A4BB000C */  jal        Obj_work_flag_change
    /* 51640 80060E40 80000524 */   addiu     $a1, $zero, 0x80
  .L80060E44:
    /* 51644 80060E44 100120A2 */  sb         $zero, 0x110($s1)
    /* 51648 80060E48 01000224 */  addiu      $v0, $zero, 0x1
  .L80060E4C:
    /* 5164C 80060E4C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 51650 80060E50 1400B18F */  lw         $s1, 0x14($sp)
    /* 51654 80060E54 1000B08F */  lw         $s0, 0x10($sp)
    /* 51658 80060E58 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5165C 80060E5C 0800E003 */  jr         $ra
    /* 51660 80060E60 00000000 */   nop
.size func_80060E00, . - func_80060E00
