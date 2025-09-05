.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DD50
    /* 4E550 8005DD50 1000A627 */  addiu      $a2, $sp, 0x10
    /* 4E554 8005DD54 2138A003 */  addu       $a3, $sp, $zero
    /* 4E558 8005DD58 300F838F */  lw         $v1, %gp_rel(D_80098794)($gp)
    /* 4E55C 8005DD5C 1900AC27 */  addiu      $t4, $sp, 0x19
    /* 4E560 8005DD60 40100300 */  sll        $v0, $v1, 1
    /* 4E564 8005DD64 21104300 */  addu       $v0, $v0, $v1
    /* 4E568 8005DD68 80100200 */  sll        $v0, $v0, 2
    /* 4E56C 8005DD6C 0980013C */  lui        $at, %hi(D_8008D19E)
    /* 4E570 8005DD70 21082200 */  addu       $at, $at, $v0
    /* 4E574 8005DD74 9ED12890 */  lbu        $t0, %lo(D_8008D19E)($at)
    /* 4E578 8005DD78 0980013C */  lui        $at, %hi(D_8008D1A4)
    /* 4E57C 8005DD7C 21082200 */  addu       $at, $at, $v0
    /* 4E580 8005DD80 A4D12484 */  lh         $a0, %lo(D_8008D1A4)($at)
    /* 4E584 8005DD84 0B80033C */  lui        $v1, %hi(Player_work + 0x14)
    /* 4E588 8005DD88 C4516384 */  lh         $v1, %lo(Player_work + 0x14)($v1)
    /* 4E58C 8005DD8C 0980013C */  lui        $at, %hi(D_8008D19F)
    /* 4E590 8005DD90 21082200 */  addu       $at, $at, $v0
    /* 4E594 8005DD94 9FD12B90 */  lbu        $t3, %lo(D_8008D19F)($at)
    /* 4E598 8005DD98 23186400 */  subu       $v1, $v1, $a0
    /* 4E59C 8005DD9C 0980013C */  lui        $at, %hi(D_8008D1A6)
    /* 4E5A0 8005DDA0 21082200 */  addu       $at, $at, $v0
    /* 4E5A4 8005DDA4 A6D12484 */  lh         $a0, %lo(D_8008D1A6)($at)
    /* 4E5A8 8005DDA8 0B80023C */  lui        $v0, %hi(Player_work + 0x18)
    /* 4E5AC 8005DDAC C8514284 */  lh         $v0, %lo(Player_work + 0x18)($v0)
    /* 4E5B0 8005DDB0 43520300 */  sra        $t2, $v1, 9
    /* 4E5B4 8005DDB4 23104400 */  subu       $v0, $v0, $a0
    /* 4E5B8 8005DDB8 434A0200 */  sra        $t1, $v0, 9
  .L8005DDBC:
    /* 4E5BC 8005DDBC 0000E280 */  lb         $v0, 0x0($a3)
    /* 4E5C0 8005DDC0 0000C380 */  lb         $v1, 0x0($a2)
    /* 4E5C4 8005DDC4 21284201 */  addu       $a1, $t2, $v0
    /* 4E5C8 8005DDC8 2B10A800 */  sltu       $v0, $a1, $t0
    /* 4E5CC 8005DDCC 0F004010 */  beqz       $v0, .L8005DE0C
    /* 4E5D0 8005DDD0 21182301 */   addu      $v1, $t1, $v1
    /* 4E5D4 8005DDD4 2B106B00 */  sltu       $v0, $v1, $t3
    /* 4E5D8 8005DDD8 0C004010 */  beqz       $v0, .L8005DE0C
    /* 4E5DC 8005DDDC 18000301 */   mult      $t0, $v1
    /* 4E5E0 8005DDE0 C80F848F */  lw         $a0, %gp_rel(D_8009882C)($gp)
    /* 4E5E4 8005DDE4 12700000 */  mflo       $t6
    /* 4E5E8 8005DDE8 2110C501 */  addu       $v0, $t6, $a1
    /* 4E5EC 8005DDEC C3100200 */  sra        $v0, $v0, 3
    /* 4E5F0 8005DDF0 21208200 */  addu       $a0, $a0, $v0
    /* 4E5F4 8005DDF4 0700A230 */  andi       $v0, $a1, 0x7
    /* 4E5F8 8005DDF8 07104D00 */  srav       $v0, $t5, $v0
    /* 4E5FC 8005DDFC 00008390 */  lbu        $v1, 0x0($a0)
    /* 4E600 8005DE00 27100200 */  nor        $v0, $zero, $v0
    /* 4E604 8005DE04 24186200 */  and        $v1, $v1, $v0
    /* 4E608 8005DE08 000083A0 */  sb         $v1, 0x0($a0)
  .L8005DE0C:
    /* 4E60C 8005DE0C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4E610 8005DE10 2A10CC00 */  slt        $v0, $a2, $t4
    /* 4E614 8005DE14 E9FF4014 */  bnez       $v0, .L8005DDBC
    /* 4E618 8005DE18 0100E724 */   addiu     $a3, $a3, 0x1
  .L8005DE1C:
    /* 4E61C 8005DE1C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4E620 8005DE20 0800E003 */  jr         $ra
    /* 4E624 8005DE24 00000000 */   nop
.size func_8005DD50, . - func_8005DD50
