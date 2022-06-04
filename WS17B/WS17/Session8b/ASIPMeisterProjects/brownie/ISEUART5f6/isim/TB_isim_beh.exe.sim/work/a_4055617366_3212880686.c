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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f6/clk_div.vhd";



static void work_a_4055617366_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    unsigned char t11;
    int t12;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 1740);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1016U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1784);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 1016U);
    t6 = *((char **)t5);
    t10 = *((int *)t6);
    t11 = (t10 == 54);
    if (t11 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1016U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t12 = (t10 + 1);
    t1 = (t0 + 1016U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t12;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1784);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(35, ng0);
    t5 = (t0 + 1016U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    *((int *)t5) = 0;
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1784);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}


extern void work_a_4055617366_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4055617366_3212880686_p_0};
	xsi_register_didat("work_a_4055617366_3212880686", "isim/TB_isim_beh.exe.sim/work/a_4055617366_3212880686.didat");
	xsi_register_executes(pe);
}
