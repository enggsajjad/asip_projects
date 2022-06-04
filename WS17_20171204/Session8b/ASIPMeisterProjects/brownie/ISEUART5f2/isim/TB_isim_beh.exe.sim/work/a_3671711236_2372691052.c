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
static const char *ng0 = "/home/asip04/WS17/Session8b/ASIPMeisterProjects/brownie/ISEUART5f2/tb_dlx_toplevel.vhd";
extern char *IEEE_P_3620187407;
extern char *STD_TEXTIO;
extern char *WORK_P_3769383182;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
unsigned char work_p_3769383182_sub_3496608471_3942561747(char *, int );


static void work_a_3671711236_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 4088);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 2880U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3492);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 4088);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 2880U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3492);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3671711236_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(177, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3628);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 2880U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3628);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(180, ng0);
    t2 = (t0 + 9216);
    t6 = (t0 + 4124);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(183, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3628);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(184, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(186, ng0);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_3671711236_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;

LAB0:    xsi_set_current_line(217, ng0);
    t1 = (t0 + 2156U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4044);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(218, ng0);
    t1 = (t0 + 2340U);
    t5 = *((char **)t1);
    t1 = (t0 + 9056U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t0 + 2948U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t6;
    xsi_set_current_line(219, ng0);
    t1 = (t0 + 2948U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 10);
    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2948U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t4 = (t9 == 9);
    if (t4 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 2948U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 13);
    if (t3 != 0)
        goto LAB10;

LAB11:    xsi_set_current_line(225, ng0);
    t1 = (t0 + 3764);
    t2 = (t0 + 3232U);
    t5 = (t0 + 2948U);
    t7 = *((char **)t5);
    t6 = *((int *)t7);
    t3 = work_p_3769383182_sub_3496608471_3942561747(WORK_P_3769383182, t6);
    std_textio_write4(STD_TEXTIO, t1, t2, t3, (unsigned char)0, 0);

LAB6:    goto LAB3;

LAB5:    goto LAB6;

LAB8:    xsi_set_current_line(221, ng0);
    t1 = (t0 + 3764);
    t7 = (t0 + 3232U);
    std_textio_write4(STD_TEXTIO, t1, t7, (unsigned char)9, (unsigned char)0, 0);
    goto LAB6;

LAB10:    xsi_set_current_line(223, ng0);
    t1 = (t0 + 3764);
    t5 = (t0 + 3132U);
    t7 = (t0 + 3232U);
    std_textio_writeline(STD_TEXTIO, t1, t5, t7);
    goto LAB6;

}


extern void work_a_3671711236_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3671711236_2372691052_p_0,(void *)work_a_3671711236_2372691052_p_1,(void *)work_a_3671711236_2372691052_p_2};
	xsi_register_didat("work_a_3671711236_2372691052", "isim/TB_isim_beh.exe.sim/work/a_3671711236_2372691052.didat");
	xsi_register_executes(pe);
}
