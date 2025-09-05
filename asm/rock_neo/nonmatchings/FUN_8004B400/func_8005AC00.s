.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AC00
    /* 4B400 8005AC00 21186400 */  addu       $v1, $v1, $a0
    /* 4B404 8005AC04 80180300 */  sll        $v1, $v1, 2
    /* 4B408 8005AC08 8A00A2A4 */  sh         $v0, 0x8A($a1)
    /* 4B40C 8005AC0C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B410 8005AC10 B600A494 */  lhu        $a0, 0xB6($a1)
    /* 4B414 8005AC14 21104300 */  addu       $v0, $v0, $v1
    /* 4B418 8005AC18 8C00A2A4 */  sh         $v0, 0x8C($a1)
    /* 4B41C 8005AC1C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B420 8005AC20 23200400 */  negu       $a0, $a0
    /* 4B424 8005AC24 8E00A4A4 */  sh         $a0, 0x8E($a1)
    /* 4B428 8005AC28 7F00A490 */  lbu        $a0, 0x7F($a1)
    /* 4B42C 8005AC2C 23100200 */  negu       $v0, $v0
    /* 4B430 8005AC30 40180400 */  sll        $v1, $a0, 1
    /* 4B434 8005AC34 21186400 */  addu       $v1, $v1, $a0
    /* 4B438 8005AC38 80180300 */  sll        $v1, $v1, 2
    /* 4B43C 8005AC3C 9000A2A4 */  sh         $v0, 0x90($a1)
    /* 4B440 8005AC40 B600A294 */  lhu        $v0, 0xB6($a1)
    /* 4B444 8005AC44 7E00A490 */  lbu        $a0, 0x7E($a1)
    /* 4B448 8005AC48 21104300 */  addu       $v0, $v0, $v1
    /* 4B44C 8005AC4C 40180400 */  sll        $v1, $a0, 1
    /* 4B450 8005AC50 21186400 */  addu       $v1, $v1, $a0
    /* 4B454 8005AC54 80180300 */  sll        $v1, $v1, 2
    /* 4B458 8005AC58 9200A2A4 */  sh         $v0, 0x92($a1)
    /* 4B45C 8005AC5C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B460 8005AC60 7F00A490 */  lbu        $a0, 0x7F($a1)
    /* 4B464 8005AC64 21104300 */  addu       $v0, $v0, $v1
    /* 4B468 8005AC68 9400A2A4 */  sh         $v0, 0x94($a1)
    /* 4B46C 8005AC6C 40100400 */  sll        $v0, $a0, 1
    /* 4B470 8005AC70 21104400 */  addu       $v0, $v0, $a0
    /* 4B474 8005AC74 B600A394 */  lhu        $v1, 0xB6($a1)
    /* 4B478 8005AC78 80100200 */  sll        $v0, $v0, 2
    /* 4B47C 8005AC7C 21186200 */  addu       $v1, $v1, $v0
.size func_8005AC00, . - func_8005AC00
