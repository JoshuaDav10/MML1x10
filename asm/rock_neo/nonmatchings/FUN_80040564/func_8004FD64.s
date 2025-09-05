.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FD64
    /* 40564 8004FD64 23184400 */  subu       $v1, $v0, $a0
  .L8004FD68:
    /* 40568 8004FD68 801F053C */  lui        $a1, (0x1F8000F8 >> 16)
    /* 4056C 8004FD6C F800A584 */  lh         $a1, (0x1F8000F8 & 0xFFFF)($a1)
.size func_8004FD64, . - func_8004FD64
