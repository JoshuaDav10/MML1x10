.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E15C
    /* 4E95C 8005E15C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 4E960 8005E160 5400B3AF */  sw         $s3, 0x54($sp)
    /* 4E964 8005E164 5000B2AF */  sw         $s2, 0x50($sp)
    /* 4E968 8005E168 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 4E96C 8005E16C 4800B0AF */  sw         $s0, 0x48($sp)
    /* 4E970 8005E170 1800A4AF */  sw         $a0, 0x18($sp)
    /* 4E974 8005E174 2000A5AF */  sw         $a1, 0x20($sp)
    /* 4E978 8005E178 2800A7AF */  sw         $a3, 0x28($sp)
    /* 4E97C 8005E17C 0000E284 */  lh         $v0, 0x0($a3)
    /* 4E980 8005E180 0400E384 */  lh         $v1, 0x4($a3)
    /* 4E984 8005E184 00000000 */  nop
    /* 4E988 8005E188 21104300 */  addu       $v0, $v0, $v1
    /* 4E98C 8005E18C 0D024004 */  bltz       $v0, .L8005E9C4
    /* 4E990 8005E190 21B8C000 */   addu      $s7, $a2, $zero
    /* 4E994 8005E194 801F163C */  lui        $s6, (0x1F800070 >> 16)
    /* 4E998 8005E198 7000D636 */  ori        $s6, $s6, (0x1F800070 & 0xFFFF)
    /* 4E99C 8005E19C 0038043C */  lui        $a0, (0x38000000 >> 16)
    /* 4E9A0 8005E1A0 300F838F */  lw         $v1, %gp_rel(D_80098794)($gp)
    /* 4E9A4 8005E1A4 0000D08E */  lw         $s0, 0x0($s6)
    /* 4E9A8 8005E1A8 40100300 */  sll        $v0, $v1, 1
    /* 4E9AC 8005E1AC 21104300 */  addu       $v0, $v0, $v1
    /* 4E9B0 8005E1B0 80100200 */  sll        $v0, $v0, 2
    /* 4E9B4 8005E1B4 0980013C */  lui        $at, %hi(D_8008D19E)
    /* 4E9B8 8005E1B8 21082200 */  addu       $at, $at, $v0
    /* 4E9BC 8005E1BC 9ED13E90 */  lbu        $fp, %lo(D_8008D19E)($at)
    /* 4E9C0 8005E1C0 0980013C */  lui        $at, (0x80090000 >> 16)
    /* 4E9C4 8005E1C4 21082200 */  addu       $at, $at, $v0
.size func_8005E15C, . - func_8005E15C
