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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/fhm_browregfile_w32.vhd";



static void work_a_0185818260_0328640067_p_0(char *t0)
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(131, ng0);
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
LAB3:    t1 = (t0 + 1880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 3716);
    t6 = (t0 + 1924);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB14:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(135, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t7 = t2;
    memset(t7, (unsigned char)2, 32U);
    t8 = (t0 + 1924);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t15 = (t10 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB11;

LAB13:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t1 = (t0 + 1924);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}


extern void work_a_0185818260_0328640067_init()
{
	static char *pe[] = {(void *)work_a_0185818260_0328640067_p_0};
	xsi_register_didat("work_a_0185818260_0328640067", "isim/TB_isim_beh.exe.sim/work/a_0185818260_0328640067.didat");
	xsi_register_executes(pe);
}
