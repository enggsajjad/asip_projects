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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *WORK_P_1281810360;
char *IEEE_P_3620187407;
char *IEEE_P_0774719531;
char *WORK_P_1077196233;
char *WORK_P_3006358244;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *WORK_P_3769383182;
char *IEEE_P_1367372525;
char *IEEE_P_2717149903;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    std_textio_init();
    ieee_p_2592010699_init();
    ieee_p_3564397177_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    work_p_1281810360_init();
    work_p_1077196233_init();
    work_p_3006358244_init();
    work_p_3769383182_init();
    ieee_p_1242562249_init();
    ieee_p_0774719531_init();
    work_a_4108638228_0328640067_init();
    work_a_4285413486_0328640067_init();
    work_a_0684508146_0328640067_init();
    work_a_2246649270_3665547200_init();
    work_a_2126931320_0328640067_init();
    work_a_1774022971_0328640067_init();
    work_a_1289584530_0328640067_init();
    work_a_2210476963_0328640067_init();
    work_a_2650432200_0328640067_init();
    work_a_0411102404_0328640067_init();
    work_a_3872525667_0328640067_init();
    work_a_0319425726_0328640067_init();
    work_a_2377342474_0328640067_init();
    work_a_2251931248_0328640067_init();
    work_a_0484063254_0328640067_init();
    work_a_1944174509_0328640067_init();
    work_a_3125894606_0328640067_init();
    work_a_3435330954_0328640067_init();
    work_a_3058952342_0328640067_init();
    work_a_3343392240_0328640067_init();
    work_a_3541335672_0328640067_init();
    work_a_3052659622_0328640067_init();
    work_a_3860419582_0328640067_init();
    work_a_1277602751_0328640067_init();
    work_a_2732664627_0328640067_init();
    work_a_0053020839_0328640067_init();
    work_a_3894326180_0328640067_init();
    work_a_3780378562_0328640067_init();
    work_a_0924860473_0328640067_init();
    work_a_1848619916_0328640067_init();
    work_a_0826948408_0328640067_init();
    work_a_2732578314_3665547200_init();
    work_a_2855351455_0328640067_init();
    work_a_1150704735_0328640067_init();
    work_a_0185818260_0328640067_init();
    work_a_0556498814_0328640067_init();
    work_a_1770414107_1516540902_init();
    work_a_0483747514_1516540902_init();
    work_a_0990683729_1516540902_init();
    work_a_0042049172_1516540902_init();
    work_a_0083906477_1516540902_init();
    work_a_2398801360_1516540902_init();
    work_a_1704260185_1516540902_init();
    work_a_2493757771_1516540902_init();
    work_a_3354325386_1516540902_init();
    work_a_2272401217_1516540902_init();
    work_a_2023545526_1516540902_init();
    work_a_0477304923_1516540902_init();
    work_a_1049218217_1516540902_init();
    work_a_2777203635_1516540902_init();
    work_a_1726018397_1516540902_init();
    work_a_2259736337_1516540902_init();
    xilinxcorelib_a_0723960016_2959432447_init();
    xilinxcorelib_a_3505060233_1709443946_init();
    xilinxcorelib_a_2576584034_0543512595_init();
    xilinxcorelib_a_3545040396_3212880686_init();
    work_a_3018030314_1109590441_init();
    xilinxcorelib_a_3268040145_2959432447_init();
    xilinxcorelib_a_1899173115_1709443946_init();
    xilinxcorelib_a_2941610384_0543512595_init();
    xilinxcorelib_a_1543584929_3212880686_init();
    work_a_3170630634_3765871145_init();
    work_a_3256003729_3212880686_init();
    work_a_0054217971_3212880686_init();
    xilinxcorelib_a_2271922464_3212880686_init();
    xilinxcorelib_a_1417596967_3212880686_init();
    xilinxcorelib_a_3846056842_3212880686_init();
    work_a_2092872312_2663538191_init();
    work_a_1596229324_0632001823_init();
    work_a_1566718101_0632001823_init();
    work_a_4055617366_3212880686_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_3705309847_3676810390_init();
    unisim_a_2531160992_3676810390_init();
    unisim_a_1347458946_3676810390_init();
    unisim_a_0198283990_3676810390_init();
    unisim_a_3444408037_3676810390_init();
    unisim_a_3163574381_0086195937_init();
    unisim_a_2233298088_0124092600_init();
    unisim_a_0936227941_2005071195_init();
    unisim_a_0868425105_1864968857_init();
    unisim_a_3822252837_3752513572_init();
    unisim_a_3702704980_1602505438_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_3484885994_2523279426_init();
    unisim_a_2737004232_3731405331_init();
    unisim_a_3435466905_3731405331_init();
    unisim_a_3679869664_3731405331_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1398595224_1990404599_init();
    unisim_a_0350208134_1521797606_init();
    work_a_0844563045_2111220564_init();
    work_a_1061777954_2111220564_init();
    work_a_0330548623_3212880686_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_4167558488_0695499473_init();
    unisim_a_0897948483_3703648270_init();
    unisim_a_0420191103_3703648270_init();
    unisim_a_0435408399_0783196562_init();
    unisim_a_2236288050_0551479669_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_1885017729_2930107152_init();
    work_a_0911531599_3212880686_init();
    work_a_1359985548_2696159307_init();
    work_a_2206167178_0626670055_init();
    work_a_3696113720_0923701488_init();
    work_a_2888273308_3212880686_init();
    work_a_3671711236_2372691052_init();


    xsi_register_tops("work_a_3671711236_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_1281810360 = xsi_get_engine_memory("work_p_1281810360");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_1077196233 = xsi_get_engine_memory("work_p_1077196233");
    WORK_P_3006358244 = xsi_get_engine_memory("work_p_3006358244");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_3769383182 = xsi_get_engine_memory("work_p_3769383182");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
