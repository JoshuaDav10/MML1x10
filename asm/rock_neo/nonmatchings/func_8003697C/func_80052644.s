.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052644
    /* 42E44 80052644 7600A280 */  lb         $v0, 0x76($a1)
    /* 42E48 80052648 00000000 */  nop
    /* 42E4C 8005264C 07004010 */  beqz       $v0, .L8005266C
    /* 42E50 80052650 00000000 */   nop
    /* 42E54 80052654 C000A28C */  lw         $v0, 0xC0($a1)
    /* 42E58 80052658 00000000 */  nop
    /* 42E5C 8005265C 03008214 */  bne        $a0, $v0, .L8005266C
    /* 42E60 80052660 00000000 */   nop
    /* 42E64 80052664 7600A0A0 */  sb         $zero, 0x76($a1)
    /* 42E68 80052668 C000A0AC */  sw         $zero, 0xC0($a1)
  .L8005266C:
    /* 42E6C 8005266C 0800E003 */  jr         $ra
    /* 42E70 80052670 00000000 */   nop
.size func_80052644, . - func_80052644
