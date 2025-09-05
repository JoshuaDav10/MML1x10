.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B98C
    /* 4C18C 8005B98C 21308000 */  addu       $a2, $a0, $zero
    /* 4C190 8005B990 7D00C390 */  lbu        $v1, 0x7D($a2)
    /* 4C194 8005B994 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C198 8005B998 47006210 */  beq        $v1, $v0, .L8005BAB8
    /* 4C19C 8005B99C 02006228 */   slti      $v0, $v1, 0x2
    /* 4C1A0 8005B9A0 05004010 */  beqz       $v0, .L8005B9B8
    /* 4C1A4 8005B9A4 00000000 */   nop
    /* 4C1A8 8005B9A8 08006010 */  beqz       $v1, .L8005B9CC
    /* 4C1AC 8005B9AC 08000224 */   addiu     $v0, $zero, 0x8
    /* 4C1B0 8005B9B0 226F0108 */  j          .L8005BC88
    /* 4C1B4 8005B9B4 00000000 */   nop
  .L8005B9B8:
    /* 4C1B8 8005B9B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 4C1BC 8005B9BC 96006210 */  beq        $v1, $v0, .L8005BC18
    /* 4C1C0 8005B9C0 0010043C */   lui       $a0, (0x10000000 >> 16)
    /* 4C1C4 8005B9C4 226F0108 */  j          .L8005BC88
    /* 4C1C8 8005B9C8 00000000 */   nop
  .L8005B9CC:
    /* 4C1CC 8005B9CC 0014033C */  lui        $v1, (0x14000000 >> 16)
    /* 4C1D0 8005B9D0 8500C2A0 */  sb         $v0, 0x85($a2)
    /* 4C1D4 8005B9D4 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C1D8 8005B9D8 0008043C */  lui        $a0, (0x8000000 >> 16)
    /* 4C1DC 8005B9DC 25104300 */  or         $v0, $v0, $v1
    /* 4C1E0 8005B9E0 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C1E4 8005B9E4 24104400 */  and        $v0, $v0, $a0
    /* 4C1E8 8005B9E8 8000C2AC */  sw         $v0, 0x80($a2)
    /* 4C1EC 8005B9EC 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C1F0 8005B9F0 6C00C38C */  lw         $v1, 0x6C($a2)
    /* 4C1F4 8005B9F4 25104400 */  or         $v0, $v0, $a0
    /* 4C1F8 8005B9F8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C1FC 8005B9FC 02006490 */  lbu        $a0, 0x2($v1)
.size func_8005B98C, . - func_8005B98C
