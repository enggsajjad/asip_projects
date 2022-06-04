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

/* This file is designed for use with ISim build 0x84a0141b */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/fhm_multiplier_w32.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_1944174509_0328640067_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(862, ng0);

LAB3:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4528U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (64U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 2296);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 64U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 2244);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t7, 0);
    goto LAB6;

}

static void work_a_1944174509_0328640067_p_1(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(863, ng0);

LAB3:    t1 = (t0 + 4874);
    t3 = (t0 + 2332);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 64U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1944174509_0328640067_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(870, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 1052U);
    t11 = *((char **)t10);
    t10 = (t0 + 2368);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 64U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t16 = (t0 + 2252);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t1 = (t0 + 2368);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 64U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1944174509_0328640067_init()
{
	static char *pe[] = {(void *)work_a_1944174509_0328640067_p_0,(void *)work_a_1944174509_0328640067_p_1,(void *)work_a_1944174509_0328640067_p_2};
	xsi_register_didat("work_a_1944174509_0328640067", "isim/TB_isim_beh.exe.sim/work/a_1944174509_0328640067.didat");
	xsi_register_executes(pe);
}
