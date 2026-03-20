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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/FRKT/shev/Lab401N/Debouncer.v";



static void Always_24_0(char *t0)
{
    char t13[8];
    char t14[8];
    char t55[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t2) == 0)
        goto LAB10;

LAB12:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB13:    t5 = (t0 + 1928);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t15 = *((unsigned int *)t13);
    t16 = *((unsigned int *)t12);
    t17 = (t15 & t16);
    *((unsigned int *)t14) = t17;
    t18 = (t13 + 4);
    t19 = (t12 + 4);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t18);
    t22 = *((unsigned int *)t19);
    t23 = (t21 | t22);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB14;

LAB15:
LAB16:    t46 = (t14 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t14);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t18 = (t12 + 4);
    t6 = *((unsigned int *)t18);
    t7 = (~(t6));
    t8 = *((unsigned int *)t12);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t18) == 0)
        goto LAB21;

LAB23:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;

LAB24:    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t13);
    t17 = (t15 & t16);
    *((unsigned int *)t14) = t17;
    t20 = (t4 + 4);
    t28 = (t13 + 4);
    t29 = (t14 + 4);
    t21 = *((unsigned int *)t20);
    t22 = *((unsigned int *)t28);
    t23 = (t21 | t22);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t29);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB25;

LAB26:
LAB27:    t53 = (t0 + 1368U);
    t54 = *((char **)t53);
    t47 = *((unsigned int *)t14);
    t48 = *((unsigned int *)t54);
    t49 = (t47 & t48);
    *((unsigned int *)t55) = t49;
    t53 = (t14 + 4);
    t56 = (t54 + 4);
    t57 = (t55 + 4);
    t50 = *((unsigned int *)t53);
    t51 = *((unsigned int *)t56);
    t58 = (t50 | t51);
    *((unsigned int *)t57) = t58;
    t59 = *((unsigned int *)t57);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB28;

LAB29:
LAB30:    t81 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t81, t55, 0, 0, 1, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(25, ng0);

LAB9:    xsi_set_current_line(26, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    t11 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB14:    t26 = *((unsigned int *)t14);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t14) = (t26 | t27);
    t28 = (t13 + 4);
    t29 = (t12 + 4);
    t30 = *((unsigned int *)t13);
    t31 = (~(t30));
    t32 = *((unsigned int *)t28);
    t33 = (~(t32));
    t34 = *((unsigned int *)t12);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (~(t36));
    t38 = (t31 & t33);
    t39 = (t35 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t42 & t40);
    t43 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t43 & t41);
    t44 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t44 & t40);
    t45 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t45 & t41);
    goto LAB16;

LAB17:    xsi_set_current_line(28, ng0);

LAB20:    xsi_set_current_line(29, ng0);
    t52 = (t0 + 1048U);
    t53 = *((char **)t52);
    t52 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t52, t53, 0, 0, 1, 0LL);
    goto LAB19;

LAB21:    *((unsigned int *)t13) = 1;
    goto LAB24;

LAB25:    t26 = *((unsigned int *)t14);
    t27 = *((unsigned int *)t29);
    *((unsigned int *)t14) = (t26 | t27);
    t46 = (t4 + 4);
    t52 = (t13 + 4);
    t30 = *((unsigned int *)t4);
    t31 = (~(t30));
    t32 = *((unsigned int *)t46);
    t33 = (~(t32));
    t34 = *((unsigned int *)t13);
    t35 = (~(t34));
    t36 = *((unsigned int *)t52);
    t37 = (~(t36));
    t38 = (t31 & t33);
    t39 = (t35 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t42 & t40);
    t43 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t43 & t41);
    t44 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t44 & t40);
    t45 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t45 & t41);
    goto LAB27;

LAB28:    t61 = *((unsigned int *)t55);
    t62 = *((unsigned int *)t57);
    *((unsigned int *)t55) = (t61 | t62);
    t63 = (t14 + 4);
    t64 = (t54 + 4);
    t65 = *((unsigned int *)t14);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t54);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t77 & t75);
    t78 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t78 & t76);
    t79 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t79 & t75);
    t80 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t80 & t76);
    goto LAB30;

}


extern void work_m_00000000003863053430_1418117064_init()
{
	static char *pe[] = {(void *)Always_24_0};
	xsi_register_didat("work_m_00000000003863053430_1418117064", "isim/debouncer_tf_isim_beh.exe.sim/work/m_00000000003863053430_1418117064.didat");
	xsi_register_executes(pe);
}
