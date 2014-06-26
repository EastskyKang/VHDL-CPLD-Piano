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
static const char *ng0 = "C:/team1/piano3/piano.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3499444699_sub_1438093509_3536714472(char *, char *, char *, char *, int );
char *ieee_p_3499444699_sub_1438165383_3536714472(char *, char *, char *, char *, int );


static void work_a_1740195814_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 4240);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 4128);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1740195814_3212880686_p_1(char *t0)
{
    char t7[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1952U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4144);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1832U);
    t8 = *((char **)t3);
    t3 = (t0 + 6484U);
    t9 = ieee_p_3499444699_sub_1438093509_3536714472(IEEE_P_3499444699, t7, t8, t3, 1);
    t10 = (t7 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (3U != t12);
    if (t13 == 1)
        goto LAB8;

LAB9:    t14 = (t0 + 4304);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 3U);
    xsi_driver_first_trans_fast(t14);
    goto LAB6;

LAB8:    xsi_size_not_matching(3U, t12, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 6484U);
    t8 = ieee_p_3499444699_sub_1438165383_3536714472(IEEE_P_3499444699, t7, t4, t1, 1);
    t9 = (t7 + 12U);
    t11 = *((unsigned int *)t9);
    t12 = (1U * t11);
    t6 = (3U != t12);
    if (t6 == 1)
        goto LAB12;

LAB13:    t10 = (t0 + 4304);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB12:    xsi_size_not_matching(3U, t12, 0);
    goto LAB13;

}

static void work_a_1740195814_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1740195814_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1740195814_3212880686_p_0,(void *)work_a_1740195814_3212880686_p_1,(void *)work_a_1740195814_3212880686_p_2};
	xsi_register_didat("work_a_1740195814_3212880686", "isim/test_isim_beh.exe.sim/work/a_1740195814_3212880686.didat");
	xsi_register_executes(pe);
}
