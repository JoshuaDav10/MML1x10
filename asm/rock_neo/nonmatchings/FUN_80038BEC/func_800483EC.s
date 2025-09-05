.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800483EC
    /* 38BEC 800483EC 40100200 */  sll        $v0, $v0, 1
    /* 38BF0 800483F0 0980013C */  lui        $at, %hi(D_8008A748)
    /* 38BF4 800483F4 21082200 */  addu       $at, $at, $v0
    /* 38BF8 800483F8 48A72294 */  lhu        $v0, %lo(D_8008A748)($at)
    /* 38BFC 800483FC 0D00A380 */  lb         $v1, 0xD($a1)
    /* 38C00 80048400 2200A2A0 */  sb         $v0, 0x22($a1)
    /* 38C04 80048404 40100300 */  sll        $v0, $v1, 1
    /* 38C08 80048408 21104300 */  addu       $v0, $v0, $v1
    /* 38C0C 8004840C 40100200 */  sll        $v0, $v0, 1
    /* 38C10 80048410 0980013C */  lui        $at, %hi(D_8008A74A)
    /* 38C14 80048414 21082200 */  addu       $at, $at, $v0
    /* 38C18 80048418 4AA72294 */  lhu        $v0, %lo(D_8008A74A)($at)
    /* 38C1C 8004841C 1D210108 */  j          .L80048474
    /* 38C20 80048420 2300A2A0 */   sb        $v0, 0x23($a1)
  .L80048424:
    /* 38C24 80048424 0980023C */  lui        $v0, %hi(D_8008A734)
    /* 38C28 80048428 34A74290 */  lbu        $v0, %lo(D_8008A734)($v0)
    /* 38C2C 8004842C 0D00A380 */  lb         $v1, 0xD($a1)
    /* 38C30 80048430 0E00A2A0 */  sb         $v0, 0xE($a1)
    /* 38C34 80048434 40100300 */  sll        $v0, $v1, 1
.size func_800483EC, . - func_800483EC
