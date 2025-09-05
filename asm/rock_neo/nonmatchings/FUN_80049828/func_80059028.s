.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059028
    /* 49828 80059028 2418A300 */  and        $v1, $a1, $v1
    /* 4982C 8005902C 22006214 */  bne        $v1, $v0, .L800590B8
    /* 49830 80059030 40008230 */   andi      $v0, $a0, 0x40
    /* 49834 80059034 BC000396 */  lhu        $v1, 0xBC($s0)
    /* 49838 80059038 00000000 */  nop
    /* 4983C 8005903C 0D00622C */  sltiu      $v0, $v1, 0xD
.size func_80059028, . - func_80059028
