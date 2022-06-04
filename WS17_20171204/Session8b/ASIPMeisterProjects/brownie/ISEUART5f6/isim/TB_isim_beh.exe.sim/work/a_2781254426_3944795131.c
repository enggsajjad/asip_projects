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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f6/i2c_multiclock_latch.vhd";



static void work_a_2781254426_3944795131_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3580);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 776U);
    t8 = *((char **)t4);
    t4 = (t0 + 3632);
    t9 = (t4 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 7U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3668);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t2 = (t0 + 3704);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3740);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1236U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3776);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2432U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3812);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2616U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3848);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_2781254426_3944795131_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 660U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3588);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 1144U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 3884);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3920);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2064U);
    t4 = *((char **)t2);
    t2 = (t0 + 3956);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2156U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3992);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2248U);
    t4 = *((char **)t2);
    t2 = (t0 + 4028);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2340U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 4064);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2524U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 4100);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}


extern void work_a_2781254426_3944795131_init()
{
	static char *pe[] = {(void *)work_a_2781254426_3944795131_p_0,(void *)work_a_2781254426_3944795131_p_1};
	xsi_register_didat("work_a_2781254426_3944795131", "isim/TB_isim_beh.exe.sim/work/a_2781254426_3944795131.didat");
	xsi_register_executes(pe);
}
