.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B080
    /* 4B880 8005B080 24187300 */  and        $v1, $v1, $s3
    /* 4B884 8005B084 24105200 */  and        $v0, $v0, $s2
    /* 4B888 8005B088 25186200 */  or         $v1, $v1, $v0
    /* 4B88C 8005B08C 000083AC */  sw         $v1, 0x0($a0)
    /* 4B890 8005B090 3D000482 */  lb         $a0, 0x3D($s0)
    /* 4B894 8005B094 A400028E */  lw         $v0, 0xA4($s0)
    /* 4B898 8005B098 80200400 */  sll        $a0, $a0, 2
    /* 4B89C 8005B09C 21208800 */  addu       $a0, $a0, $t0
    /* 4B8A0 8005B0A0 7000838C */  lw         $v1, 0x70($a0)
    /* 4B8A4 8005B0A4 24105200 */  and        $v0, $v0, $s2
    /* 4B8A8 8005B0A8 24187300 */  and        $v1, $v1, $s3
    /* 4B8AC 8005B0AC 25186200 */  or         $v1, $v1, $v0
    /* 4B8B0 8005B0B0 700083AC */  sw         $v1, 0x70($a0)
    /* 4B8B4 8005B0B4 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4B8B8 8005B0B8 A800048E */  lw         $a0, 0xA8($s0)
    /* 4B8BC 8005B0BC 80100200 */  sll        $v0, $v0, 2
    /* 4B8C0 8005B0C0 21104800 */  addu       $v0, $v0, $t0
    /* 4B8C4 8005B0C4 0000838C */  lw         $v1, 0x0($a0)
    /* 4B8C8 8005B0C8 7000428C */  lw         $v0, 0x70($v0)
    /* 4B8CC 8005B0CC 24187300 */  and        $v1, $v1, $s3
    /* 4B8D0 8005B0D0 24105200 */  and        $v0, $v0, $s2
    /* 4B8D4 8005B0D4 25186200 */  or         $v1, $v1, $v0
    /* 4B8D8 8005B0D8 000083AC */  sw         $v1, 0x0($a0)
    /* 4B8DC 8005B0DC 21200000 */  addu       $a0, $zero, $zero
    /* 4B8E0 8005B0E0 3D000582 */  lb         $a1, 0x3D($s0)
    /* 4B8E4 8005B0E4 A800028E */  lw         $v0, 0xA8($s0)
    /* 4B8E8 8005B0E8 80280500 */  sll        $a1, $a1, 2
    /* 4B8EC 8005B0EC 2128A800 */  addu       $a1, $a1, $t0
    /* 4B8F0 8005B0F0 7000A38C */  lw         $v1, 0x70($a1)
    /* 4B8F4 8005B0F4 24105200 */  and        $v0, $v0, $s2
    /* 4B8F8 8005B0F8 24187300 */  and        $v1, $v1, $s3
    /* 4B8FC 8005B0FC 25186200 */  or         $v1, $v1, $v0
.size func_8005B080, . - func_8005B080
