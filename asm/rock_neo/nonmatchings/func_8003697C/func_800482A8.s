.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800482A8
    /* 38AA8 800482A8 0B80033C */  lui        $v1, %hi(Player_work + 0x9)
    /* 38AAC 800482AC B9516390 */  lbu        $v1, %lo(Player_work + 0x9)($v1)
    /* 38AB0 800482B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 38AB4 800482B4 21006214 */  bne        $v1, $v0, .L8004833C
    /* 38AB8 800482B8 02000224 */   addiu     $v0, $zero, 0x2
    /* 38ABC 800482BC 03008290 */  lbu        $v0, 0x3($a0)
    /* 38AC0 800482C0 00000000 */  nop
    /* 38AC4 800482C4 0D004010 */  beqz       $v0, .L800482FC
    /* 38AC8 800482C8 00000000 */   nop
    /* 38ACC 800482CC 0B80033C */  lui        $v1, %hi(Player_work + 0x11C)
    /* 38AD0 800482D0 CC526394 */  lhu        $v1, %lo(Player_work + 0x11C)($v1)
    /* 38AD4 800482D4 0B80023C */  lui        $v0, %hi(Player_work + 0x12A)
    /* 38AD8 800482D8 DA524294 */  lhu        $v0, %lo(Player_work + 0x12A)($v0)
    /* 38ADC 800482DC 00000000 */  nop
    /* 38AE0 800482E0 24104300 */  and        $v0, $v0, $v1
    /* 38AE4 800482E4 15004010 */  beqz       $v0, .L8004833C
    /* 38AE8 800482E8 02000224 */   addiu     $v0, $zero, 0x2
    /* 38AEC 800482EC 0B80023C */  lui        $v0, %hi(Player_work + 0x128)
    /* 38AF0 800482F0 D8524294 */  lhu        $v0, %lo(Player_work + 0x128)($v0)
    /* 38AF4 800482F4 CB200108 */  j          .L8004832C
    /* 38AF8 800482F8 24104300 */   and       $v0, $v0, $v1
  .L800482FC:
    /* 38AFC 800482FC 0B80033C */  lui        $v1, %hi(Player_work + 0x11C)
    /* 38B00 80048300 CC526394 */  lhu        $v1, %lo(Player_work + 0x11C)($v1)
    /* 38B04 80048304 0B80023C */  lui        $v0, %hi(Player_work + 0x128)
    /* 38B08 80048308 D8524294 */  lhu        $v0, %lo(Player_work + 0x128)($v0)
    /* 38B0C 8004830C 00000000 */  nop
    /* 38B10 80048310 24104300 */  and        $v0, $v0, $v1
    /* 38B14 80048314 09004010 */  beqz       $v0, .L8004833C
    /* 38B18 80048318 02000224 */   addiu     $v0, $zero, 0x2
    /* 38B1C 8004831C 0B80023C */  lui        $v0, %hi(Player_work + 0x12A)
    /* 38B20 80048320 DA524294 */  lhu        $v0, %lo(Player_work + 0x12A)($v0)
    /* 38B24 80048324 00000000 */  nop
    /* 38B28 80048328 24104300 */  and        $v0, $v0, $v1
  .L8004832C:
    /* 38B2C 8004832C 06004010 */  beqz       $v0, .L80048348
    /* 38B30 80048330 01000224 */   addiu     $v0, $zero, 0x1
    /* 38B34 80048334 D3200108 */  j          .L8004834C
    /* 38B38 80048338 00000000 */   nop
  .L8004833C:
    /* 38B3C 8004833C 080082A0 */  sb         $v0, 0x8($a0)
    /* 38B40 80048340 D3200108 */  j          .L8004834C
    /* 38B44 80048344 01000224 */   addiu     $v0, $zero, 0x1
  .L80048348:
    /* 38B48 80048348 21100000 */  addu       $v0, $zero, $zero
  .L8004834C:
    /* 38B4C 8004834C 0800E003 */  jr         $ra
    /* 38B50 80048350 00000000 */   nop
.size func_800482A8, . - func_800482A8
