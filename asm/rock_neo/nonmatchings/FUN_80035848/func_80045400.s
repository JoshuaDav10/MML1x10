.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045400
    /* 35C00 80045400 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35C04 80045404 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35C08 80045408 1400BFAF */  sw         $ra, 0x14($sp)
    /* 35C0C 8004540C 94FF010C */  jal        rand
    /* 35C10 80045410 21808000 */   addu      $s0, $a0, $zero
    /* 35C14 80045414 4000048E */  lw         $a0, 0x40($s0)
    /* 35C18 80045418 3F004230 */  andi       $v0, $v0, 0x3F
    /* 35C1C 8004541C 260002A6 */  sh         $v0, 0x26($s0)
    /* 35C20 80045420 08000292 */  lbu        $v0, 0x8($s0)
    /* 35C24 80045424 10000324 */  addiu      $v1, $zero, 0x10
    /* 35C28 80045428 0A0003A2 */  sb         $v1, 0xA($s0)
    /* 35C2C 8004542C 01004224 */  addiu      $v0, $v0, 0x1
    /* 35C30 80045430 18E8010C */  jal        rsin
    /* 35C34 80045434 080002A2 */   sb        $v0, 0x8($s0)
    /* 35C38 80045438 23100200 */  negu       $v0, $v0
    /* 35C3C 8004543C 42120200 */  srl        $v0, $v0, 9
    /* 35C40 80045440 94FF010C */  jal        rand
    /* 35C44 80045444 300002A6 */   sh        $v0, 0x30($s0)
    /* 35C48 80045448 03004230 */  andi       $v0, $v0, 0x3
    /* 35C4C 8004544C 4000048E */  lw         $a0, 0x40($s0)
.size func_80045400, . - func_80045400
