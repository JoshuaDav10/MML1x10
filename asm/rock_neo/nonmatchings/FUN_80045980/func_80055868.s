.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055868
    /* 46068 80055868 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4606C 8005586C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 46070 80055870 21908000 */  addu       $s2, $a0, $zero
    /* 46074 80055874 3400B3AF */  sw         $s3, 0x34($sp)
    /* 46078 80055878 0A80133C */  lui        $s3, %hi(D_800987B0)
    /* 4607C 8005587C B0877326 */  addiu      $s3, $s3, %lo(D_800987B0)
    /* 46080 80055880 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 46084 80055884 0B80113C */  lui        $s1, %hi(Player_work)
    /* 46088 80055888 B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* 4608C 8005588C 3800BFAF */  sw         $ra, 0x38($sp)
.size func_80055868, . - func_80055868
