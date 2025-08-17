.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F580
    /* FD80 8001F580 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* FD84 8001F584 1000B0AF */  sw         $s0, 0x10($sp)
    /* FD88 8001F588 21808000 */  addu       $s0, $a0, $zero
    /* FD8C 8001F58C 1800B2AF */  sw         $s2, 0x18($sp)
    /* FD90 8001F590 2190C000 */  addu       $s2, $a2, $zero
    /* FD94 8001F594 1400B1AF */  sw         $s1, 0x14($sp)
    /* FD98 8001F598 21880002 */  addu       $s1, $s0, $zero
    /* FD9C 8001F59C 0300A010 */  beqz       $a1, .L8001F5AC
    /* FDA0 8001F5A0 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* FDA4 8001F5A4 FDBE000C */  jal        func_8002FBF4
    /* FDA8 8001F5A8 00000000 */   nop
  .L8001F5AC:
    /* FDAC 8001F5AC 03004012 */  beqz       $s2, .L8001F5BC
    /* FDB0 8001F5B0 00000000 */   nop
    /* FDB4 8001F5B4 0C80013C */  lui        $at, %hi(Game_work + 0x6A)
    /* FDB8 8001F5B8 7A1B31A4 */  sh         $s1, %lo(Game_work + 0x6A)($at)
  .L8001F5BC:
    /* FDBC 8001F5BC 00241000 */  sll        $a0, $s0, 16
    /* FDC0 8001F5C0 1075000C */  jal        Cd_read_comb
    /* FDC4 8001F5C4 03240400 */   sra       $a0, $a0, 16
    /* FDC8 8001F5C8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* FDCC 8001F5CC 1800B28F */  lw         $s2, 0x18($sp)
    /* FDD0 8001F5D0 1400B18F */  lw         $s1, 0x14($sp)
    /* FDD4 8001F5D4 1000B08F */  lw         $s0, 0x10($sp)
    /* FDD8 8001F5D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* FDDC 8001F5DC 0800E003 */  jr         $ra
    /* FDE0 8001F5E0 00000000 */   nop
.size func_8001F580, . - func_8001F580
