.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052CE4
    /* 434E4 80052CE4 0080173B */  xori       $s7, $t8, 0x8000
    /* 434E8 80052CE8 0800B126 */  addiu      $s1, $s5, 0x8
  .L80052CEC:
    /* 434EC 80052CEC 801F033C */  lui        $v1, (0x1F8000E0 >> 16)
    /* 434F0 80052CF0 E0006394 */  lhu        $v1, (0x1F8000E0 & 0xFFFF)($v1)
    /* 434F4 80052CF4 0000A296 */  lhu        $v0, 0x0($s5)
    /* 434F8 80052CF8 00000000 */  nop
    /* 434FC 80052CFC 21106200 */  addu       $v0, $v1, $v0
    /* 43500 80052D00 4000A2A7 */  sh         $v0, 0x40($sp)
    /* 43504 80052D04 FAFF2296 */  lhu        $v0, -0x6($s1)
    /* 43508 80052D08 00000000 */  nop
    /* 4350C 80052D0C 21186200 */  addu       $v1, $v1, $v0
    /* 43510 80052D10 4200A3A7 */  sh         $v1, 0x42($sp)
    /* 43514 80052D14 801F033C */  lui        $v1, (0x1F8000E4 >> 16)
    /* 43518 80052D18 E4006394 */  lhu        $v1, (0x1F8000E4 & 0xFFFF)($v1)
    /* 4351C 80052D1C FCFF2296 */  lhu        $v0, -0x4($s1)
    /* 43520 80052D20 00000000 */  nop
    /* 43524 80052D24 21106200 */  addu       $v0, $v1, $v0
    /* 43528 80052D28 4400A2A7 */  sh         $v0, 0x44($sp)
    /* 4352C 80052D2C FEFF2296 */  lhu        $v0, -0x2($s1)
    /* 43530 80052D30 00000000 */  nop
    /* 43534 80052D34 21186200 */  addu       $v1, $v1, $v0
    /* 43538 80052D38 4600A3A7 */  sh         $v1, 0x46($sp)
    /* 4353C 80052D3C 0000338E */  lw         $s3, 0x0($s1)
.size func_80052CE4, . - func_80052CE4
