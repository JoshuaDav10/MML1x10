.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053158
    /* 43958 80053158 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 4395C 8005315C 7000B0AF */  sw         $s0, 0x70($sp)
    /* 43960 80053160 2180A000 */  addu       $s0, $a1, $zero
    /* 43964 80053164 8400BFAF */  sw         $ra, 0x84($sp)
    /* 43968 80053168 8000B4AF */  sw         $s4, 0x80($sp)
    /* 4396C 8005316C 7C00B3AF */  sw         $s3, 0x7C($sp)
.size func_80053158, . - func_80053158
