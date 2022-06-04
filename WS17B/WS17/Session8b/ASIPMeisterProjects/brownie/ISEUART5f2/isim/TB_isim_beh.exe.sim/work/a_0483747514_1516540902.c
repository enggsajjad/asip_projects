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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/rtg_proc_fsm.vhd";



static void work_a_0483747514_1516540902_p_0(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    char *t12;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2656);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1592U);
    t5 = *((char **)t1);
    t1 = (t0 + 2708);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1420U);
    t6 = *((char **)t2);
    t2 = (t0 + 2708);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t12 = *((char **)t9);
    memcpy(t12, t6, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

}

static void work_a_0483747514_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 1592U);
    t3 = *((char **)t1);
    t4 = xsi_mem_cmp(t3, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t1 = (t0 + 1660U);
    t5 = *((char **)t1);
    t6 = xsi_mem_cmp(t5, t2, 2U);
    if (t6 == 1)
        goto LAB4;

LAB9:    t1 = (t0 + 1728U);
    t7 = *((char **)t1);
    t8 = xsi_mem_cmp(t7, t2, 2U);
    if (t8 == 1)
        goto LAB5;

LAB10:    t1 = (t0 + 1796U);
    t9 = *((char **)t1);
    t10 = xsi_mem_cmp(t9, t2, 2U);
    if (t10 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2744);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2780);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2816);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5563);
    t3 = (t0 + 2852);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 2664);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2744);
    t11 = (t1 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2780);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2816);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t16 = (t15 == (unsigned char)2);
    if (t16 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5557);
    t3 = (t0 + 2852);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB14:    goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2744);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2780);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2816);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1728U);
    t2 = *((char **)t1);
    t1 = (t0 + 2852);
    t3 = (t1 + 32U);
    t5 = *((char **)t3);
    t7 = (t5 + 32U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2744);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2780);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2816);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB23;

LAB24:    t15 = (unsigned char)0;

LAB25:    if (t15 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB28;

LAB29:    t15 = (unsigned char)0;

LAB30:    if (t15 != 0)
        goto LAB26;

LAB27:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5559);
    t3 = (t0 + 2852);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB19:    goto LAB2;

LAB6:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2744);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2780);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2816);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB31;

LAB33:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB36;

LAB37:    t15 = (unsigned char)0;

LAB38:    if (t15 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB41;

LAB42:    t15 = (unsigned char)0;

LAB43:    if (t15 != 0)
        goto LAB39;

LAB40:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5561);
    t3 = (t0 + 2852);
    t5 = (t3 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB32:    goto LAB2;

LAB12:;
LAB13:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1592U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1660U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB18:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1660U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB19;

LAB21:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1796U);
    t5 = *((char **)t1);
    t1 = (t0 + 2852);
    t7 = (t1 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB19;

LAB23:    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 == (unsigned char)3);
    t15 = t19;
    goto LAB25;

LAB26:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1728U);
    t5 = *((char **)t1);
    t1 = (t0 + 2852);
    t7 = (t1 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB19;

LAB28:    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 == (unsigned char)2);
    t15 = t19;
    goto LAB30;

LAB31:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1660U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB34:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1796U);
    t5 = *((char **)t1);
    t1 = (t0 + 2852);
    t7 = (t1 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB36:    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 == (unsigned char)2);
    t15 = t19;
    goto LAB38;

LAB39:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1728U);
    t5 = *((char **)t1);
    t1 = (t0 + 2852);
    t7 = (t1 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB41:    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 == (unsigned char)3);
    t15 = t19;
    goto LAB43;

}


extern void work_a_0483747514_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0483747514_1516540902_p_0,(void *)work_a_0483747514_1516540902_p_1};
	xsi_register_didat("work_a_0483747514_1516540902", "isim/TB_isim_beh.exe.sim/work/a_0483747514_1516540902.didat");
	xsi_register_executes(pe);
}
