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
static const char *ng0 = "/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5f/fhm_multiplier_w32.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2377342474_0328640067_p_0(char *t0)
{
    char t3[16];
    char t9[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    int t17;

LAB0:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2312);
    t5 = (t0 + 3952U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1132U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (1U + 64U);
    memcpy(t6, t1, t8);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2312);
    t5 = (t0 + 3968U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1200U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (1U + 64U);
    memcpy(t6, t1, t8);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 4000U);
    t4 = (t0 + 1200U);
    t5 = *((char **)t4);
    t4 = (t0 + 4000U);
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t2, t1, t5, t4);
    t7 = (t0 + 776U);
    t10 = *((char **)t7);
    t11 = *((unsigned char *)t10);
    t7 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t3, t6, t9, t11);
    t12 = (t0 + 1268U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t14 = (t3 + 12U);
    t8 = *((unsigned int *)t14);
    t15 = (1U * t8);
    memcpy(t12, t7, t15);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t8 = (64 - 63);
    t15 = (t8 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = (t0 + 2036);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    memcpy(t10, t1, 64U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 1268U);
    t2 = *((char **)t1);
    t17 = (64 - 64);
    t8 = (t17 * -1);
    t15 = (1U * t8);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t11 = *((unsigned char *)t1);
    t4 = (t0 + 2072);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = t11;
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 1992);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_2377342474_0328640067_init()
{
	static char *pe[] = {(void *)work_a_2377342474_0328640067_p_0};
	xsi_register_didat("work_a_2377342474_0328640067", "isim/TB_isim_beh.exe.sim/work/a_2377342474_0328640067.didat");
	xsi_register_executes(pe);
}
