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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/tb_brom_im.vhd";
extern char *IEEE_P_3620187407;
extern char *STD_TEXTIO;
extern char *WORK_P_3769383182;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *work_p_3769383182_sub_3917337735_3942561747(char *, char *, char *, char *);


static void work_a_2116183969_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2792);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2020);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2792);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2020);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2116183969_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;

LAB0:    t1 = (t0 + 2256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2156);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1408U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 2156);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(107, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_2116183969_2372691052_p_2(char *t0)
{
    char t11[16];
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
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2708);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 684U);
    t8 = *((char **)t4);
    t4 = (t0 + 5640U);
    t9 = (t0 + 5848);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 13;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (13 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t4, t9, t11);
    if (t16 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t2 = (t0 + 5640U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t4, t2, 1);
    t8 = (t11 + 12U);
    t15 = *((unsigned int *)t8);
    t22 = (1U * t15);
    t1 = (14U != t22);
    if (t1 == 1)
        goto LAB11;

LAB12:    t9 = (t0 + 2828);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    t13 = (t12 + 32U);
    t17 = *((char **)t13);
    memcpy(t17, t5, 14U);
    xsi_driver_first_trans_fast(t9);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(115, ng0);
    t13 = (t0 + 684U);
    t17 = *((char **)t13);
    t13 = (t0 + 2828);
    t18 = (t13 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 14U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    xsi_size_not_matching(14U, t22, 0);
    goto LAB12;

}

static void work_a_2116183969_2372691052_p_3(char *t0)
{
    char t17[16];
    char t18[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2716);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 776U);
    t8 = *((char **)t4);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t4 = (t8 + t11);
    t12 = (t0 + 2864);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1760U);
    t5 = (t0 + 868U);
    t8 = *((char **)t5);
    t9 = (7 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t8 + t11);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t20;
    t13 = work_p_3769383182_sub_3917337735_3942561747(WORK_P_3769383182, t17, t5, t18);
    t14 = (t17 + 12U);
    t20 = *((unsigned int *)t14);
    t20 = (t20 * 1U);
    t15 = (char *)alloca(t20);
    memcpy(t15, t13, t20);
    std_textio_write7(STD_TEXTIO, t2, t4, t15, t17, (unsigned char)0, 0);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1660U);
    t5 = (t0 + 1760U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t9 = (31 - 23);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t4 + t11);
    t5 = (t0 + 2864);
    t8 = (t5 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1760U);
    t5 = (t0 + 868U);
    t8 = *((char **)t5);
    t9 = (7 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t8 + t11);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t20;
    t13 = work_p_3769383182_sub_3917337735_3942561747(WORK_P_3769383182, t17, t5, t18);
    t14 = (t17 + 12U);
    t20 = *((unsigned int *)t14);
    t20 = (t20 * 1U);
    t16 = (char *)alloca(t20);
    memcpy(t16, t13, t20);
    std_textio_write7(STD_TEXTIO, t2, t4, t16, t17, (unsigned char)0, 0);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1660U);
    t5 = (t0 + 1760U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t9 = (31 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t4 + t11);
    t5 = (t0 + 2864);
    t8 = (t5 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1760U);
    t5 = (t0 + 868U);
    t8 = *((char **)t5);
    t9 = (7 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t8 + t11);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t20;
    t13 = work_p_3769383182_sub_3917337735_3942561747(WORK_P_3769383182, t17, t5, t18);
    t14 = (t17 + 12U);
    t20 = *((unsigned int *)t14);
    t20 = (t20 * 1U);
    t21 = (char *)alloca(t20);
    memcpy(t21, t13, t20);
    std_textio_write7(STD_TEXTIO, t2, t4, t21, t17, (unsigned char)0, 0);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1660U);
    t5 = (t0 + 1760U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t9 = (31 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t4 + t11);
    t5 = (t0 + 2864);
    t8 = (t5 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1760U);
    t5 = (t0 + 776U);
    t8 = *((char **)t5);
    t9 = (31 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t8 + t11);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t20;
    t13 = work_p_3769383182_sub_3917337735_3942561747(WORK_P_3769383182, t17, t5, t18);
    t14 = (t17 + 12U);
    t20 = *((unsigned int *)t14);
    t20 = (t20 * 1U);
    t22 = (char *)alloca(t20);
    memcpy(t22, t13, t20);
    std_textio_write7(STD_TEXTIO, t2, t4, t22, t17, (unsigned char)0, 0);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 2428);
    t4 = (t0 + 1660U);
    t5 = (t0 + 1760U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}


extern void work_a_2116183969_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2116183969_2372691052_p_0,(void *)work_a_2116183969_2372691052_p_1,(void *)work_a_2116183969_2372691052_p_2,(void *)work_a_2116183969_2372691052_p_3};
	xsi_register_didat("work_a_2116183969_2372691052", "isim/tb_brom_im_isim_beh.exe.sim/work/a_2116183969_2372691052.didat");
	xsi_register_executes(pe);
}
