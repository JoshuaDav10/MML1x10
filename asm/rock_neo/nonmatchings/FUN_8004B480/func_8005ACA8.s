.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005ACA8
    /* 4B4A8 8005ACA8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4B4AC 8005ACAC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4B4B0 8005ACB0 21808000 */  addu       $s0, $a0, $zero
    /* 4B4B4 8005ACB4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4B4B8 8005ACB8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4B4BC 8005ACBC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4B4C0 8005ACC0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4B4C4 8005ACC4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4B4C8 8005ACC8 7E000292 */  lbu        $v0, 0x7E($s0)
    /* 4B4CC 8005ACCC 7E000492 */  lbu        $a0, 0x7E($s0)
    /* 4B4D0 8005ACD0 40180200 */  sll        $v1, $v0, 1
    /* 4B4D4 8005ACD4 21186200 */  addu       $v1, $v1, $v0
    /* 4B4D8 8005ACD8 B4000296 */  lhu        $v0, 0xB4($s0)
    /* 4B4DC 8005ACDC 80180300 */  sll        $v1, $v1, 2
    /* 4B4E0 8005ACE0 21104300 */  addu       $v0, $v0, $v1
    /* 4B4E4 8005ACE4 40180400 */  sll        $v1, $a0, 1
    /* 4B4E8 8005ACE8 21186400 */  addu       $v1, $v1, $a0
    /* 4B4EC 8005ACEC 80180300 */  sll        $v1, $v1, 2
    /* 4B4F0 8005ACF0 8C0002A6 */  sh         $v0, 0x8C($s0)
    /* 4B4F4 8005ACF4 B4000296 */  lhu        $v0, 0xB4($s0)
    /* 4B4F8 8005ACF8 7C000492 */  lbu        $a0, 0x7C($s0)
    /* 4B4FC 8005ACFC 21104300 */  addu       $v0, $v0, $v1
.size func_8005ACA8, . - func_8005ACA8
