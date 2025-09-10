.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E140
    /* 6E940 8007E140 0000C2AC */  sw         $v0, 0x0($a2)
    /* 6E944 8007E144 1000A28F */  lw         $v0, 0x10($sp)
    /* 6E948 8007E148 2128B100 */  addu       $a1, $a1, $s1
    /* 6E94C 8007E14C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 6E950 8007E150 80100700 */  sll        $v0, $a3, 2
    /* 6E954 8007E154 1400A38F */  lw         $v1, 0x14($sp)
    /* 6E958 8007E158 21105100 */  addu       $v0, $v0, $s1
    /* 6E95C 8007E15C 000043AC */  sw         $v1, 0x0($v0)
    /* 6E960 8007E160 1000A297 */  lhu        $v0, 0x10($sp)
    /* 6E964 8007E164 08000396 */  lhu        $v1, 0x8($s0)
    /* 6E968 8007E168 00000000 */  nop
    /* 6E96C 8007E16C 21104300 */  addu       $v0, $v0, $v1
    /* 6E970 8007E170 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 6E974 8007E174 1200A297 */  lhu        $v0, 0x12($sp)
    /* 6E978 8007E178 0A000396 */  lhu        $v1, 0xA($s0)
    /* 6E97C 8007E17C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 6E980 8007E180 21104300 */  addu       $v0, $v0, $v1
    /* 6E984 8007E184 1200A2A7 */  sh         $v0, 0x12($sp)
  .L8007E188:
    /* 6E988 8007E188 FFFFE224 */  addiu      $v0, $a3, -0x1
    /* 6E98C 8007E18C 030022A2 */  sb         $v0, 0x3($s1)
    /* 6E990 8007E190 3800BF8F */  lw         $ra, 0x38($sp)
    /* 6E994 8007E194 3400B18F */  lw         $s1, 0x34($sp)
    /* 6E998 8007E198 3000B08F */  lw         $s0, 0x30($sp)
    /* 6E99C 8007E19C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 6E9A0 8007E1A0 0800E003 */  jr         $ra
    /* 6E9A4 8007E1A4 00000000 */   nop
.size func_8007E140, . - func_8007E140
