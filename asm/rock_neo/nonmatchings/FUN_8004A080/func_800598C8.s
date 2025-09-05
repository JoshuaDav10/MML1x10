.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800598C8
    /* 4A0C8 800598C8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4A0CC 800598CC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4A0D0 800598D0 21808000 */  addu       $s0, $a0, $zero
    /* 4A0D4 800598D4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 4A0D8 800598D8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4A0DC 800598DC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4A0E0 800598E0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4A0E4 800598E4 0000048E */  lw         $a0, 0x0($s0)
    /* 4A0E8 800598E8 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 4A0EC 800598EC 24108500 */  and        $v0, $a0, $a1
    /* 4A0F0 800598F0 09004014 */  bnez       $v0, .L80059918
    /* 4A0F4 800598F4 25108500 */   or        $v0, $a0, $a1
    /* 4A0F8 800598F8 FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 4A0FC 800598FC FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
.size func_800598C8, . - func_800598C8
