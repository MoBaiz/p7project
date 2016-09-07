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
static const char *ng0 = "K:/Users/mobai/Desktop/ise/p7project/times.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {24U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {11U, 0U};
static unsigned int ng7[] = {26U, 0U};
static unsigned int ng8[] = {9U, 0U};
static unsigned int ng9[] = {40U, 0U};
static unsigned int ng10[] = {8U, 0U};



static void Initial_9_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(10, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3200);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_18_1(char *t0)
{
    char t13[8];
    char t17[8];
    char t33[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;

LAB0:    t1 = (t0 + 5168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 5736);
    *((int *)t2) = 1;
    t3 = (t0 + 5200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(19, ng0);

LAB5:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 2160U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 2320U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t2) != 0)
        goto LAB11;

LAB12:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB13;

LAB14:    memcpy(t41, t13, 8);

LAB15:    t73 = (t41 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2320U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t2) != 0)
        goto LAB33;

LAB34:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB35;

LAB36:    memcpy(t41, t13, 8);

LAB37:    t73 = (t41 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2320U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t2) != 0)
        goto LAB55;

LAB56:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB57;

LAB58:    memcpy(t41, t13, 8);

LAB59:    t73 = (t41 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB71;

LAB72:
LAB73:
LAB51:
LAB29:
LAB8:    xsi_set_current_line(37, ng0);

LAB75:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(20, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB9:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB11:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB13:    t11 = (t0 + 2480U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng1)));
    memset(t17, 0, 8);
    t18 = (t12 + 4);
    t19 = (t11 + 4);
    t20 = *((unsigned int *)t12);
    t21 = *((unsigned int *)t11);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB19;

LAB16:    if (t29 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t17) = 1;

LAB19:    memset(t33, 0, 8);
    t34 = (t17 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t17);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t34) != 0)
        goto LAB22;

LAB23:    t42 = *((unsigned int *)t13);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t13 + 4);
    t46 = (t33 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB18:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t33) = 1;
    goto LAB23;

LAB22:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB23;

LAB24:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t13 + 4);
    t56 = (t33 + 4);
    t57 = *((unsigned int *)t13);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB26;

LAB27:    xsi_set_current_line(22, ng0);

LAB30:    xsi_set_current_line(23, ng0);
    t79 = (t0 + 2640U);
    t80 = *((char **)t79);
    t79 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t79, t80, 0, 0, 32, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 2640U);
    t3 = *((char **)t2);
    t2 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB29;

LAB31:    *((unsigned int *)t13) = 1;
    goto LAB34;

LAB33:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB34;

LAB35:    t11 = (t0 + 2480U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng3)));
    memset(t17, 0, 8);
    t18 = (t12 + 4);
    t19 = (t11 + 4);
    t20 = *((unsigned int *)t12);
    t21 = *((unsigned int *)t11);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB41;

LAB38:    if (t29 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t17) = 1;

LAB41:    memset(t33, 0, 8);
    t34 = (t17 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t17);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t34) != 0)
        goto LAB44;

LAB45:    t42 = *((unsigned int *)t13);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t13 + 4);
    t46 = (t33 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB46;

LAB47:
LAB48:    goto LAB37;

LAB40:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t33) = 1;
    goto LAB45;

LAB44:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB45;

LAB46:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t13 + 4);
    t56 = (t33 + 4);
    t57 = *((unsigned int *)t13);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB48;

LAB49:    xsi_set_current_line(27, ng0);

LAB52:    xsi_set_current_line(28, ng0);
    t79 = (t0 + 2640U);
    t80 = *((char **)t79);
    t79 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t79, t80, 0, 0, 32, 0LL);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB51;

LAB53:    *((unsigned int *)t13) = 1;
    goto LAB56;

LAB55:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB56;

LAB57:    t11 = (t0 + 2480U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng5)));
    memset(t17, 0, 8);
    t18 = (t12 + 4);
    t19 = (t11 + 4);
    t20 = *((unsigned int *)t12);
    t21 = *((unsigned int *)t11);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB63;

LAB60:    if (t29 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t17) = 1;

LAB63:    memset(t33, 0, 8);
    t34 = (t17 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t17);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t34) != 0)
        goto LAB66;

LAB67:    t42 = *((unsigned int *)t13);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t13 + 4);
    t46 = (t33 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB68;

LAB69:
LAB70:    goto LAB59;

LAB62:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB63;

LAB64:    *((unsigned int *)t33) = 1;
    goto LAB67;

LAB66:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB67;

LAB68:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t13 + 4);
    t56 = (t33 + 4);
    t57 = *((unsigned int *)t13);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB70;

LAB71:    xsi_set_current_line(33, ng0);

LAB74:    xsi_set_current_line(34, ng0);
    t79 = (t0 + 2640U);
    t80 = *((char **)t79);
    t79 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t79, t80, 0, 0, 32, 0LL);
    goto LAB73;

}

static void Always_43_2(char *t0)
{
    char t13[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
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
    unsigned int t40;

LAB0:    t1 = (t0 + 5416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5752);
    *((int *)t2) = 1;
    t3 = (t0 + 5448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 3680);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t7, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(47, ng0);

LAB20:    xsi_set_current_line(48, ng0);
    t9 = (t0 + 4000);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t14 = (t11 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB22;

LAB21:    t15 = (t12 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB22;

LAB25:    if (*((unsigned int *)t11) > *((unsigned int *)t12))
        goto LAB23;

LAB24:    t17 = (t13 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (~(t18));
    t20 = *((unsigned int *)t13);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t9);
    t29 = (t21 ^ t22);
    t30 = (t20 | t29);
    t31 = *((unsigned int *)t7);
    t32 = *((unsigned int *)t9);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB32;

LAB29:    if (t33 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t13) = 1;

LAB32:    t11 = (t13 + 4);
    t36 = *((unsigned int *)t11);
    t37 = (~(t36));
    t38 = *((unsigned int *)t13);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB33;

LAB34:
LAB35:
LAB28:    goto LAB19;

LAB9:    xsi_set_current_line(58, ng0);

LAB37:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 3520);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB19;

LAB11:    xsi_set_current_line(64, ng0);

LAB38:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB40;

LAB39:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB40;

LAB43:    if (*((unsigned int *)t5) > *((unsigned int *)t7))
        goto LAB41;

LAB42:    t12 = (t13 + 4);
    t18 = *((unsigned int *)t12);
    t19 = (~(t18));
    t20 = *((unsigned int *)t13);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t7 = (t4 + 4);
    t9 = (t5 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t5);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t9);
    t29 = (t21 ^ t22);
    t30 = (t20 | t29);
    t31 = *((unsigned int *)t7);
    t32 = *((unsigned int *)t9);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB51;

LAB48:    if (t33 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t13) = 1;

LAB51:    t11 = (t13 + 4);
    t36 = *((unsigned int *)t11);
    t37 = (~(t36));
    t38 = *((unsigned int *)t13);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB52;

LAB53:
LAB54:
LAB46:    goto LAB19;

LAB13:    xsi_set_current_line(79, ng0);

LAB56:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3200);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB19;

LAB15:    xsi_set_current_line(85, ng0);

LAB57:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB19;

LAB17:    xsi_set_current_line(90, ng0);

LAB58:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 3520);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4000);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB19;

LAB22:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB24;

LAB23:    *((unsigned int *)t13) = 1;
    goto LAB24;

LAB26:    xsi_set_current_line(49, ng0);
    t23 = (t0 + 4000);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 32, t25, 32, t26, 32);
    t28 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t28, t27, 0, 0, 32, 0LL);
    goto LAB28;

LAB31:    t10 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(51, ng0);

LAB36:    xsi_set_current_line(52, ng0);
    t12 = (t0 + 4000);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 32, t15, 32, t16, 32);
    t17 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t17, t27, 0, 0, 32, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB35;

LAB40:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB42;

LAB41:    *((unsigned int *)t13) = 1;
    goto LAB42;

LAB44:    xsi_set_current_line(66, ng0);

LAB47:    xsi_set_current_line(67, ng0);
    t14 = (t0 + 4000);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 32, t16, 32, t17, 32);
    t23 = (t0 + 4000);
    xsi_vlogvar_assign_value(t23, t27, 0, 0, 32);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB46;

LAB50:    t10 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(72, ng0);

LAB55:    xsi_set_current_line(73, ng0);
    t12 = (t0 + 4000);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 32, t15, 32, t16, 32);
    t17 = (t0 + 4000);
    xsi_vlogvar_assign_value(t17, t27, 0, 0, 32);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB54;

}


extern void work_m_00000000002812938739_0320181985_init()
{
	static char *pe[] = {(void *)Initial_9_0,(void *)Always_18_1,(void *)Always_43_2};
	xsi_register_didat("work_m_00000000002812938739_0320181985", "isim/p7_tb_isim_beh.exe.sim/work/m_00000000002812938739_0320181985.didat");
	xsi_register_executes(pe);
}
