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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f6/interface_asipmeister_i2c.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0171821889_2024009628_p_0(char *t0)
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
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16, &&LAB17, &&LAB18};

LAB0:    xsi_set_current_line(159, ng0);
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
LAB3:    t1 = (t0 + 5452);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 12712);
    t6 = (t0 + 5552);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 12719);
    t5 = (t0 + 5588);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(162, ng0);
    t1 = (t0 + 5624);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 12727);
    t5 = (t0 + 5660);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(164, ng0);
    t1 = (t0 + 5696);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 5732);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(166, ng0);
    t1 = (t0 + 5768);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(167, ng0);
    t1 = (t0 + 12735);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(168, ng0);
    t1 = (t0 + 3708U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    xsi_set_current_line(170, ng0);
    t2 = (t0 + 3708U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t2 = (char *)((nl0) + t13);
    goto **((char **)t2);

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(172, ng0);
    t7 = (t0 + 12739);
    t9 = (t0 + 5804);
    t10 = (t9 + 32U);
    t14 = *((char **)t10);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(174, ng0);
    t1 = (t0 + 12743);
    t5 = (t0 + 5552);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(175, ng0);
    t1 = (t0 + 12750);
    t5 = (t0 + 5588);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(176, ng0);
    t1 = (t0 + 5624);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(177, ng0);
    t1 = (t0 + 12758);
    t5 = (t0 + 5660);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 5696);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(179, ng0);
    t1 = (t0 + 5732);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(180, ng0);
    t1 = (t0 + 5768);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(183, ng0);
    t1 = (t0 + 3260U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB10;

LAB12:    xsi_set_current_line(188, ng0);
    t1 = (t0 + 12766);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(190, ng0);
    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(193, ng0);
    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB26;

LAB28:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB32;

LAB33:
LAB27:
LAB24:    goto LAB10;

LAB13:    xsi_set_current_line(207, ng0);
    t1 = (t0 + 12770);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(209, ng0);
    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(212, ng0);
    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB37;

LAB39:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB43;

LAB44:
LAB38:
LAB35:    goto LAB10;

LAB14:    xsi_set_current_line(233, ng0);
    t1 = (t0 + 12774);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(235, ng0);
    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(238, ng0);
    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB53;

LAB55:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB59;

LAB60:
LAB54:
LAB51:    goto LAB10;

LAB15:    xsi_set_current_line(254, ng0);
    t1 = (t0 + 12778);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(256, ng0);
    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB61;

LAB63:    xsi_set_current_line(259, ng0);
    t1 = (t0 + 3776U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t3 = (t17 > 0);
    if (t3 != 0)
        goto LAB64;

LAB66:    t1 = (t0 + 3776U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t3 = (t17 == 0);
    if (t3 != 0)
        goto LAB75;

LAB76:
LAB65:
LAB62:    goto LAB10;

LAB16:    xsi_set_current_line(339, ng0);
    t1 = (t0 + 12782);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(341, ng0);
    t1 = (t0 + 5768);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(342, ng0);
    t1 = (t0 + 2800U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB77;

LAB79:
LAB78:    goto LAB10;

LAB17:    xsi_set_current_line(347, ng0);
    t1 = (t0 + 12786);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(348, ng0);
    t1 = (t0 + 2616U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB80;

LAB82:
LAB81:    goto LAB10;

LAB18:    xsi_set_current_line(362, ng0);
    t1 = (t0 + 12790);
    t5 = (t0 + 5804);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(364, ng0);
    t1 = (t0 + 2156U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB88;

LAB90:
LAB89:    goto LAB10;

LAB19:    xsi_set_current_line(368, ng0);
    goto LAB10;

LAB20:    xsi_set_current_line(184, ng0);
    t1 = (t0 + 3708U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB21;

LAB23:    xsi_set_current_line(191, ng0);
    t1 = (t0 + 5840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

LAB26:    xsi_set_current_line(195, ng0);
    t1 = (t0 + 3260U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB27;

LAB29:    xsi_set_current_line(196, ng0);
    t1 = (t0 + 5840);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

LAB32:    xsi_set_current_line(201, ng0);
    t1 = (t0 + 3444U);
    t5 = *((char **)t1);
    t1 = (t0 + 12644U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t6 = (t0 + 3776U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t17;
    xsi_set_current_line(202, ng0);
    t1 = (t0 + 3708U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB27;

LAB34:    xsi_set_current_line(210, ng0);
    t1 = (t0 + 5840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

LAB37:    xsi_set_current_line(214, ng0);
    t1 = (t0 + 3260U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB40;

LAB42:
LAB41:    goto LAB38;

LAB40:    xsi_set_current_line(215, ng0);
    t1 = (t0 + 5840);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB41;

LAB43:    xsi_set_current_line(220, ng0);
    t1 = (t0 + 3444U);
    t5 = *((char **)t1);
    t18 = (7 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t1 = (t5 + t20);
    t6 = (t0 + 5552);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(221, ng0);
    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5624);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(224, ng0);
    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB45;

LAB47:    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB48;

LAB49:
LAB46:    goto LAB38;

LAB45:    xsi_set_current_line(225, ng0);
    t5 = (t0 + 3708U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((unsigned char *)t5) = (unsigned char)3;
    goto LAB46;

LAB48:    xsi_set_current_line(227, ng0);
    t5 = (t0 + 3708U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((unsigned char *)t5) = (unsigned char)4;
    goto LAB46;

LAB50:    xsi_set_current_line(236, ng0);
    t1 = (t0 + 5840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB51;

LAB53:    xsi_set_current_line(240, ng0);
    t1 = (t0 + 3260U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB56;

LAB58:
LAB57:    goto LAB54;

LAB56:    xsi_set_current_line(241, ng0);
    t1 = (t0 + 5840);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB57;

LAB59:    xsi_set_current_line(245, ng0);
    t1 = (t0 + 3444U);
    t5 = *((char **)t1);
    t1 = (t0 + 5660);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(246, ng0);
    t1 = (t0 + 5732);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(248, ng0);
    t1 = (t0 + 3708U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)5;
    goto LAB54;

LAB61:    xsi_set_current_line(257, ng0);
    t1 = (t0 + 5840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB62;

LAB64:    xsi_set_current_line(261, ng0);
    t1 = (t0 + 3536U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB67;

LAB69:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB73;

LAB74:
LAB68:    goto LAB65;

LAB67:    xsi_set_current_line(262, ng0);
    t1 = (t0 + 5696);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(264, ng0);
    t1 = (t0 + 3260U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB70;

LAB72:
LAB71:    goto LAB68;

LAB70:    xsi_set_current_line(265, ng0);
    t1 = (t0 + 5840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB71;

LAB73:    xsi_set_current_line(270, ng0);
    t1 = (t0 + 5696);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(272, ng0);
    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t1 = (t0 + 5588);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(274, ng0);
    t1 = (t0 + 3776U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t21 = (t17 - 1);
    t1 = (t0 + 3776U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t21;
    goto LAB68;

LAB75:    xsi_set_current_line(279, ng0);
    t1 = (t0 + 5696);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(280, ng0);
    t1 = (t0 + 5732);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(281, ng0);
    t1 = (t0 + 3708U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)5;
    goto LAB65;

LAB77:    xsi_set_current_line(343, ng0);
    t1 = (t0 + 3708U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)6;
    goto LAB78;

LAB80:    xsi_set_current_line(349, ng0);
    t1 = (t0 + 5732);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(350, ng0);
    t1 = (t0 + 5768);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(354, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB83;

LAB85:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB86;

LAB87:
LAB84:    goto LAB81;

LAB83:    xsi_set_current_line(355, ng0);
    t1 = (t0 + 3708U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)7;
    goto LAB84;

LAB86:    xsi_set_current_line(357, ng0);
    t1 = (t0 + 3708U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB84;

LAB88:    xsi_set_current_line(365, ng0);
    t1 = (t0 + 3708U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB89;

}

static void work_a_0171821889_2024009628_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(374, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5876);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5460);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(375, ng0);

LAB3:    t1 = (t0 + 2156U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5912);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5468);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(376, ng0);

LAB3:    t1 = (t0 + 2432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5948);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5476);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(377, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5984);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5484);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(380, ng0);

LAB3:    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t1 = (t0 + 6020);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5492);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(381, ng0);

LAB3:    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6056);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5500);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0171821889_2024009628_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(382, ng0);

LAB3:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6092);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5508);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0171821889_2024009628_init()
{
	static char *pe[] = {(void *)work_a_0171821889_2024009628_p_0,(void *)work_a_0171821889_2024009628_p_1,(void *)work_a_0171821889_2024009628_p_2,(void *)work_a_0171821889_2024009628_p_3,(void *)work_a_0171821889_2024009628_p_4,(void *)work_a_0171821889_2024009628_p_5,(void *)work_a_0171821889_2024009628_p_6,(void *)work_a_0171821889_2024009628_p_7};
	xsi_register_didat("work_a_0171821889_2024009628", "isim/TB_isim_beh.exe.sim/work/a_0171821889_2024009628.didat");
	xsi_register_executes(pe);
}
