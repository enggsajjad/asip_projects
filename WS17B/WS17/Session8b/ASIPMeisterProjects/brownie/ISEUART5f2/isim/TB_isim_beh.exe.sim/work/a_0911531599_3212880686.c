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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/DCM_100.vhd";



static void work_a_0911531599_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 4536);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0911531599_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 10588);
    t3 = (5U != 5U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 4572);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_delta(t4, 0U, 5U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, 5U, 0);
    goto LAB6;

}

static void work_a_0911531599_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 10593);
    t3 = (7U != 7U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 4608);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 7U);
    xsi_driver_first_trans_delta(t4, 0U, 7U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(7U, 7U, 0);
    goto LAB6;

}

static void work_a_0911531599_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 10600);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 4644);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 0U, 16U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB6;

}

static void work_a_0911531599_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 4680);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0911531599_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4716);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4492);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0911531599_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0911531599_3212880686_p_0,(void *)work_a_0911531599_3212880686_p_1,(void *)work_a_0911531599_3212880686_p_2,(void *)work_a_0911531599_3212880686_p_3,(void *)work_a_0911531599_3212880686_p_4,(void *)work_a_0911531599_3212880686_p_5};
	xsi_register_didat("work_a_0911531599_3212880686", "isim/TB_isim_beh.exe.sim/work/a_0911531599_3212880686.didat");
	xsi_register_executes(pe);
}
