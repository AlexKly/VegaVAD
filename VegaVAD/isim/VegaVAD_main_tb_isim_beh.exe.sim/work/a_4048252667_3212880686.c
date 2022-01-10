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
static const char *ng0 = "D:/Library_Projects_FPGA/VegaVAD/get_frames.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_4048252667_3212880686_p_0(char *t0)
{
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    int t20;
    int t21;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(96, ng0);
    t1 = xsi_get_transient_memory(16384U);
    memset(t1, 0, 16384U);
    t3 = t1;
    t15 = (32U * 1U);
    t4 = t3;
    memset(t4, (unsigned char)2, t15);
    t2 = (t15 != 0);
    if (t2 == 1)
        goto LAB24;

LAB25:    t7 = (t0 + 5864);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16384U);
    xsi_driver_first_trans_fast(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1672U);
    t10 = *((char **)t3);
    t3 = (t0 + 5864);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 32U);
    xsi_driver_first_trans_delta(t3, 0U, 32U, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5928);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t15 = (0 - 0);
    t16 = (t15 * 32U);
    t17 = (0 + t16);
    t1 = (t3 + t17);
    t4 = (t0 + 5864);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 16352U);
    xsi_driver_first_trans_delta(t4, 32U, 16352U, 0LL);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9692U);
    t4 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t18, t3, t1, (unsigned char)3);
    t7 = (t18 + 12U);
    t15 = *((unsigned int *)t7);
    t16 = (1U * t15);
    t2 = (8U != t16);
    if (t2 == 1)
        goto LAB19;

LAB20:    t10 = (t0 + 6120);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9692U);
    t4 = (t0 + 3688U);
    t7 = *((char **)t4);
    t20 = *((int *)t7);
    t21 = (t20 - 1);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t18, t21, 8);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t18);
    if (t2 != 0)
        goto LAB21;

LAB23:
LAB22:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 9660U);
    t7 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t18, t4, t1, (unsigned char)3);
    t10 = (t18 + 12U);
    t15 = *((unsigned int *)t10);
    t16 = (1U * t15);
    t6 = (10U != t16);
    if (t6 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 5992);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t19 = *((char **)t14);
    memcpy(t19, t7, 10U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 9660U);
    t4 = (t0 + 3568U);
    t7 = *((char **)t4);
    t20 = *((int *)t7);
    t21 = (t20 - 1);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t18, t21, 10);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t18);
    if (t2 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB12;

LAB14:    xsi_size_not_matching(10U, t16, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(82, ng0);
    t10 = (t0 + 5928);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 5992);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 10U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6056);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_size_not_matching(8U, t16, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(89, ng0);
    t10 = (t0 + 5928);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(91, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 6120);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB22;

LAB24:    t16 = (16384U / t15);
    xsi_mem_set_data(t3, t3, t15, t16);
    goto LAB25;

}

static void work_a_4048252667_3212880686_p_1(char *t0)
{
    char t16[16];
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t17;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5752);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(103, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(115, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 6184);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 10U);
    xsi_driver_first_trans_fast(t4);

LAB6:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 9676U);
    t4 = (t0 + 3568U);
    t7 = *((char **)t4);
    t17 = *((int *)t7);
    t24 = (t17 - 1);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, t24, 10);
    t5 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t1, t4, t16);
    if (t5 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB5:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 2472U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 9676U);
    t4 = (t0 + 3568U);
    t7 = *((char **)t4);
    t17 = *((int *)t7);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, t17, 10);
    t2 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t1, t4, t16);
    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 6248);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB12:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(105, ng0);
    t3 = xsi_get_transient_memory(10U);
    memset(t3, 0, 10U);
    t10 = t3;
    memset(t10, (unsigned char)2, 10U);
    t11 = (t0 + 6184);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 10U);
    xsi_driver_first_trans_fast(t11);
    goto LAB9;

LAB11:    xsi_set_current_line(108, ng0);
    t10 = (t0 + 2792U);
    t11 = *((char **)t10);
    t10 = (t0 + 9676U);
    t12 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t18, t11, t10, (unsigned char)3);
    t13 = (t18 + 12U);
    t19 = *((unsigned int *)t13);
    t20 = (1U * t19);
    t5 = (10U != t20);
    if (t5 == 1)
        goto LAB14;

LAB15:    t14 = (t0 + 6184);
    t15 = (t14 + 56U);
    t21 = *((char **)t15);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 10U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 6248);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_size_not_matching(10U, t20, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(119, ng0);
    t10 = (t0 + 2792U);
    t12 = *((char **)t10);
    t10 = (t0 + 9676U);
    t13 = (t0 + 42559);
    t15 = (t18 + 0U);
    t21 = (t15 + 0U);
    *((int *)t21) = 0;
    t21 = (t15 + 4U);
    *((int *)t21) = 8;
    t21 = (t15 + 8U);
    *((int *)t21) = 1;
    t25 = (8 - 0);
    t19 = (t25 * 1);
    t19 = (t19 + 1);
    t21 = (t15 + 12U);
    *((unsigned int *)t21) = t19;
    t9 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t12, t10, t13, t18);
    if (t9 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t19 = (0 - 0);
    t20 = (t19 * 32U);
    t29 = (0 + t20);
    t1 = (t3 + t29);
    t4 = (t0 + 6312);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 16352U);
    xsi_driver_first_trans_delta(t4, 32U, 16352U, 0LL);

LAB23:    goto LAB17;

LAB19:    t10 = (t0 + 3112U);
    t11 = *((char **)t10);
    t6 = *((unsigned char *)t11);
    t8 = (t6 == (unsigned char)3);
    t2 = t8;
    goto LAB21;

LAB22:    xsi_set_current_line(120, ng0);
    t21 = (t0 + 2152U);
    t22 = *((char **)t21);
    t21 = (t0 + 6312);
    t23 = (t21 + 56U);
    t26 = *((char **)t23);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 16384U);
    xsi_driver_first_trans_fast(t21);
    goto LAB23;

}

static void work_a_4048252667_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(128, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5768);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4048252667_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5784);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(132, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t3 = (t0 + 3568U);
    t5 = *((char **)t3);
    t6 = *((int *)t5);
    t7 = (t6 - 1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t3 = (t4 + t11);
    t12 = (t0 + 6440);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 32U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

}


extern void work_a_4048252667_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4048252667_3212880686_p_0,(void *)work_a_4048252667_3212880686_p_1,(void *)work_a_4048252667_3212880686_p_2,(void *)work_a_4048252667_3212880686_p_3};
	xsi_register_didat("work_a_4048252667_3212880686", "isim/VegaVAD_main_tb_isim_beh.exe.sim/work/a_4048252667_3212880686.didat");
	xsi_register_executes(pe);
}
