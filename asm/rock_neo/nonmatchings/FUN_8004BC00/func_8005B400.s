.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B400
    /* 4BC00 8005B400 24105200 */  and        $v0, $v0, $s2
    /* 4BC04 8005B404 25186200 */  or         $v1, $v1, $v0
    /* 4BC08 8005B408 000023AE */  sw         $v1, 0x0($s1)
    /* 4BC0C 8005B40C 3D000382 */  lb         $v1, 0x3D($s0)
    /* 4BC10 8005B410 00000000 */  nop
    /* 4BC14 8005B414 80180300 */  sll        $v1, $v1, 2
    /* 4BC18 8005B418 21186400 */  addu       $v1, $v1, $a0
    /* 4BC1C 8005B41C 7000628C */  lw         $v0, 0x70($v1)
    /* 4BC20 8005B420 24883202 */  and        $s1, $s1, $s2
    /* 4BC24 8005B424 24105300 */  and        $v0, $v0, $s3
    /* 4BC28 8005B428 25105100 */  or         $v0, $v0, $s1
    /* 4BC2C 8005B42C 700062AC */  sw         $v0, 0x70($v1)
    /* 4BC30 8005B430 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4BC34 8005B434 2800B48F */  lw         $s4, 0x28($sp)
    /* 4BC38 8005B438 2400B38F */  lw         $s3, 0x24($sp)
    /* 4BC3C 8005B43C 2000B28F */  lw         $s2, 0x20($sp)
    /* 4BC40 8005B440 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4BC44 8005B444 1800B08F */  lw         $s0, 0x18($sp)
    /* 4BC48 8005B448 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4BC4C 8005B44C 0800E003 */  jr         $ra
    /* 4BC50 8005B450 00000000 */   nop
.size func_8005B400, . - func_8005B400
