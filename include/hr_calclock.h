#include <sys/time.h>


//#include "/home/kau/zfs/lib/libspl/include/sys/time.h"
//#include "/home/kau/zfs/lib/libspl/include/linux/smp.h"
//#include <linux/smp.h>

extern unsigned long long chk_t, chk_c;
extern unsigned long long chk_t_1, chk_c_1;

extern unsigned long long xxx_t, xxx_c;

extern unsigned long long a_t, a_c;
extern unsigned long long b_t, b_c;
extern unsigned long long c_t, c_c;
extern unsigned long long d_t, d_c;
//extern unsigned long long e_t, e_c;
//extern unsigned long long f_t, f_c;
extern unsigned long long g_t, g_c;
extern unsigned long long h_t, h_c;

//extern unsigned long long dbuf_t, dbuf_c;
extern unsigned long long ee_t1, ee_c1;

extern unsigned long long aa_t, aa_c;
extern unsigned long long bb_t, bb_c;
extern unsigned long long cc_t, cc_c;
extern unsigned long long dd_t, dd_c;
extern unsigned long long ee_t, ee_c;
extern unsigned long long ff_t, ff_c;
extern unsigned long long gg_t, gg_c;
extern unsigned long long hh_t, hh_c;
extern unsigned long long ii_t, ii_c;
extern unsigned long long jj_t, jj_c;
extern unsigned long long kk_t, kk_c;
extern unsigned long long ll_t, ll_c;
extern unsigned long long m_t, m_c;
extern unsigned long long n_t, n_c;
extern unsigned long long o_t, o_c;
extern unsigned long long p_t, p_c;
extern unsigned long long q_t, q_c;
extern unsigned long long r_t, r_c;
extern unsigned long long s_t, s_c;
extern unsigned long long t_t, t_c;

extern unsigned long long xx_t, xx_c;


extern unsigned long long eea_t, eea_c;
extern unsigned long long eeb_t, eeb_c;
extern unsigned long long eec_t, eec_c;
extern unsigned long long eed_t, eed_c;
extern unsigned long long eee_t, eee_c;
extern unsigned long long eef_t, eef_c;
extern unsigned long long aabd_t, aabd_c;
extern unsigned long long aabda_t, aabda_c;
extern unsigned long long aabdb_t, aabdb_c;
extern unsigned long long aabdc_t, aabdc_c;
extern unsigned long long aabdd_t, aabdd_c;

extern unsigned long long abd_a_t, abd_a_c;
extern unsigned long long abd_b_t, abd_b_c;
extern unsigned long long abd_c_t, abd_c_c;
extern unsigned long long abd_d_t, abd_d_c;
extern unsigned long long abd_e_t, abd_e_c;

extern unsigned long long iia_t, iia_c;
extern unsigned long long iib_t, iib_c;
extern unsigned long long iic_t, iic_c;
extern unsigned long long iid_t, iid_c;
extern unsigned long long enter_t, enter_c;
extern unsigned long long exit_t, exit_c;
extern unsigned long long iiba_t, iiba_c;
extern unsigned long long iibb_t, iibb_c;
extern unsigned long long iibc_t, iibc_c;

extern unsigned long long j_t, j_c;
extern unsigned long long ja_t, ja_c;
extern unsigned long long jb_t, jb_c;
extern unsigned long long jc_t, jc_c;

extern unsigned long long jba_t, jba_c;
extern unsigned long long jbb_t, jbb_c;
extern unsigned long long jbc_t, jbc_c;
extern unsigned long long jca_t, jca_c;
extern unsigned long long jcb_t, jcb_c;
extern unsigned long long jcc_t, jcc_c;
extern unsigned long long jcd_t, jcd_c;


extern unsigned long long k_t, k_c;
extern unsigned long long ka_t, ka_c;
extern unsigned long long kb_t, kb_c;
extern unsigned long long kc_t, kc_c;
extern unsigned long long kd_t, kd_c;
extern unsigned long long ke_t, ke_c;

#define MILLION 1000000
#define NUMCORE 32
#define calclock(timevalue, total_time, total_count) do{      \
	unsigned long long timedelay;		               \
	timedelay = timevalue[1] - timevalue[0];		\
	*total_time += timedelay;\
	*total_count += 1;\
} while(0)  
/*
 *     *total_time += timedelay;\
 *         *total_count += 1;\
 *             __sync_fetch_and_add(total_time, timedelay); \
 *                 __sync_fetch_and_add(total_count, 1); \
 *                 */

