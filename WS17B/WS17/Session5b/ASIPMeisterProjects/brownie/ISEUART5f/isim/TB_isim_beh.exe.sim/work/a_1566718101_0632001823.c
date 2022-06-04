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
static const char *ng0 = "/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5f/AudioOut_TopLevel.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1566718101_0632001823_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1560U);
    t2 = *((char **)t1);
    t1 = (t0 + 8312U);
    t4 = (t0 + 2580U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t3, t6, 1);
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t15 = (t0 + 2580U);
    t17 = *((char **)t15);
    t18 = *((int *)t17);
    t19 = (t18 - 0);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t15 = (t16 + t22);
    t23 = *((unsigned char *)t15);
    t24 = (t0 + 3764);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t23;
    xsi_driver_first_trans_delta(t24, 0U, 1, 0LL);

LAB2:    t29 = (t0 + 3712);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 2204U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t8 = (t0 + 3764);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t10;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_1566718101_0632001823_p_1(char *t0)
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
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 984U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 732U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2716U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 1560U);
    t3 = *((char **)t1);
    t1 = (t0 + 8312U);
    t5 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t1, 1);
    if (t5 == 1)
        goto LAB14;

LAB15:    t2 = (unsigned char)0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB17;

LAB19:
LAB18:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(121, ng0);
    t3 = (t0 + 2648U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((unsigned char *)t3) = (unsigned char)2;
    xsi_set_current_line(122, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t3 = t1;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 2784U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 16U);
    xsi_set_current_line(123, ng0);
    t1 = xsi_get_transient_memory(1U);
    memset(t1, 0, 1U);
    t3 = t1;
    memset(t3, (unsigned char)2, 1U);
    t4 = (t0 + 2852U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 1U);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2716U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3800);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 3836);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 3800);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 3836);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 2716U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB9;

LAB11:    xsi_set_current_line(135, ng0);
    t16 = (t0 + 2648U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 1560U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 1U);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 1100U);
    t3 = *((char **)t1);
    t1 = (t0 + 2852U);
    t4 = *((char **)t1);
    t1 = (t0 + 8376U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t11 = (t10 - 0);
    t12 = (t11 * -1);
    xsi_vhdl_check_range_of_index(0, 0, -1, t10);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t7 = (t3 + t14);
    t8 = (t0 + 2784U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t7, 16U);
    goto LAB12;

LAB14:    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    t4 = (t0 + 1560U);
    t8 = *((char **)t4);
    t4 = (t0 + 8312U);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t4);
    t11 = (t10 - 0);
    t12 = (t11 * -1);
    xsi_vhdl_check_range_of_index(0, 0, -1, t10);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t7 + t14);
    t6 = *((unsigned char *)t9);
    t15 = (t6 == (unsigned char)3);
    t2 = t15;
    goto LAB16;

LAB17:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 2112U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t15 = (t6 == (unsigned char)2);
    if (t15 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB18;

LAB20:    xsi_set_current_line(142, ng0);
    t1 = (t0 + 3800);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t16 = *((char **)t9);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 2784U);
    t3 = *((char **)t1);
    t1 = (t0 + 3872);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 2716U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 3836);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

}


extern void work_a_1566718101_0632001823_init()
{
	static char *pe[] = {(void *)work_a_1566718101_0632001823_p_0,(void *)work_a_1566718101_0632001823_p_1};
	xsi_register_didat("work_a_1566718101_0632001823", "isim/TB_isim_beh.exe.sim/work/a_1566718101_0632001823.didat");
	xsi_register_executes(pe);
}
