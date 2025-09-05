.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C31C
    /* 4CB1C 8005C31C 484C4290 */  lbu        $v0, 0x4C48($v0)
    /* 4CB20 8005C320 A407838F */  lw         $v1, %gp_rel(D_80098008)($gp)
    /* 4CB24 8005C324 B41280AF */  sw         $zero, %gp_rel(D_80098B18)($gp)
    /* 4CB28 8005C328 07006210 */  beq        $v1, $v0, .L8005C348
    /* 4CB2C 8005C32C 00000000 */   nop
    /* 4CB30 8005C330 04006010 */  beqz       $v1, .L8005C344
    /* 4CB34 8005C334 03000224 */   addiu     $v0, $zero, 0x3
    /* 4CB38 8005C338 A80782AF */  sw         $v0, %gp_rel(D_8009800C)($gp)
    /* 4CB3C 8005C33C D2700108 */  j          .L8005C348
    /* 4CB40 8005C340 00000000 */   nop
  .L8005C344:
    /* 4CB44 8005C344 A80780AF */  sw         $zero, %gp_rel(D_8009800C)($gp)
  .L8005C348:
    /* 4CB48 8005C348 0C80023C */  lui        $v0, %hi(Scene_work)
    /* 4CB4C 8005C34C 484C4290 */  lbu        $v0, %lo(Scene_work)($v0)
    /* 4CB50 8005C350 A807838F */  lw         $v1, %gp_rel(D_8009800C)($gp)
    /* 4CB54 8005C354 A40782AF */  sw         $v0, %gp_rel(D_80098008)($gp)
    /* 4CB58 8005C358 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4CB5C 8005C35C 07004010 */  beqz       $v0, .L8005C37C
    /* 4CB60 8005C360 80100300 */   sll       $v0, $v1, 2
    /* 4CB64 8005C364 0180013C */  lui        $at, %hi(jtbl_800111E4)
    /* 4CB68 8005C368 21082200 */  addu       $at, $at, $v0
    /* 4CB6C 8005C36C E411228C */  lw         $v0, %lo(jtbl_800111E4)($at)
    /* 4CB70 8005C370 00000000 */  nop
    /* 4CB74 8005C374 08004000 */  jr         $v0
    /* 4CB78 8005C378 00000000 */   nop
  glabel .L8005C37C
    /* 4CB7C 8005C37C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 4CB80 8005C380 01000424 */  addiu      $a0, $zero, 0x1
    /* 4CB84 8005C384 AC0782AF */  sw         $v0, %gp_rel(D_80098010)($gp)
    /* 4CB88 8005C388 01000224 */  addiu      $v0, $zero, 0x1
    /* 4CB8C 8005C38C 0C80013C */  lui        $at, %hi(D_800BBD86)
    /* 4CB90 8005C390 86BD22A0 */  sb         $v0, %lo(D_800BBD86)($at)
    /* 4CB94 8005C394 0C80013C */  lui        $at, %hi(D_800BBDAA)
    /* 4CB98 8005C398 AABD22A0 */  sb         $v0, %lo(D_800BBDAA)($at)
    /* 4CB9C 8005C39C 0C80013C */  lui        $at, %hi(D_800BBDCE)
    /* 4CBA0 8005C3A0 CEBD22A0 */  sb         $v0, %lo(D_800BBDCE)($at)
    /* 4CBA4 8005C3A4 0C80013C */  lui        $at, %hi(D_800BBDF2)
    /* 4CBA8 8005C3A8 F2BD22A0 */  sb         $v0, %lo(D_800BBDF2)($at)
    /* 4CBAC 8005C3AC 0C80013C */  lui        $at, %hi(D_800BBE16)
    /* 4CBB0 8005C3B0 16BE22A0 */  sb         $v0, %lo(D_800BBE16)($at)
    /* 4CBB4 8005C3B4 0C80013C */  lui        $at, %hi(D_800BBE3A)
    /* 4CBB8 8005C3B8 3ABE22A0 */  sb         $v0, %lo(D_800BBE3A)($at)
    /* 4CBBC 8005C3BC 08000224 */  addiu      $v0, $zero, 0x8
    /* 4CBC0 8005C3C0 0C80013C */  lui        $at, %hi(D_800BBD8C)
    /* 4CBC4 8005C3C4 8CBD22A4 */  sh         $v0, %lo(D_800BBD8C)($at)
    /* 4CBC8 8005C3C8 88000224 */  addiu      $v0, $zero, 0x88
    /* 4CBCC 8005C3CC 0C80013C */  lui        $at, %hi(D_800BBD8E)
    /* 4CBD0 8005C3D0 8EBD22A4 */  sh         $v0, %lo(D_800BBD8E)($at)
    /* 4CBD4 8005C3D4 18010224 */  addiu      $v0, $zero, 0x118
    /* 4CBD8 8005C3D8 0C80013C */  lui        $at, %hi(D_800BBDB0)
    /* 4CBDC 8005C3DC B0BD22A4 */  sh         $v0, %lo(D_800BBDB0)($at)
    /* 4CBE0 8005C3E0 BE000224 */  addiu      $v0, $zero, 0xBE
    /* 4CBE4 8005C3E4 20010324 */  addiu      $v1, $zero, 0x120
    /* 4CBE8 8005C3E8 0C80013C */  lui        $at, %hi(D_800BBDB2)
    /* 4CBEC 8005C3EC B2BD22A4 */  sh         $v0, %lo(D_800BBDB2)($at)
    /* 4CBF0 8005C3F0 10000224 */  addiu      $v0, $zero, 0x10
    /* 4CBF4 8005C3F4 0C80013C */  lui        $at, %hi(D_800BBDD6)
    /* 4CBF8 8005C3F8 D6BD22A4 */  sh         $v0, %lo(D_800BBDD6)($at)
    /* 4CBFC 8005C3FC 0C80013C */  lui        $at, %hi(D_800BBDFA)
    /* 4CC00 8005C400 FABD22A4 */  sh         $v0, %lo(D_800BBDFA)($at)
    /* 4CC04 8005C404 0C80013C */  lui        $at, %hi(D_800BBE1E)
    /* 4CC08 8005C408 1EBE22A4 */  sh         $v0, %lo(D_800BBE1E)($at)
    /* 4CC0C 8005C40C 18000224 */  addiu      $v0, $zero, 0x18
    /* 4CC10 8005C410 0C80013C */  lui        $at, %hi(D_800BBE42)
    /* 4CC14 8005C414 42BE22A4 */  sh         $v0, %lo(D_800BBE42)($at)
    /* 4CC18 8005C418 08000224 */  addiu      $v0, $zero, 0x8
    /* 4CC1C 8005C41C B00782AF */  sw         $v0, %gp_rel(D_80098014)($gp)
    /* 4CC20 8005C420 60000224 */  addiu      $v0, $zero, 0x60
    /* 4CC24 8005C424 A80784AF */  sw         $a0, %gp_rel(D_8009800C)($gp)
    /* 4CC28 8005C428 0C80013C */  lui        $at, %hi(D_800BBDD4)
    /* 4CC2C 8005C42C D4BD23A4 */  sh         $v1, %lo(D_800BBDD4)($at)
    /* 4CC30 8005C430 0C80013C */  lui        $at, %hi(D_800BBDF8)
    /* 4CC34 8005C434 F8BD23A4 */  sh         $v1, %lo(D_800BBDF8)($at)
    /* 4CC38 8005C438 0C80013C */  lui        $at, %hi(D_800BBE1C)
    /* 4CC3C 8005C43C 1CBE23A4 */  sh         $v1, %lo(D_800BBE1C)($at)
    /* 4CC40 8005C440 0C80013C */  lui        $at, %hi(D_800BBE40)
    /* 4CC44 8005C444 40BE20A4 */  sh         $zero, %lo(D_800BBE40)($at)
    /* 4CC48 8005C448 B40782AF */  sw         $v0, %gp_rel(D_80098018)($gp)
    /* 4CC4C 8005C44C B80784AF */  sw         $a0, %gp_rel(D_8009801C)($gp)
    /* 4CC50 8005C450 82710108 */  j          .L8005C608
    /* 4CC54 8005C454 00000000 */   nop
  glabel .L8005C458
    /* 4CC58 8005C458 AC07828F */  lw         $v0, %gp_rel(D_80098010)($gp)
    /* 4CC5C 8005C45C 00000000 */  nop
    /* 4CC60 8005C460 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 4CC64 8005C464 AC0783AF */  sw         $v1, %gp_rel(D_80098010)($gp)
    /* 4CC68 8005C468 04004010 */  beqz       $v0, .L8005C47C
    /* 4CC6C 8005C46C 0A000224 */   addiu     $v0, $zero, 0xA
    /* 4CC70 8005C470 23104300 */  subu       $v0, $v0, $v1
    /* 4CC74 8005C474 5D710108 */  j          .L8005C574
    /* 4CC78 8005C478 C0200200 */   sll       $a0, $v0, 3
  .L8005C47C:
    /* 4CC7C 8005C47C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4CC80 8005C480 A80782AF */  sw         $v0, %gp_rel(D_8009800C)($gp)
    /* 4CC84 8005C484 82710108 */  j          .L8005C608
    /* 4CC88 8005C488 00000000 */   nop
  glabel .L8005C48C
    /* 4CC8C 8005C48C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 4CC90 8005C490 AC0782AF */  sw         $v0, %gp_rel(D_80098010)($gp)
    /* 4CC94 8005C494 04000224 */  addiu      $v0, $zero, 0x4
    /* 4CC98 8005C498 A80782AF */  sw         $v0, %gp_rel(D_8009800C)($gp)
    /* 4CC9C 8005C49C 01000224 */  addiu      $v0, $zero, 0x1
    /* 4CCA0 8005C4A0 B8FF0424 */  addiu      $a0, $zero, -0x48
    /* 4CCA4 8005C4A4 0C80013C */  lui        $at, %hi(D_800BBD86)
    /* 4CCA8 8005C4A8 86BD22A0 */  sb         $v0, %lo(D_800BBD86)($at)
    /* 4CCAC 8005C4AC 0C80013C */  lui        $at, %hi(D_800BBDAA)
    /* 4CCB0 8005C4B0 AABD22A0 */  sb         $v0, %lo(D_800BBDAA)($at)
    /* 4CCB4 8005C4B4 0C80013C */  lui        $at, %hi(D_800BBDCE)
    /* 4CCB8 8005C4B8 CEBD22A0 */  sb         $v0, %lo(D_800BBDCE)($at)
    /* 4CCBC 8005C4BC 0C80013C */  lui        $at, %hi(D_800BBDF2)
    /* 4CCC0 8005C4C0 F2BD22A0 */  sb         $v0, %lo(D_800BBDF2)($at)
    /* 4CCC4 8005C4C4 0C80013C */  lui        $at, %hi(D_800BBE16)
    /* 4CCC8 8005C4C8 16BE22A0 */  sb         $v0, %lo(D_800BBE16)($at)
    /* 4CCCC 8005C4CC 0C80013C */  lui        $at, %hi(D_800BBE3A)
    /* 4CCD0 8005C4D0 3ABE22A0 */  sb         $v0, %lo(D_800BBE3A)($at)
    /* 4CCD4 8005C4D4 88000224 */  addiu      $v0, $zero, 0x88
    /* 4CCD8 8005C4D8 0C80013C */  lui        $at, %hi(D_800BBD8E)
    /* 4CCDC 8005C4DC 8EBD22A4 */  sh         $v0, %lo(D_800BBD8E)($at)
    /* 4CCE0 8005C4E0 68010224 */  addiu      $v0, $zero, 0x168
    /* 4CCE4 8005C4E4 0C80013C */  lui        $at, %hi(D_800BBDB0)
    /* 4CCE8 8005C4E8 B0BD22A4 */  sh         $v0, %lo(D_800BBDB0)($at)
    /* 4CCEC 8005C4EC BE000224 */  addiu      $v0, $zero, 0xBE
    /* 4CCF0 8005C4F0 70010324 */  addiu      $v1, $zero, 0x170
    /* 4CCF4 8005C4F4 0C80013C */  lui        $at, %hi(D_800BBDB2)
    /* 4CCF8 8005C4F8 B2BD22A4 */  sh         $v0, %lo(D_800BBDB2)($at)
    /* 4CCFC 8005C4FC 10000224 */  addiu      $v0, $zero, 0x10
    /* 4CD00 8005C500 0C80013C */  lui        $at, %hi(D_800BBDD6)
    /* 4CD04 8005C504 D6BD22A4 */  sh         $v0, %lo(D_800BBDD6)($at)
    /* 4CD08 8005C508 0C80013C */  lui        $at, %hi(D_800BBDFA)
    /* 4CD0C 8005C50C FABD22A4 */  sh         $v0, %lo(D_800BBDFA)($at)
    /* 4CD10 8005C510 0C80013C */  lui        $at, %hi(D_800BBE1E)
    /* 4CD14 8005C514 1EBE22A4 */  sh         $v0, %lo(D_800BBE1E)($at)
    /* 4CD18 8005C518 B0FF0224 */  addiu      $v0, $zero, -0x50
    /* 4CD1C 8005C51C 0C80013C */  lui        $at, %hi(D_800BBE40)
    /* 4CD20 8005C520 40BE22A4 */  sh         $v0, %lo(D_800BBE40)($at)
    /* 4CD24 8005C524 18000224 */  addiu      $v0, $zero, 0x18
    /* 4CD28 8005C528 0C80013C */  lui        $at, %hi(D_800BBD8C)
    /* 4CD2C 8005C52C 8CBD24A4 */  sh         $a0, %lo(D_800BBD8C)($at)
    /* 4CD30 8005C530 0C80013C */  lui        $at, %hi(D_800BBDD4)
    /* 4CD34 8005C534 D4BD23A4 */  sh         $v1, %lo(D_800BBDD4)($at)
    /* 4CD38 8005C538 0C80013C */  lui        $at, %hi(D_800BBDF8)
    /* 4CD3C 8005C53C F8BD23A4 */  sh         $v1, %lo(D_800BBDF8)($at)
    /* 4CD40 8005C540 0C80013C */  lui        $at, %hi(D_800BBE1C)
    /* 4CD44 8005C544 1CBE23A4 */  sh         $v1, %lo(D_800BBE1C)($at)
    /* 4CD48 8005C548 0C80013C */  lui        $at, %hi(D_800BBE42)
    /* 4CD4C 8005C54C 42BE22A4 */  sh         $v0, %lo(D_800BBE42)($at)
    /* 4CD50 8005C550 B00784AF */  sw         $a0, %gp_rel(D_80098014)($gp)
    /* 4CD54 8005C554 82710108 */  j          .L8005C608
    /* 4CD58 8005C558 00000000 */   nop
  glabel .L8005C55C
    /* 4CD5C 8005C55C AC07828F */  lw         $v0, %gp_rel(D_80098010)($gp)
    /* 4CD60 8005C560 00000000 */  nop
    /* 4CD64 8005C564 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 4CD68 8005C568 AC0783AF */  sw         $v1, %gp_rel(D_80098010)($gp)
    /* 4CD6C 8005C56C 15004010 */  beqz       $v0, .L8005C5C4
    /* 4CD70 8005C570 C0200300 */   sll       $a0, $v1, 3
  .L8005C574:
    /* 4CD74 8005C574 08000324 */  addiu      $v1, $zero, 0x8
    /* 4CD78 8005C578 23186400 */  subu       $v1, $v1, $a0
    /* 4CD7C 8005C57C 18018224 */  addiu      $v0, $a0, 0x118
    /* 4CD80 8005C580 0C80013C */  lui        $at, %hi(D_800BBDB0)
    /* 4CD84 8005C584 B0BD22A4 */  sh         $v0, %lo(D_800BBDB0)($at)
    /* 4CD88 8005C588 20018224 */  addiu      $v0, $a0, 0x120
    /* 4CD8C 8005C58C 0C80013C */  lui        $at, %hi(D_800BBDD4)
    /* 4CD90 8005C590 D4BD22A4 */  sh         $v0, %lo(D_800BBDD4)($at)
    /* 4CD94 8005C594 0C80013C */  lui        $at, %hi(D_800BBDF8)
    /* 4CD98 8005C598 F8BD22A4 */  sh         $v0, %lo(D_800BBDF8)($at)
    /* 4CD9C 8005C59C 0C80013C */  lui        $at, %hi(D_800BBE1C)
    /* 4CDA0 8005C5A0 1CBE22A4 */  sh         $v0, %lo(D_800BBE1C)($at)
    /* 4CDA4 8005C5A4 23100400 */  negu       $v0, $a0
    /* 4CDA8 8005C5A8 0C80013C */  lui        $at, %hi(D_800BBD8C)
    /* 4CDAC 8005C5AC 8CBD23A4 */  sh         $v1, %lo(D_800BBD8C)($at)
    /* 4CDB0 8005C5B0 0C80013C */  lui        $at, %hi(D_800BBE40)
    /* 4CDB4 8005C5B4 40BE22A4 */  sh         $v0, %lo(D_800BBE40)($at)
    /* 4CDB8 8005C5B8 B00783AF */  sw         $v1, %gp_rel(D_80098014)($gp)
    /* 4CDBC 8005C5BC 82710108 */  j          .L8005C608
    /* 4CDC0 8005C5C0 00000000 */   nop
  .L8005C5C4:
    /* 4CDC4 8005C5C4 05000224 */  addiu      $v0, $zero, 0x5
    /* 4CDC8 8005C5C8 A80782AF */  sw         $v0, %gp_rel(D_8009800C)($gp)
    /* 4CDCC 8005C5CC 82710108 */  j          .L8005C608
    /* 4CDD0 8005C5D0 00000000 */   nop
  glabel .L8005C5D4
    /* 4CDD4 8005C5D4 0C80013C */  lui        $at, %hi(D_800BBD86)
    /* 4CDD8 8005C5D8 86BD20A0 */  sb         $zero, %lo(D_800BBD86)($at)
    /* 4CDDC 8005C5DC 0C80013C */  lui        $at, %hi(D_800BBDAA)
    /* 4CDE0 8005C5E0 AABD20A0 */  sb         $zero, %lo(D_800BBDAA)($at)
    /* 4CDE4 8005C5E4 0C80013C */  lui        $at, %hi(D_800BBDCE)
    /* 4CDE8 8005C5E8 CEBD20A0 */  sb         $zero, %lo(D_800BBDCE)($at)
    /* 4CDEC 8005C5EC 0C80013C */  lui        $at, %hi(D_800BBDF2)
    /* 4CDF0 8005C5F0 F2BD20A0 */  sb         $zero, %lo(D_800BBDF2)($at)
    /* 4CDF4 8005C5F4 0C80013C */  lui        $at, %hi(D_800BBE16)
    /* 4CDF8 8005C5F8 16BE20A0 */  sb         $zero, %lo(D_800BBE16)($at)
    /* 4CDFC 8005C5FC 0C80013C */  lui        $at, %hi(D_800BBE3A)
    /* 4CE00 8005C600 3ABE20A0 */  sb         $zero, %lo(D_800BBE3A)($at)
    /* 4CE04 8005C604 B80780AF */  sw         $zero, %gp_rel(D_8009801C)($gp)
  .L8005C608:
    /* 4CE08 8005C608 0C80103C */  lui        $s0, %hi(D_800BBD78)
    /* 4CE0C 8005C60C 78BD1026 */  addiu      $s0, $s0, %lo(D_800BBD78)
    /* 4CE10 8005C610 00000292 */  lbu        $v0, 0x0($s0)
    /* 4CE14 8005C614 00000000 */  nop
    /* 4CE18 8005C618 01004230 */  andi       $v0, $v0, 0x1
    /* 4CE1C 8005C61C 03004010 */  beqz       $v0, .L8005C62C
    /* 4CE20 8005C620 00000000 */   nop
.size func_8005C31C, . - func_8005C31C
