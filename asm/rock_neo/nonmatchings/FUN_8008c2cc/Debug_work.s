.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Debug_work
    /* B5410 800C4C10 00000000 */  nop
    /* B5414 800C4C14 00000000 */  nop
    /* B5418 800C4C18 00000000 */  nop
    /* B541C 800C4C1C 00000000 */  nop
    /* B5420 800C4C20 00000000 */  nop
    /* B5424 800C4C24 00000000 */  nop
    /* B5428 800C4C28 00000000 */  nop
    /* B542C 800C4C2C 00000000 */  nop
    /* B5430 800C4C30 00000000 */  nop
    /* B5434 800C4C34 00000000 */  nop
    /* B5438 800C4C38 00000000 */  nop
    /* B543C 800C4C3C 00000000 */  nop
    /* B5440 800C4C40 00000000 */  nop
    /* B5444 800C4C44 00000000 */  nop
.size Debug_work, . - Debug_work
