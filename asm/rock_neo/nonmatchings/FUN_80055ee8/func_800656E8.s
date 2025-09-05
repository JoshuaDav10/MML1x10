.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800656E8
    /* 55EE8 800656E8 1800A38F */  lw         $v1, 0x18($sp)
    /* 55EEC 800656EC 26104600 */  xor        $v0, $v0, $a2
    /* 55EF0 800656F0 21104300 */  addu       $v0, $v0, $v1
    /* 55EF4 800656F4 FC0122AE */  sw         $v0, 0x1FC($s1)
  .L800656F8:
    /* 55EF8 800656F8 000000AD */  sw         $zero, 0x0($t0)
    /* 55EFC 800656FC 0100E724 */  addiu      $a3, $a3, 0x1
.size func_800656E8, . - func_800656E8
