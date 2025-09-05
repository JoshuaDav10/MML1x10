.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800424D4
    /* 32CD4 800424D4 07000224 */  addiu      $v0, $zero, 0x7
    /* 32CD8 800424D8 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 32CDC 800424DC 80000224 */  addiu      $v0, $zero, 0x80
    /* 32CE0 800424E0 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 32CE4 800424E4 02000224 */  addiu      $v0, $zero, 0x2
    /* 32CE8 800424E8 0300A2A0 */  sb         $v0, 0x3($a1)
    /* 32CEC 800424EC 0A008290 */  lbu        $v0, 0xA($a0)
    /* 32CF0 800424F0 00000000 */  nop
    /* 32CF4 800424F4 42100200 */  srl        $v0, $v0, 1
    /* 32CF8 800424F8 C0100200 */  sll        $v0, $v0, 3
    /* 32CFC 800424FC 21104400 */  addu       $v0, $v0, $a0
    /* 32D00 80042500 AB034388 */  lwl        $v1, 0x3AB($v0)
    /* 32D04 80042504 A8034398 */  lwr        $v1, 0x3A8($v0)
    /* 32D08 80042508 AF034488 */  lwl        $a0, 0x3AF($v0)
    /* 32D0C 8004250C AC034498 */  lwr        $a0, 0x3AC($v0)
    /* 32D10 80042510 3B00A3A8 */  swl        $v1, 0x3B($a1)
    /* 32D14 80042514 3800A3B8 */  swr        $v1, 0x38($a1)
    /* 32D18 80042518 3F00A4A8 */  swl        $a0, 0x3F($a1)
.size func_800424D4, . - func_800424D4
