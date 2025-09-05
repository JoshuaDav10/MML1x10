.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058788
    /* 48F88 80058788 4000063C */  lui        $a2, (0x400800 >> 16)
    /* 48F8C 8005878C 1F1A033C */  lui        $v1, (0x1A1F58D1 >> 16)
    /* 48F90 80058790 D1586334 */  ori        $v1, $v1, (0x1A1F58D1 & 0xFFFF)
    /* 48F94 80058794 0C80023C */  lui        $v0, %hi(Moji_work)
    /* 48F98 80058798 B8B64224 */  addiu      $v0, $v0, %lo(Moji_work)
    /* 48F9C 8005879C 23108200 */  subu       $v0, $a0, $v0
    /* 48FA0 800587A0 18004300 */  mult       $v0, $v1
    /* 48FA4 800587A4 72008590 */  lbu        $a1, 0x72($a0)
    /* 48FA8 800587A8 0000828C */  lw         $v0, 0x0($a0)
    /* 48FAC 800587AC 6C00838C */  lw         $v1, 0x6C($a0)
    /* 48FB0 800587B0 0008C634 */  ori        $a2, $a2, (0x400800 & 0xFFFF)
    /* 48FB4 800587B4 BC0080A4 */  sh         $zero, 0xBC($a0)
    /* 48FB8 800587B8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 48FBC 800587BC 25104600 */  or         $v0, $v0, $a2
    /* 48FC0 800587C0 05006324 */  addiu      $v1, $v1, 0x5
    /* 48FC4 800587C4 000082AC */  sw         $v0, 0x0($a0)
    /* 48FC8 800587C8 0200023C */  lui        $v0, (0x20000 >> 16)
    /* 48FCC 800587CC 720085A0 */  sb         $a1, 0x72($a0)
    /* 48FD0 800587D0 6C0083AC */  sw         $v1, 0x6C($a0)
    /* 48FD4 800587D4 12380000 */  mflo       $a3
    /* 48FD8 800587D8 83180700 */  sra        $v1, $a3, 2
    /* 48FDC 800587DC 04106200 */  sllv       $v0, $v0, $v1
    /* 48FE0 800587E0 CC12838F */  lw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 48FE4 800587E4 27100200 */  nor        $v0, $zero, $v0
    /* 48FE8 800587E8 24186200 */  and        $v1, $v1, $v0
    /* 48FEC 800587EC CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 48FF0 800587F0 0800E003 */  jr         $ra
    /* 48FF4 800587F4 01000224 */   addiu     $v0, $zero, 0x1
.size func_80058788, . - func_80058788
