.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E96C
    /* 4F16C 8005E96C 0400A295 */  lhu        $v0, 0x4($t5)
    /* 4F170 8005E970 21808000 */  addu       $s0, $a0, $zero
    /* 4F174 8005E974 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 4F178 8005E978 0600A295 */  lhu        $v0, 0x6($t5)
    /* 4F17C 8005E97C 91F7010C */  jal        SetDrawArea
    /* 4F180 8005E980 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 4F184 8005E984 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 4F188 8005E988 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 4F18C 8005E98C 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* 4F190 8005E990 0A80053C */  lui        $a1, %hi(D_80098934)
    /* 4F194 8005E994 3489A58C */  lw         $a1, %lo(D_80098934)($a1)
    /* 4F198 8005E998 0000038E */  lw         $v1, 0x0($s0)
    /* 4F19C 8005E99C 7800A28C */  lw         $v0, 0x78($a1)
    /* 4F1A0 8005E9A0 24186600 */  and        $v1, $v1, $a2
    /* 4F1A4 8005E9A4 24104400 */  and        $v0, $v0, $a0
    /* 4F1A8 8005E9A8 25186200 */  or         $v1, $v1, $v0
    /* 4F1AC 8005E9AC 000003AE */  sw         $v1, 0x0($s0)
    /* 4F1B0 8005E9B0 7800A28C */  lw         $v0, 0x78($a1)
    /* 4F1B4 8005E9B4 24200402 */  and        $a0, $s0, $a0
    /* 4F1B8 8005E9B8 24104600 */  and        $v0, $v0, $a2
    /* 4F1BC 8005E9BC 25104400 */  or         $v0, $v0, $a0
    /* 4F1C0 8005E9C0 7800A2AC */  sw         $v0, 0x78($a1)
  .L8005E9C4:
    /* 4F1C4 8005E9C4 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 4F1C8 8005E9C8 6800BE8F */  lw         $fp, 0x68($sp)
    /* 4F1CC 8005E9CC 6400B78F */  lw         $s7, 0x64($sp)
    /* 4F1D0 8005E9D0 6000B68F */  lw         $s6, 0x60($sp)
    /* 4F1D4 8005E9D4 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 4F1D8 8005E9D8 5800B48F */  lw         $s4, 0x58($sp)
    /* 4F1DC 8005E9DC 5400B38F */  lw         $s3, 0x54($sp)
    /* 4F1E0 8005E9E0 5000B28F */  lw         $s2, 0x50($sp)
    /* 4F1E4 8005E9E4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 4F1E8 8005E9E8 4800B08F */  lw         $s0, 0x48($sp)
    /* 4F1EC 8005E9EC 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 4F1F0 8005E9F0 0800E003 */  jr         $ra
    /* 4F1F4 8005E9F4 00000000 */   nop
.size func_8005E96C, . - func_8005E96C
