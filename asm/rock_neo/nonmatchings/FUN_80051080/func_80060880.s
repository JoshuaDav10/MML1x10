.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060880
    /* 51080 80060880 4F0420A2 */  sb         $zero, 0x44F($s1)
    /* 51084 80060884 700120A2 */  sb         $zero, 0x170($s1)
  .L80060888:
    /* 51088 80060888 01000292 */  lbu        $v0, 0x1($s0)
    /* 5108C 8006088C 00000000 */  nop
    /* 51090 80060890 03004224 */  addiu      $v0, $v0, 0x3
    /* 51094 80060894 AD820108 */  j          .L80060AB4
    /* 51098 80060898 010002A2 */   sb        $v0, 0x1($s0)
  .L8006089C:
    /* 5109C 8006089C 01000524 */  addiu      $a1, $zero, 0x1
.size func_80060880, . - func_80060880
