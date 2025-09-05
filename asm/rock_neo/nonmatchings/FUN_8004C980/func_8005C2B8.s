.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C2B8
    /* 4CAB8 8005C2B8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4CABC 8005C2BC 0C80043C */  lui        $a0, %hi(D_800BBD9C)
    /* 4CAC0 8005C2C0 9CBD8424 */  addiu      $a0, $a0, %lo(D_800BBD9C)
    /* 4CAC4 8005C2C4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4CAC8 8005C2C8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4CACC 8005C2CC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4CAD0 8005C2D0 1A72010C */  jal        func_8005C868
    /* 4CAD4 8005C2D4 2000B0AF */   sw        $s0, 0x20($sp)
    /* 4CAD8 8005C2D8 0C80023C */  lui        $v0, %hi(D_800BBD94)
    /* 4CADC 8005C2DC 94BD4284 */  lh         $v0, %lo(D_800BBD94)($v0)
    /* 4CAE0 8005C2E0 00000000 */  nop
    /* 4CAE4 8005C2E4 04004018 */  blez       $v0, .L8005C2F8
    /* 4CAE8 8005C2E8 21184000 */   addu      $v1, $v0, $zero
    /* 4CAEC 8005C2EC FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4CAF0 8005C2F0 0C80013C */  lui        $at, %hi(D_800BBD94)
    /* 4CAF4 8005C2F4 94BD22A4 */  sh         $v0, %lo(D_800BBD94)($at)
  .L8005C2F8:
    /* 4CAF8 8005C2F8 0C80023C */  lui        $v0, %hi(D_800BBD96)
    /* 4CAFC 8005C2FC 96BD4284 */  lh         $v0, %lo(D_800BBD96)($v0)
    /* 4CB00 8005C300 00000000 */  nop
    /* 4CB04 8005C304 04004018 */  blez       $v0, .L8005C318
    /* 4CB08 8005C308 21184000 */   addu      $v1, $v0, $zero
    /* 4CB0C 8005C30C FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4CB10 8005C310 0C80013C */  lui        $at, %hi(D_800BBD96)
    /* 4CB14 8005C314 96BD22A4 */  sh         $v0, %lo(D_800BBD96)($at)
  .L8005C318:
    /* 4CB18 8005C318 0C80023C */  lui        $v0, (0x800C0000 >> 16)
.size func_8005C2B8, . - func_8005C2B8
