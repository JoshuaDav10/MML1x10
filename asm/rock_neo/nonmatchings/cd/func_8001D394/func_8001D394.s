.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D394
    /* DB94 8001D394 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DB98 8001D398 0B80023C */  lui        $v0, %hi(D_800AD142)
    /* DB9C 8001D39C 42D14294 */  lhu        $v0, %lo(D_800AD142)($v0)
    /* DBA0 8001D3A0 0B80033C */  lui        $v1, %hi(D_800AD140)
    /* DBA4 8001D3A4 40D16324 */  addiu      $v1, $v1, %lo(D_800AD140)
    /* DBA8 8001D3A8 01004230 */  andi       $v0, $v0, 0x1
    /* DBAC 8001D3AC 0B004010 */  beqz       $v0, .L8001D3DC
    /* DBB0 8001D3B0 1000BFAF */   sw        $ra, 0x10($sp)
    /* DBB4 8001D3B4 0B80013C */  lui        $at, %hi(D_800AD154)
    /* DBB8 8001D3B8 54D124A0 */  sb         $a0, %lo(D_800AD154)($at)
    /* DBBC 8001D3BC 0B80013C */  lui        $at, %hi(D_800AD155)
    /* DBC0 8001D3C0 55D124A0 */  sb         $a0, %lo(D_800AD155)($at)
    /* DBC4 8001D3C4 0B80013C */  lui        $at, %hi(D_800AD156)
    /* DBC8 8001D3C8 56D124A0 */  sb         $a0, %lo(D_800AD156)($at)
    /* DBCC 8001D3CC 0B80013C */  lui        $at, %hi(D_800AD157)
    /* DBD0 8001D3D0 57D124A0 */  sb         $a0, %lo(D_800AD157)($at)
    /* DBD4 8001D3D4 FF740008 */  j          .L8001D3FC
    /* DBD8 8001D3D8 00000000 */   nop
  .L8001D3DC:
    /* DBDC 8001D3DC 0B80013C */  lui        $at, %hi(D_800AD154)
    /* DBE0 8001D3E0 54D124A0 */  sb         $a0, %lo(D_800AD154)($at)
    /* DBE4 8001D3E4 0B80013C */  lui        $at, %hi(D_800AD155)
    /* DBE8 8001D3E8 55D120A0 */  sb         $zero, %lo(D_800AD155)($at)
    /* DBEC 8001D3EC 0B80013C */  lui        $at, %hi(D_800AD156)
    /* DBF0 8001D3F0 56D124A0 */  sb         $a0, %lo(D_800AD156)($at)
    /* DBF4 8001D3F4 0B80013C */  lui        $at, %hi(D_800AD157)
    /* DBF8 8001D3F8 57D120A0 */  sb         $zero, %lo(D_800AD157)($at)
  .L8001D3FC:
    /* DBFC 8001D3FC 79DF010C */  jal        CdMix
    /* DC00 8001D400 14006424 */   addiu     $a0, $v1, 0x14
    /* DC04 8001D404 1000BF8F */  lw         $ra, 0x10($sp)
    /* DC08 8001D408 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DC0C 8001D40C 0800E003 */  jr         $ra
    /* DC10 8001D410 00000000 */   nop
.size func_8001D394, . - func_8001D394
