.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055CC4
    /* 464C4 80055CC4 4000063C */  lui        $a2, (0x404000 >> 16)
    /* 464C8 80055CC8 72008590 */  lbu        $a1, 0x72($a0)
    /* 464CC 80055CCC 0000828C */  lw         $v0, 0x0($a0)
    /* 464D0 80055CD0 6C00838C */  lw         $v1, 0x6C($a0)
    /* 464D4 80055CD4 0040C634 */  ori        $a2, $a2, (0x404000 & 0xFFFF)
    /* 464D8 80055CD8 BC0080A4 */  sh         $zero, 0xBC($a0)
    /* 464DC 80055CDC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 464E0 80055CE0 25104600 */  or         $v0, $v0, $a2
    /* 464E4 80055CE4 07006324 */  addiu      $v1, $v1, 0x7
    /* 464E8 80055CE8 000082AC */  sw         $v0, 0x0($a0)
    /* 464EC 80055CEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 464F0 80055CF0 720085A0 */  sb         $a1, 0x72($a0)
    /* 464F4 80055CF4 0800E003 */  jr         $ra
    /* 464F8 80055CF8 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80055CC4, . - func_80055CC4
