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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003422558956_3147954737_init();
    work_m_00000000003433788339_3233645745_init();
    work_m_00000000003991025051_2508459249_init();
    work_m_00000000002170538264_0986380893_init();
    work_m_00000000004141019624_1926830863_init();
    work_m_00000000002788525101_1801416009_init();
    work_m_00000000002264087205_0693138697_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002264087205_0693138697");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
