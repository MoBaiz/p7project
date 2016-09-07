/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x16fbe694 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "K:/Users/mobai/Desktop/ise/p7project/ADDRsel.v";
static unsigned int ng1[] = {32512U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};



static void Cont_5_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t11[8];
    char t25[8];
    char t41[8];
    char t49[8];
    char *t1;
    char *t2;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(5, ng0);
    t2 = (t0 + 1048U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB4:    t9 = (t2 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t6) < *((unsigned int *)t2))
        goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;

LAB7:    memset(t11, 0, 8);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t7);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t12) != 0)
        goto LAB11;

LAB12:    t19 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB13;

LAB14:    memcpy(t49, t11, 8);

LAB15:    memset(t4, 0, 8);
    t81 = (t49 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t49);
    t85 = (t84 & t83);
    t86 = (t85 & 1U);
    if (t86 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t81) != 0)
        goto LAB29;

LAB30:    t88 = (t4 + 4);
    t89 = *((unsigned int *)t4);
    t90 = *((unsigned int *)t88);
    t91 = (t89 || t90);
    if (t91 > 0)
        goto LAB31;

LAB32:    t93 = *((unsigned int *)t4);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (t94 || t95);
    if (t96 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t88) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t4) > 0)
        goto LAB37;

LAB38:    memcpy(t3, t97, 8);

LAB39:    t98 = (t0 + 2928);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    memset(t102, 0, 8);
    t103 = 1U;
    t104 = t103;
    t105 = (t3 + 4);
    t106 = *((unsigned int *)t3);
    t103 = (t103 & t106);
    t107 = *((unsigned int *)t105);
    t104 = (t104 & t107);
    t108 = (t102 + 4);
    t109 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t109 | t103);
    t110 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t110 | t104);
    xsi_driver_vfirst_trans(t98, 0, 0);
    t111 = (t0 + 2848);
    *((int *)t111) = 1;

LAB1:    return;
LAB5:    t10 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t11) = 1;
    goto LAB12;

LAB11:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB12;

LAB13:    t23 = (t0 + 1208U);
    t24 = *((char **)t23);
    t23 = ((char*)((ng2)));
    memset(t25, 0, 8);
    t26 = (t24 + 4);
    t27 = (t23 + 4);
    t28 = *((unsigned int *)t24);
    t29 = *((unsigned int *)t23);
    t30 = (t28 ^ t29);
    t31 = *((unsigned int *)t26);
    t32 = *((unsigned int *)t27);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t35 = *((unsigned int *)t26);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB19;

LAB16:    if (t37 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t25) = 1;

LAB19:    memset(t41, 0, 8);
    t42 = (t25 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t25);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t42) != 0)
        goto LAB22;

LAB23:    t50 = *((unsigned int *)t11);
    t51 = *((unsigned int *)t41);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t11 + 4);
    t54 = (t41 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB18:    t40 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t41) = 1;
    goto LAB23;

LAB22:    t48 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB23;

LAB24:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t11 + 4);
    t64 = (t41 + 4);
    t65 = *((unsigned int *)t11);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t41);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB26;

LAB27:    *((unsigned int *)t4) = 1;
    goto LAB30;

LAB29:    t87 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t87) = 1;
    goto LAB30;

LAB31:    t92 = ((char*)((ng2)));
    goto LAB32;

LAB33:    t97 = ((char*)((ng3)));
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t3, 32, t92, 32, t97, 32);
    goto LAB39;

LAB37:    memcpy(t3, t92, 8);
    goto LAB39;

}


extern void work_m_00000000000257941588_1968985345_init()
{
	static char *pe[] = {(void *)Cont_5_0};
	xsi_register_didat("work_m_00000000000257941588_1968985345", "isim/p7_tb_isim_beh.exe.sim/work/m_00000000000257941588_1968985345.didat");
	xsi_register_executes(pe);
}
