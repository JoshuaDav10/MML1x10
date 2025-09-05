.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BC00
    /* 4C400 8005BC00 21104400 */  addu       $v0, $v0, $a0
    /* 4C404 8005BC04 B600C394 */  lhu        $v1, 0xB6($a2)
    /* 4C408 8005BC08 80100200 */  sll        $v0, $v0, 2
    /* 4C40C 8005BC0C 21186200 */  addu       $v1, $v1, $v0
    /* 4C410 8005BC10 226F0108 */  j          .L8005BC88
    /* 4C414 8005BC14 9600C3A4 */   sh        $v1, 0x96($a2)
  .L8005BC18:
    /* 4C418 8005BC18 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C41C 8005BC1C 8500C590 */  lbu        $a1, 0x85($a2)
.size func_8005BC00, . - func_8005BC00
