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
static const char *ng0 = "D:/Library_Projects_FPGA/VegaVAD/ipcore_dir/floating_point_mult.v";



static void Cont_1527_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 240448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(1528, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 242960);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 242752);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_1527_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 240696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(1528, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 243024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 242768);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_1527_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 240944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(1529, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 243088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 242784);
    *((int *)t16) = 1;

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 241192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 43928U);
    t4 = *((char **)t2);
    t2 = (t0 + 43768U);
    t5 = *((char **)t2);
    t2 = (t0 + 43608U);
    t6 = *((char **)t2);
    t2 = (t0 + 43448U);
    t7 = *((char **)t2);
    t2 = (t0 + 43288U);
    t8 = *((char **)t2);
    t2 = (t0 + 43128U);
    t9 = *((char **)t2);
    t2 = (t0 + 42968U);
    t10 = *((char **)t2);
    t2 = (t0 + 42808U);
    t11 = *((char **)t2);
    t2 = (t0 + 42648U);
    t12 = *((char **)t2);
    t2 = (t0 + 42488U);
    t13 = *((char **)t2);
    t2 = (t0 + 42328U);
    t14 = *((char **)t2);
    t2 = (t0 + 42168U);
    t15 = *((char **)t2);
    t2 = (t0 + 42008U);
    t16 = *((char **)t2);
    t2 = (t0 + 41848U);
    t17 = *((char **)t2);
    t2 = (t0 + 41688U);
    t18 = *((char **)t2);
    t2 = (t0 + 41528U);
    t19 = *((char **)t2);
    t2 = (t0 + 56088U);
    t20 = *((char **)t2);
    t2 = (t0 + 219128U);
    t21 = *((char **)t2);
    xsi_vlogtype_concat(t3, 18, 18, 18U, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243152);
    t22 = (t2 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 262143U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t2, 0, 17);
    t34 = (t0 + 242800);
    *((int *)t34) = 1;

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 241440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 219128U);
    t4 = *((char **)t2);
    t2 = (t0 + 219128U);
    t5 = *((char **)t2);
    t2 = (t0 + 219128U);
    t6 = *((char **)t2);
    t2 = (t0 + 219128U);
    t7 = *((char **)t2);
    t2 = (t0 + 219128U);
    t8 = *((char **)t2);
    t2 = (t0 + 219128U);
    t9 = *((char **)t2);
    t2 = (t0 + 219128U);
    t10 = *((char **)t2);
    t2 = (t0 + 219128U);
    t11 = *((char **)t2);
    t2 = (t0 + 219128U);
    t12 = *((char **)t2);
    t2 = (t0 + 219128U);
    t13 = *((char **)t2);
    t2 = (t0 + 219128U);
    t14 = *((char **)t2);
    t2 = (t0 + 219128U);
    t15 = *((char **)t2);
    t2 = (t0 + 219128U);
    t16 = *((char **)t2);
    t2 = (t0 + 219128U);
    t17 = *((char **)t2);
    t2 = (t0 + 219128U);
    t18 = *((char **)t2);
    t2 = (t0 + 219128U);
    t19 = *((char **)t2);
    t2 = (t0 + 219128U);
    t20 = *((char **)t2);
    t2 = (t0 + 219128U);
    t21 = *((char **)t2);
    t2 = (t0 + 219128U);
    t22 = *((char **)t2);
    t2 = (t0 + 219128U);
    t23 = *((char **)t2);
    t2 = (t0 + 219128U);
    t24 = *((char **)t2);
    t2 = (t0 + 219128U);
    t25 = *((char **)t2);
    t2 = (t0 + 219128U);
    t26 = *((char **)t2);
    t2 = (t0 + 219128U);
    t27 = *((char **)t2);
    t2 = (t0 + 219128U);
    t28 = *((char **)t2);
    t2 = (t0 + 219128U);
    t29 = *((char **)t2);
    t2 = (t0 + 219128U);
    t30 = *((char **)t2);
    t2 = (t0 + 219128U);
    t31 = *((char **)t2);
    t2 = (t0 + 219128U);
    t32 = *((char **)t2);
    t2 = (t0 + 219128U);
    t33 = *((char **)t2);
    t2 = (t0 + 219128U);
    t34 = *((char **)t2);
    t2 = (t0 + 219128U);
    t35 = *((char **)t2);
    t2 = (t0 + 219128U);
    t36 = *((char **)t2);
    t2 = (t0 + 219128U);
    t37 = *((char **)t2);
    t2 = (t0 + 219128U);
    t38 = *((char **)t2);
    t2 = (t0 + 219128U);
    t39 = *((char **)t2);
    t2 = (t0 + 219128U);
    t40 = *((char **)t2);
    t2 = (t0 + 219128U);
    t41 = *((char **)t2);
    t2 = (t0 + 219128U);
    t42 = *((char **)t2);
    t2 = (t0 + 219128U);
    t43 = *((char **)t2);
    t2 = (t0 + 219128U);
    t44 = *((char **)t2);
    t2 = (t0 + 219128U);
    t45 = *((char **)t2);
    t2 = (t0 + 219128U);
    t46 = *((char **)t2);
    t2 = (t0 + 219128U);
    t47 = *((char **)t2);
    t2 = (t0 + 219128U);
    t48 = *((char **)t2);
    t2 = (t0 + 219128U);
    t49 = *((char **)t2);
    t2 = (t0 + 219128U);
    t50 = *((char **)t2);
    t2 = (t0 + 219128U);
    t51 = *((char **)t2);
    xsi_vlogtype_concat(t3, 48, 48, 48U, t51, 1, t50, 1, t49, 1, t48, 1, t47, 1, t46, 1, t45, 1, t44, 1, t43, 1, t42, 1, t41, 1, t40, 1, t39, 1, t38, 1, t37, 1, t36, 1, t35, 1, t34, 1, t33, 1, t32, 1, t31, 1, t30, 1, t29, 1, t28, 1, t27, 1, t26, 1, t25, 1, t24, 1, t23, 1, t22, 1, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243216);
    t52 = (t2 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    xsi_vlog_bit_copy(t55, 0, t3, 0, 48);
    xsi_driver_vfirst_trans(t2, 0, 47);
    t56 = (t0 + 242816);
    *((int *)t56) = 1;

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 241688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 211288U);
    t4 = *((char **)t2);
    t2 = (t0 + 211128U);
    t5 = *((char **)t2);
    t2 = (t0 + 210968U);
    t6 = *((char **)t2);
    t2 = (t0 + 210808U);
    t7 = *((char **)t2);
    t2 = (t0 + 210648U);
    t8 = *((char **)t2);
    t2 = (t0 + 210488U);
    t9 = *((char **)t2);
    t2 = (t0 + 210328U);
    t10 = *((char **)t2);
    t2 = (t0 + 210168U);
    t11 = *((char **)t2);
    t2 = (t0 + 210008U);
    t12 = *((char **)t2);
    t2 = (t0 + 209848U);
    t13 = *((char **)t2);
    t2 = (t0 + 209688U);
    t14 = *((char **)t2);
    t2 = (t0 + 209528U);
    t15 = *((char **)t2);
    t2 = (t0 + 209368U);
    t16 = *((char **)t2);
    t2 = (t0 + 209208U);
    t17 = *((char **)t2);
    t2 = (t0 + 209048U);
    t18 = *((char **)t2);
    t2 = (t0 + 208888U);
    t19 = *((char **)t2);
    t2 = (t0 + 208728U);
    t20 = *((char **)t2);
    t2 = (t0 + 218968U);
    t21 = *((char **)t2);
    t2 = (t0 + 219128U);
    t22 = *((char **)t2);
    t2 = (t0 + 219128U);
    t23 = *((char **)t2);
    t2 = (t0 + 219128U);
    t24 = *((char **)t2);
    t2 = (t0 + 219128U);
    t25 = *((char **)t2);
    t2 = (t0 + 219128U);
    t26 = *((char **)t2);
    t2 = (t0 + 219128U);
    t27 = *((char **)t2);
    t2 = (t0 + 219128U);
    t28 = *((char **)t2);
    t2 = (t0 + 219128U);
    t29 = *((char **)t2);
    t2 = (t0 + 219128U);
    t30 = *((char **)t2);
    t2 = (t0 + 219128U);
    t31 = *((char **)t2);
    t2 = (t0 + 219128U);
    t32 = *((char **)t2);
    t2 = (t0 + 219128U);
    t33 = *((char **)t2);
    t2 = (t0 + 219128U);
    t34 = *((char **)t2);
    t2 = (t0 + 219128U);
    t35 = *((char **)t2);
    t2 = (t0 + 219128U);
    t36 = *((char **)t2);
    t2 = (t0 + 219128U);
    t37 = *((char **)t2);
    t2 = (t0 + 219128U);
    t38 = *((char **)t2);
    t2 = (t0 + 219128U);
    t39 = *((char **)t2);
    t2 = (t0 + 219128U);
    t40 = *((char **)t2);
    t2 = (t0 + 219128U);
    t41 = *((char **)t2);
    t2 = (t0 + 219128U);
    t42 = *((char **)t2);
    t2 = (t0 + 219128U);
    t43 = *((char **)t2);
    t2 = (t0 + 219128U);
    t44 = *((char **)t2);
    t2 = (t0 + 219128U);
    t45 = *((char **)t2);
    t2 = (t0 + 219128U);
    t46 = *((char **)t2);
    t2 = (t0 + 219128U);
    t47 = *((char **)t2);
    t2 = (t0 + 219128U);
    t48 = *((char **)t2);
    t2 = (t0 + 219128U);
    t49 = *((char **)t2);
    t2 = (t0 + 219128U);
    t50 = *((char **)t2);
    t2 = (t0 + 219128U);
    t51 = *((char **)t2);
    xsi_vlogtype_concat(t3, 48, 48, 48U, t51, 1, t50, 1, t49, 1, t48, 1, t47, 1, t46, 1, t45, 1, t44, 1, t43, 1, t42, 1, t41, 1, t40, 1, t39, 1, t38, 1, t37, 1, t36, 1, t35, 1, t34, 1, t33, 1, t32, 1, t31, 1, t30, 1, t29, 1, t28, 1, t27, 1, t26, 1, t25, 1, t24, 1, t23, 1, t22, 1, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243280);
    t52 = (t2 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    xsi_vlog_bit_copy(t55, 0, t3, 0, 48);
    xsi_driver_vfirst_trans(t2, 0, 47);
    t56 = (t0 + 242832);
    *((int *)t56) = 1;

LAB1:    return;
}

static void implSig4_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 241936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 219288U);
    t4 = *((char **)t2);
    t2 = (t0 + 219128U);
    t5 = *((char **)t2);
    t2 = (t0 + 219288U);
    t6 = *((char **)t2);
    t2 = (t0 + 219288U);
    t7 = *((char **)t2);
    t2 = (t0 + 219128U);
    t8 = *((char **)t2);
    t2 = (t0 + 219128U);
    t9 = *((char **)t2);
    t2 = (t0 + 219128U);
    t10 = *((char **)t2);
    t2 = (t0 + 219128U);
    t11 = *((char **)t2);
    xsi_vlogtype_concat(t3, 8, 8, 8U, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243344);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t15, 0, 8);
    t16 = 255U;
    t17 = t16;
    t18 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t16 = (t16 & t19);
    t20 = *((unsigned int *)t18);
    t17 = (t17 & t20);
    t21 = (t15 + 4);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 | t16);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t23 | t17);
    xsi_driver_vfirst_trans(t2, 0, 7);
    t24 = (t0 + 242848);
    *((int *)t24) = 1;

LAB1:    return;
}

static void implSig5_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 242184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 219128U);
    t4 = *((char **)t2);
    t2 = (t0 + 219128U);
    t5 = *((char **)t2);
    t2 = (t0 + 219128U);
    t6 = *((char **)t2);
    t2 = (t0 + 219128U);
    t7 = *((char **)t2);
    t2 = (t0 + 219128U);
    t8 = *((char **)t2);
    t2 = (t0 + 219128U);
    t9 = *((char **)t2);
    t2 = (t0 + 219128U);
    t10 = *((char **)t2);
    t2 = (t0 + 219128U);
    t11 = *((char **)t2);
    t2 = (t0 + 219128U);
    t12 = *((char **)t2);
    t2 = (t0 + 219128U);
    t13 = *((char **)t2);
    t2 = (t0 + 219128U);
    t14 = *((char **)t2);
    t2 = (t0 + 219128U);
    t15 = *((char **)t2);
    t2 = (t0 + 219128U);
    t16 = *((char **)t2);
    t2 = (t0 + 219128U);
    t17 = *((char **)t2);
    t2 = (t0 + 219128U);
    t18 = *((char **)t2);
    t2 = (t0 + 219128U);
    t19 = *((char **)t2);
    t2 = (t0 + 219128U);
    t20 = *((char **)t2);
    t2 = (t0 + 219128U);
    t21 = *((char **)t2);
    xsi_vlogtype_concat(t3, 18, 18, 18U, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243408);
    t22 = (t2 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 262143U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t2, 0, 17);
    t34 = (t0 + 242864);
    *((int *)t34) = 1;

LAB1:    return;
}

static void implSig6_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 242432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 49048U);
    t4 = *((char **)t2);
    t2 = (t0 + 48888U);
    t5 = *((char **)t2);
    t2 = (t0 + 48728U);
    t6 = *((char **)t2);
    t2 = (t0 + 48568U);
    t7 = *((char **)t2);
    t2 = (t0 + 48408U);
    t8 = *((char **)t2);
    t2 = (t0 + 48248U);
    t9 = *((char **)t2);
    t2 = (t0 + 48088U);
    t10 = *((char **)t2);
    t2 = (t0 + 47928U);
    t11 = *((char **)t2);
    t2 = (t0 + 47768U);
    t12 = *((char **)t2);
    t2 = (t0 + 47608U);
    t13 = *((char **)t2);
    t2 = (t0 + 47448U);
    t14 = *((char **)t2);
    t2 = (t0 + 47288U);
    t15 = *((char **)t2);
    t2 = (t0 + 47128U);
    t16 = *((char **)t2);
    t2 = (t0 + 46968U);
    t17 = *((char **)t2);
    t2 = (t0 + 46808U);
    t18 = *((char **)t2);
    t2 = (t0 + 46648U);
    t19 = *((char **)t2);
    t2 = (t0 + 56088U);
    t20 = *((char **)t2);
    t2 = (t0 + 219128U);
    t21 = *((char **)t2);
    xsi_vlogtype_concat(t3, 18, 18, 18U, t21, 1, t20, 1, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 243472);
    t22 = (t2 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 262143U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t2, 0, 17);
    t34 = (t0 + 242880);
    *((int *)t34) = 1;

LAB1:    return;
}


extern void work_m_00000000001561758199_1007817941_init()
{
	static char *pe[] = {(void *)Cont_1527_0,(void *)Cont_1527_1,(void *)Cont_1527_2,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute,(void *)implSig6_execute};
	xsi_register_didat("work_m_00000000001561758199_1007817941", "isim/VegaVAD_main_tb_isim_beh.exe.sim/work/m_00000000001561758199_1007817941.didat");
	xsi_register_executes(pe);
}
