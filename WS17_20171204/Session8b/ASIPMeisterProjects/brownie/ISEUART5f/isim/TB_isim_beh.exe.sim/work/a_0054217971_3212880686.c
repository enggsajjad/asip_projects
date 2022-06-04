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
static const char *ng0 = "/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5f/DigitalAnalogConverter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2801562521_3536714472(char *, char *, unsigned char , int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0054217971_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1612U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 > 0);
    if (t4 == 0)
        goto LAB2;

LAB3:
LAB1:    return;
LAB2:    t1 = (t0 + 6380);
    xsi_report(t1, 73U, (unsigned char)3);
    goto LAB3;

}

static void work_a_0054217971_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1680U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1680U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((unsigned char *)t3) = (unsigned char)0;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1748U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;

LAB6:    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1052U);
    t7 = *((char **)t4);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB8;

LAB10:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2932);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t1 = (t0 + 2968);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1748U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1680U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB8;

LAB11:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1748U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t13 = (t12 + 1);
    t1 = (t0 + 1748U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t13;
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1748U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t1 = (t0 + 1612U);
    t4 = *((char **)t1);
    t13 = *((int *)t4);
    t2 = (t12 == t13);
    if (t2 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB8;

LAB12:    goto LAB8;

LAB13:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 2932);
    t8 = (t4 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1680U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB14;

LAB16:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1680U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB17;

}

static void work_a_0054217971_3212880686_p_2(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 660U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2888);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1816U);
    t3 = *((char **)t1);
    t1 = (t0 + 6264U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 1);
    t7 = (t0 + 1816U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    memcpy(t7, t4, t13);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1816U);
    t3 = *((char **)t1);
    t1 = (t0 + 6264U);
    t4 = ieee_p_3499444699_sub_2801562521_3536714472(IEEE_P_3499444699, t11, (unsigned char)2, 8);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1816U);
    t3 = *((char **)t1);
    t1 = (t0 + 6264U);
    t4 = (t0 + 1884U);
    t7 = *((char **)t4);
    t4 = (t0 + 6280U);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB11;

LAB12:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(102, ng0);
    t3 = (t0 + 3004);
    t7 = (t3 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(103, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 1816U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 8U);
    goto LAB6;

LAB8:    xsi_set_current_line(107, ng0);
    t7 = (t0 + 1236U);
    t8 = *((char **)t7);
    t12 = (15 - 15);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t7 = (t8 + t14);
    t9 = (t0 + 1884U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    memcpy(t9, t7, 8U);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3004);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(110, ng0);
    t8 = (t0 + 3004);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t15 = (t10 + 32U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB9;

}


extern void work_a_0054217971_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0054217971_3212880686_p_0,(void *)work_a_0054217971_3212880686_p_1,(void *)work_a_0054217971_3212880686_p_2};
	xsi_register_didat("work_a_0054217971_3212880686", "isim/TB_isim_beh.exe.sim/work/a_0054217971_3212880686.didat");
	xsi_register_executes(pe);
}
