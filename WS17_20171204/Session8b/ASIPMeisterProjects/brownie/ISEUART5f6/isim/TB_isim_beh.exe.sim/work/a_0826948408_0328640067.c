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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f6/fhm_fwu_w32.vhd";



static void work_a_0826948408_0328640067_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t18 = (t0 + 1236U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB16;

LAB17:    t17 = (unsigned char)0;

LAB18:    if (t17 != 0)
        goto LAB14;

LAB15:
LAB25:    t33 = (t0 + 592U);
    t34 = *((char **)t33);
    t33 = (t0 + 2200);
    t35 = (t33 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 32U);
    t38 = *((char **)t37);
    memcpy(t38, t34, 32U);
    xsi_driver_first_trans_fast_port(t33);

LAB2:    t39 = (t0 + 2156);
    *((int *)t39) = 1;

LAB1:    return;
LAB3:    t11 = (t0 + 684U);
    t12 = *((char **)t11);
    t11 = (t0 + 2200);
    t13 = (t11 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 32U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB5:    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t2 = (t0 + 960U);
    t7 = *((char **)t2);
    t8 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    t1 = t8;
    goto LAB7;

LAB8:    t9 = 0;

LAB11:    if (t9 < 5U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t6 + t9);
    t10 = (t7 + t9);
    if (*((unsigned char *)t2) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB14:    t27 = (t0 + 776U);
    t28 = *((char **)t27);
    t27 = (t0 + 2200);
    t29 = (t27 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 32U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 32U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB16:    t18 = (t0 + 868U);
    t22 = *((char **)t18);
    t18 = (t0 + 1052U);
    t23 = *((char **)t18);
    t24 = 1;
    if (5U == 5U)
        goto LAB19;

LAB20:    t24 = 0;

LAB21:    t17 = t24;
    goto LAB18;

LAB19:    t25 = 0;

LAB22:    if (t25 < 5U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t18 = (t22 + t25);
    t26 = (t23 + t25);
    if (*((unsigned char *)t18) != *((unsigned char *)t26))
        goto LAB20;

LAB24:    t25 = (t25 + 1);
    goto LAB22;

LAB26:    goto LAB2;

}


extern void work_a_0826948408_0328640067_init()
{
	static char *pe[] = {(void *)work_a_0826948408_0328640067_p_0};
	xsi_register_didat("work_a_0826948408_0328640067", "isim/TB_isim_beh.exe.sim/work/a_0826948408_0328640067.didat");
	xsi_register_executes(pe);
}
