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
static const char *ng0 = "K:/Users/mobai/Desktop/ise/p7project/mult.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {5, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {10, 0};
static unsigned int ng8[] = {3U, 0U};



static void Initial_13_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(14, ng0);

LAB2:    xsi_set_current_line(15, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(16, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Cont_18_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng2)));
    xsi_vlogtype_concat(t3, 33, 33, 2U, t2, 1, t4, 32);
    t5 = (t0 + 5944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t5, 0, 32);
    t10 = (t0 + 5832);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_19_2(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng2)));
    xsi_vlogtype_concat(t3, 33, 33, 2U, t2, 1, t4, 32);
    t5 = (t0 + 6008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t5, 0, 32);
    t10 = (t0 + 5848);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_20_3(char *t0)
{
    char t16[16];
    char t17[8];
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
    int t13;
    char *t14;
    char *t15;
    unsigned int t18;

LAB0:    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 5864);
    *((int *)t2) = 1;
    t3 = (t0 + 5544);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(21, ng0);

LAB5:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_signed_greater(t17, 32, t4, 32, t5, 32);
    t11 = (t17 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t17);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_signed_equal(t17, 32, t4, 32, t5, 32);
    t11 = (t17 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t17);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB31;

LAB32:
LAB33:
LAB29:
LAB25:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(23, ng0);
    t11 = (t0 + 2168U);
    t12 = *((char **)t11);

LAB9:    t11 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t11, 2);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 2, t2, 2);
    if (t13 == 1)
        goto LAB16;

LAB17:
LAB18:    goto LAB8;

LAB10:    xsi_set_current_line(25, ng0);

LAB19:    xsi_set_current_line(26, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 3848);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 32);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_multiply(t16, 64, t3, 33, t4, 33);
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t16, 0, 0, 64);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t5 = (t17 + 4);
    t11 = (t4 + 8);
    t14 = (t4 + 12);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t17) = t7;
    t8 = *((unsigned int *)t14);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t10 & 4294967295U);
    t18 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t18 & 4294967295U);
    t15 = (t0 + 3368);
    xsi_vlogvar_assign_value(t15, t17, 0, 0, 32);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t5 = (t17 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t17) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t10 & 4294967295U);
    t18 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t18 & 4294967295U);
    t14 = (t0 + 3528);
    xsi_vlogvar_assign_value(t14, t17, 0, 0, 32);
    goto LAB18;

LAB12:    xsi_set_current_line(33, ng0);

LAB20:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_signed_multiply(t16, 64, t3, 32, t4, 32);
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t16, 0, 0, 64);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t5 = (t17 + 4);
    t11 = (t4 + 8);
    t14 = (t4 + 12);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t17) = t7;
    t8 = *((unsigned int *)t14);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t10 & 4294967295U);
    t18 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t18 & 4294967295U);
    t15 = (t0 + 3368);
    xsi_vlogvar_assign_value(t15, t17, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t5 = (t17 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t17) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t10 & 4294967295U);
    t18 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t18 & 4294967295U);
    t14 = (t0 + 3528);
    xsi_vlogvar_assign_value(t14, t17, 0, 0, 32);
    goto LAB18;

LAB14:    xsi_set_current_line(41, ng0);

LAB21:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_mod(t16, 33, t3, 33, t4, 33);
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t16, 0, 0, 32);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_divide(t16, 33, t3, 33, t4, 33);
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t16, 0, 0, 32);
    goto LAB18;

LAB16:    xsi_set_current_line(48, ng0);

LAB22:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t17, 0, 8);
    xsi_vlog_signed_mod(t17, 32, t3, 32, t4, 32);
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t17, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t17, 0, 8);
    xsi_vlog_signed_divide(t17, 32, t3, 32, t4, 32);
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t17, 0, 0, 32);
    goto LAB18;

LAB23:    xsi_set_current_line(56, ng0);

LAB26:    xsi_set_current_line(57, ng0);
    t14 = ((char*)((ng4)));
    t15 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_signed_minus(t17, 32, t4, 32, t5, 32);
    t11 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t11, t17, 0, 0, 32, 0LL);
    goto LAB25;

LAB27:    xsi_set_current_line(61, ng0);

LAB30:    xsi_set_current_line(62, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_signed_minus(t17, 32, t4, 32, t5, 32);
    t11 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t11, t17, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB29;

LAB31:    xsi_set_current_line(68, ng0);

LAB34:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB35:    t4 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t13 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t13 == 1)
        goto LAB38;

LAB39:
LAB40:    goto LAB33;

LAB36:    xsi_set_current_line(70, ng0);
    t11 = (t0 + 1048U);
    t14 = *((char **)t11);
    t11 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t11, t14, 0, 0, 32, 0LL);
    goto LAB40;

LAB38:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB40;

}


extern void work_m_00000000002580975272_2318697404_init()
{
	static char *pe[] = {(void *)Initial_13_0,(void *)Cont_18_1,(void *)Cont_19_2,(void *)Always_20_3};
	xsi_register_didat("work_m_00000000002580975272_2318697404", "isim/p7_tb_isim_beh.exe.sim/work/m_00000000002580975272_2318697404.didat");
	xsi_register_executes(pe);
}
