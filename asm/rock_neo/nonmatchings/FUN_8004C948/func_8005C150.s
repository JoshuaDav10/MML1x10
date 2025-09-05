.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C150
    /* 4C950 8005C150 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C954 8005C154 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4C958 8005C158 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C95C 8005C15C 1300A210 */  beq        $a1, $v0, .L8005C1AC
    /* 4C960 8005C160 2118C000 */   addu      $v1, $a2, $zero
    /* 4C964 8005C164 0500A010 */  beqz       $a1, .L8005C17C
    /* 4C968 8005C168 02000224 */   addiu     $v0, $zero, 0x2
    /* 4C96C 8005C16C 1B00A210 */  beq        $a1, $v0, .L8005C1DC
    /* 4C970 8005C170 40100400 */   sll       $v0, $a0, 1
    /* 4C974 8005C174 82700108 */  j          .L8005C208
    /* 4C978 8005C178 00000000 */   nop
  .L8005C17C:
    /* 4C97C 8005C17C 40100400 */  sll        $v0, $a0, 1
.size func_8005C150, . - func_8005C150
