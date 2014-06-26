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
static const char *ng0 = "C:/team1/melody/melody.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2066509703_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 5888);
    t6 = (t0 + 3272);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB3:    t1 = (t0 + 3192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 992U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t1 = (t0 + 1768U);
    t6 = *((char **)t1);
    t8 = *((int *)t6);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 47, 1, t8);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t7 = (t0 + 3272);
    t10 = (t7 + 56U);
    t15 = *((char **)t10);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(100, ng0);
    t6 = (t0 + 1888U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t9 = (t8 + 1);
    t6 = (t0 + 1888U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((int *)t6) = t9;
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 == 10000);
    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1768U);
    t6 = *((char **)t1);
    t9 = *((int *)t6);
    t11 = (t9 + 1);
    t1 = (t0 + 1768U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t11;
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 == 47);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1768U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = 0;
    goto LAB12;

}


extern void work_a_2066509703_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2066509703_3212880686_p_0};
	xsi_register_didat("work_a_2066509703_3212880686", "isim/test_isim_beh.exe.sim/work/a_2066509703_3212880686.didat");
	xsi_register_executes(pe);
}
