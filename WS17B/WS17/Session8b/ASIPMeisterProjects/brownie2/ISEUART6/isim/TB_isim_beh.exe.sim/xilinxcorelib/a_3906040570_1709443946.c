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



static void xilinxcorelib_a_3906040570_1709443946_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:
LAB3:    t1 = (t0 + 824U);
    t2 = *((char **)t1);
    t1 = (t0 + 3480);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3412);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_3906040570_1709443946_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:
LAB3:    t1 = (t0 + 1008U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3516);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3420);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_3906040570_1709443946_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:
LAB3:    t1 = (t0 + 1100U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3552);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3428);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_3906040570_1709443946_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:
LAB3:    t1 = (t0 + 1376U);
    t2 = *((char **)t1);
    t1 = (t0 + 3588);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 14U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3436);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void xilinxcorelib_a_3906040570_1709443946_init()
{
	static char *pe[] = {(void *)xilinxcorelib_a_3906040570_1709443946_p_0,(void *)xilinxcorelib_a_3906040570_1709443946_p_1,(void *)xilinxcorelib_a_3906040570_1709443946_p_2,(void *)xilinxcorelib_a_3906040570_1709443946_p_3};
	xsi_register_didat("xilinxcorelib_a_3906040570_1709443946", "isim/TB_isim_beh.exe.sim/xilinxcorelib/a_3906040570_1709443946.didat");
	xsi_register_executes(pe);
}
