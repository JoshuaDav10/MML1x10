.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E144
    /* 4E944 8005E144 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 4E948 8005E148 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 4E94C 8005E14C 6800BEAF */  sw         $fp, 0x68($sp)
    /* 4E950 8005E150 6400B7AF */  sw         $s7, 0x64($sp)
    /* 4E954 8005E154 6000B6AF */  sw         $s6, 0x60($sp)
    /* 4E958 8005E158 5C00B5AF */  sw         $s5, 0x5C($sp)
.size func_8005E144, . - func_8005E144
