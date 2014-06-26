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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/team1/displayModule/vectorRegister.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1399164179_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB6:    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 3592);
    *((int *)t5) = 0;
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t6 = (t4 == (unsigned char)3);
    if (t6 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t6 = (t4 == (unsigned char)3);
    if (t6 != 0)
        goto LAB19;

LAB20:
LAB9:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2288U);
    t5 = *((char **)t2);
    t13 = *((int *)t5);
    t14 = (t13 - 3);
    t18 = (t14 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t13);
    t19 = (3U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t8 = (t0 + 3736);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t4 = (t13 == 3);
    if (t4 != 0)
        goto LAB26;

LAB28:    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t4 = (t13 == 2);
    if (t4 != 0)
        goto LAB29;

LAB30:    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t4 = (t13 == 1);
    if (t4 != 0)
        goto LAB31;

LAB32:    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t4 = (t13 == 0);
    if (t4 != 0)
        goto LAB33;

LAB34:
LAB27:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t13 = *((int *)t3);
    t14 = (t13 + 1);
    t2 = (t0 + 2288U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t14;
    goto LAB2;

LAB5:    t3 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 6212);
    t7 = (3U != 3U);
    if (t7 == 1)
        goto LAB11;

LAB12:    t8 = (t0 + 3672);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_delta(t8, 0U, 3U, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 6215);
    t4 = (3U != 3U);
    if (t4 == 1)
        goto LAB13;

LAB14:    t5 = (t0 + 3672);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 3U);
    xsi_driver_first_trans_delta(t5, 3U, 3U, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 6218);
    t4 = (3U != 3U);
    if (t4 == 1)
        goto LAB15;

LAB16:    t5 = (t0 + 3672);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 3U);
    xsi_driver_first_trans_delta(t5, 6U, 3U, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6221);
    t4 = (3U != 3U);
    if (t4 == 1)
        goto LAB17;

LAB18:    t5 = (t0 + 3672);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 3U);
    xsi_driver_first_trans_delta(t5, 9U, 3U, 0LL);
    goto LAB9;

LAB11:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 6224);
    *((int *)t2) = 0;
    t5 = (t0 + 6228);
    *((int *)t5) = 2;
    t13 = 0;
    t14 = 2;

LAB21:    if (t13 <= t14)
        goto LAB22;

LAB24:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 3672);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 3U);
    xsi_driver_first_trans_delta(t2, 0U, 3U, 0LL);
    goto LAB9;

LAB22:    xsi_set_current_line(62, ng0);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t8 = (t0 + 6224);
    t15 = *((int *)t8);
    t16 = (t15 + 1);
    t17 = (t16 - 3);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t16);
    t19 = (3U * t18);
    t20 = (0 + t19);
    t10 = (t9 + t20);
    t11 = (t0 + 6224);
    t21 = *((int *)t11);
    t22 = (t21 - 3);
    t23 = (t22 * -1);
    t24 = (3U * t23);
    t25 = (0U + t24);
    t12 = (t0 + 3672);
    t26 = (t12 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t10, 3U);
    xsi_driver_first_trans_delta(t12, t25, 3U, 0LL);

LAB23:    t2 = (t0 + 6224);
    t13 = *((int *)t2);
    t3 = (t0 + 6228);
    t14 = *((int *)t3);
    if (t13 == t14)
        goto LAB24;

LAB25:    t15 = (t13 + 1);
    t13 = t15;
    t5 = (t0 + 6224);
    *((int *)t5) = t13;
    goto LAB21;

LAB26:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6232);
    t8 = (t0 + 3800);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB27;

LAB29:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6236);
    t8 = (t0 + 3800);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB27;

LAB31:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6240);
    t8 = (t0 + 3800);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB27;

LAB33:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6244);
    t8 = (t0 + 3800);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB27;

}


extern void work_a_1399164179_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1399164179_3212880686_p_0};
	xsi_register_didat("work_a_1399164179_3212880686", "isim/test_isim_beh.exe.sim/work/a_1399164179_3212880686.didat");
	xsi_register_executes(pe);
}
