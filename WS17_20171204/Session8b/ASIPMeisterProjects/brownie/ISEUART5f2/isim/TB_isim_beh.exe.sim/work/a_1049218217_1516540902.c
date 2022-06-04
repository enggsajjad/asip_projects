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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/rtg_mux3to1_w5.vhd";



static void work_a_1049218217_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
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
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3433);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 3435);
    t17 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t17 = 0;

LAB15:    if (t17 != 0)
        goto LAB11;

LAB12:    t27 = (t0 + 592U);
    t28 = *((char **)t27);
    t27 = (t0 + 3437);
    t30 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t30 = 0;

LAB23:    if (t30 != 0)
        goto LAB19;

LAB20:
LAB27:    t40 = (t0 + 3439);
    t42 = (t0 + 1832);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 32U);
    t46 = *((char **)t45);
    memcpy(t46, t40, 5U);
    xsi_driver_first_trans_fast_port(t42);

LAB2:    t47 = (t0 + 1788);
    *((int *)t47) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 1832);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 5U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t21 = (t0 + 776U);
    t22 = *((char **)t21);
    t21 = (t0 + 1832);
    t23 = (t21 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 5U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB13:    t18 = 0;

LAB16:    if (t18 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t19 = (t15 + t18);
    t20 = (t14 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB14;

LAB18:    t18 = (t18 + 1);
    goto LAB16;

LAB19:    t34 = (t0 + 868U);
    t35 = *((char **)t34);
    t34 = (t0 + 1832);
    t36 = (t34 + 32U);
    t37 = *((char **)t36);
    t38 = (t37 + 32U);
    t39 = *((char **)t38);
    memcpy(t39, t35, 5U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB2;

LAB21:    t31 = 0;

LAB24:    if (t31 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t32 = (t28 + t31);
    t33 = (t27 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB22;

LAB26:    t31 = (t31 + 1);
    goto LAB24;

LAB28:    goto LAB2;

}


extern void work_a_1049218217_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1049218217_1516540902_p_0};
	xsi_register_didat("work_a_1049218217_1516540902", "isim/TB_isim_beh.exe.sim/work/a_1049218217_1516540902.didat");
	xsi_register_executes(pe);
}
