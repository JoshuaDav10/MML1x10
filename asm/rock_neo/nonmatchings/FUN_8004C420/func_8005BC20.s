.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BC20
    /* 4C420 8005BC20 8A00C394 */  lhu        $v1, 0x8A($a2)
    /* 4C424 8005BC24 25104400 */  or         $v0, $v0, $a0
    /* 4C428 8005BC28 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4C42C 8005BC2C 21186500 */  addu       $v1, $v1, $a1
    /* 4C430 8005BC30 0000C2AC */  sw         $v0, 0x0($a2)
.size func_8005BC20, . - func_8005BC20
