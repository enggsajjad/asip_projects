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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *WORK_P_3006358244;
char *IEEE_P_3564397177;
char *IEEE_P_3499444699;
char *WORK_P_3769383182;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_1281810360;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *WORK_P_1077196233;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_1281810360_init();
    work_p_1077196233_init();
    work_p_3006358244_init();
    work_p_3769383182_init();
    xilinxcorelib_a_0723960016_2959432447_init();
    xilinxcorelib_a_3505060233_1709443946_init();
    xilinxcorelib_a_2576584034_0543512595_init();
    xilinxcorelib_a_3545040396_3212880686_init();
    work_a_3018030314_1109590441_init();
    work_a_2116183969_2372691052_init();


    xsi_register_tops("work_a_2116183969_2372691052");

    WORK_P_3006358244 = xsi_get_engine_memory("work_p_3006358244");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_3769383182 = xsi_get_engine_memory("work_p_3769383182");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_1281810360 = xsi_get_engine_memory("work_p_1281810360");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_1077196233 = xsi_get_engine_memory("work_p_1077196233");

    return xsi_run_simulation(argc, argv);

}
