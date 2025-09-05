.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B5D8
    /* 4BDD8 8005B5D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4BDDC 8005B5DC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4BDE0 8005B5E0 801F143C */  lui        $s4, (0x1F800070 >> 16)
    /* 4BDE4 8005B5E4 70009436 */  ori        $s4, $s4, (0x1F800070 & 0xFFFF)
    /* 4BDE8 8005B5E8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4BDEC 8005B5EC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4BDF0 8005B5F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4BDF4 8005B5F4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4BDF8 8005B5F8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4BDFC 8005B5FC 0000838E */  lw         $v1, 0x0($s4)
.size func_8005B5D8, . - func_8005B5D8
