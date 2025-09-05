.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A880
    /* 4B080 8005A880 47006210 */  beq        $v1, $v0, .L8005A9A0
    /* 4B084 8005A884 02006228 */   slti      $v0, $v1, 0x2
    /* 4B088 8005A888 05004010 */  beqz       $v0, .L8005A8A0
    /* 4B08C 8005A88C 00000000 */   nop
    /* 4B090 8005A890 08006010 */  beqz       $v1, .L8005A8B4
    /* 4B094 8005A894 08000224 */   addiu     $v0, $zero, 0x8
    /* 4B098 8005A898 DC6A0108 */  j          .L8005AB70
    /* 4B09C 8005A89C 00000000 */   nop
  .L8005A8A0:
    /* 4B0A0 8005A8A0 02000224 */  addiu      $v0, $zero, 0x2
    /* 4B0A4 8005A8A4 96006210 */  beq        $v1, $v0, .L8005AB00
    /* 4B0A8 8005A8A8 0010043C */   lui       $a0, (0x10000000 >> 16)
    /* 4B0AC 8005A8AC DC6A0108 */  j          .L8005AB70
    /* 4B0B0 8005A8B0 00000000 */   nop
  .L8005A8B4:
    /* 4B0B4 8005A8B4 0014033C */  lui        $v1, (0x14000000 >> 16)
    /* 4B0B8 8005A8B8 8500C2A0 */  sb         $v0, 0x85($a2)
    /* 4B0BC 8005A8BC 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B0C0 8005A8C0 0008043C */  lui        $a0, (0x8000000 >> 16)
    /* 4B0C4 8005A8C4 25104300 */  or         $v0, $v0, $v1
    /* 4B0C8 8005A8C8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4B0CC 8005A8CC 24104400 */  and        $v0, $v0, $a0
    /* 4B0D0 8005A8D0 8000C2AC */  sw         $v0, 0x80($a2)
    /* 4B0D4 8005A8D4 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B0D8 8005A8D8 6C00C38C */  lw         $v1, 0x6C($a2)
    /* 4B0DC 8005A8DC 25104400 */  or         $v0, $v0, $a0
    /* 4B0E0 8005A8E0 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4B0E4 8005A8E4 02006490 */  lbu        $a0, 0x2($v1)
    /* 4B0E8 8005A8E8 7D00C290 */  lbu        $v0, 0x7D($a2)
    /* 4B0EC 8005A8EC 7F00C390 */  lbu        $v1, 0x7F($a2)
    /* 4B0F0 8005A8F0 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B0F4 8005A8F4 7D00C2A0 */  sb         $v0, 0x7D($a2)
    /* 4B0F8 8005A8F8 40100300 */  sll        $v0, $v1, 1
    /* 4B0FC 8005A8FC 21104300 */  addu       $v0, $v0, $v1
.size func_8005A880, . - func_8005A880
