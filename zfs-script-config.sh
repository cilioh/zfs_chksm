export KERNELSRC=/usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64
export KERNELBUILD=/usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64
export KERNELSRCVER=3.10.0-1062.1.1.el7_myms.x86_64
export KERNELMOD=/lib/modules/${KERNELSRCVER}/kernel

export SPLSRC=/usr/src/spl-0.7.13
export SPLBUILD=/usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64
export SPLSRCVER=0.7.13-1

export SRCDIR=/home/kau/zfs_chksm
export BUILDDIR=/home/kau/zfs_chksm
export LIBDIR=${BUILDDIR}/lib
export CMDDIR=${BUILDDIR}/cmd
export MODDIR=${BUILDDIR}/module
export SCRIPTDIR=${BUILDDIR}/scripts
export ZPOOLDIR=${BUILDDIR}/scripts/zpool-config
export ZPIOSDIR=${BUILDDIR}/scripts/zpios-test
export ZPIOSPROFILEDIR=${BUILDDIR}/scripts/zpios-profile
export ETCDIR=${SRCDIR}/etc
export TESTSDIR=${SRCDIR}/tests
export RUNFILEDIR=${TESTSDIR}/runfiles
export UDEVRULEDIR=${BUILDDIR}/udev/rules.d

export ZEDLET_ETC_DIR=${SRCDIR}/cmd/zed/zed.d
export ZEDLET_LIBEXEC_DIR=${SRCDIR}/cmd/zed/zed.d
export ZPOOL_SCRIPT_DIR=${SRCDIR}/cmd/zpool/zpool.d
export ZPOOL_SCRIPTS_PATH=${SRCDIR}/cmd/zpool/zpool.d

export ZDB=${CMDDIR}/zdb/zdb
export ZFS=${CMDDIR}/zfs/zfs
export ZHACK=${CMDDIR}/zhack/zhack
export ZINJECT=${CMDDIR}/zinject/zinject
export ZPOOL=${CMDDIR}/zpool/zpool
export ZTEST=${CMDDIR}/ztest/ztest
export ZPIOS=${CMDDIR}/zpios/zpios
export RAIDZ_TEST=${CMDDIR}/raidz_test/raidz_test
export ARC_SUMMARY=${CMDDIR}/arc_summary/arc_summary.py
export ARCSTAT=${CMDDIR}/arcstat/arcstat.py
export DBUFSTAT=${CMDDIR}/dbufstat/dbufstat.py
export ZED=${CMDDIR}/zed/zed

export COMMON_SH=${SCRIPTDIR}/common.sh
export ZFS_SH=${SCRIPTDIR}/zfs.sh
export ZPOOL_CREATE_SH=${SCRIPTDIR}/zpool-create.sh
export ZPIOS_SH=${SCRIPTDIR}/zpios.sh
export ZPIOS_SURVEY_SH=${SCRIPTDIR}/zpios-survey.sh

# Test Suite Specific Commands
export NOINUSE_CHECK=1
export TEST_RUNNER=${TESTSDIR}/test-runner/cmd/test-runner.py
export STF_TOOLS=${TESTSDIR}/test-runner
export STF_SUITE=${TESTSDIR}/zfs-tests

export CHG_USR_EXEC=${TESTSDIR}/zfs-tests/cmd/chg_usr_exec/chg_usr_exec
export DEVNAME2DEVID=${TESTSDIR}/zfs-tests/cmd/devname2devid/devname2devid
export DIR_RD_UPDATE=${TESTSDIR}/zfs-tests/cmd/dir_rd_update/dir_rd_update
export FILE_CHECK=${TESTSDIR}/zfs-tests/cmd/file_check/file_check
export FILE_TRUNC=${TESTSDIR}/zfs-tests/cmd/file_trunc/file_trunc
export FILE_WRITE=${TESTSDIR}/zfs-tests/cmd/file_write/file_write
export LARGEST_FILE=${TESTSDIR}/zfs-tests/cmd/largest_file/largest_file
export MKBUSY=${TESTSDIR}/zfs-tests/cmd/mkbusy/mkbusy
export MKFILE=${TESTSDIR}/zfs-tests/cmd/mkfile/mkfile
export MKFILES=${TESTSDIR}/zfs-tests/cmd/mkfiles/mkfiles
export MKTREE=${TESTSDIR}/zfs-tests/cmd/mktree/mktree
export MMAP_EXEC=${TESTSDIR}/zfs-tests/cmd/mmap_exec/mmap_exec
export MMAPWRITE=${TESTSDIR}/zfs-tests/cmd/mmapwrite/mmapwrite
export RANDFREE_FILE=${TESTSDIR}/zfs-tests/cmd/randfree_file/randfree_file
export READMMAP=${TESTSDIR}/zfs-tests/cmd/readmmap/readmmap
export RENAME_DIR=${TESTSDIR}/zfs-tests/cmd/rename_dir/rename_dir
export RM_LNKCNT_ZERO_FILE=${TESTSDIR}/zfs-tests/cmd/rm_lnkcnt_zero_file/rm_lnkcnt_zero_file
export THREADSAPPEND=${TESTSDIR}/zfs-tests/cmd/threadsappend/threadsappend
export XATTRTEST=${TESTSDIR}/zfs-tests/cmd/xattrtest/xattrtest

export INTREE=1
export LDMOD=/sbin/insmod
export GDB="/usr/bin/libtool --mode=execute gdb"

export ZED_PIDFILE=${localstatedir}/run/zed.pid

export KERNEL_MODULES=(                               \
        ${KERNELMOD}/lib/zlib_deflate/zlib_deflate.ko \
        ${KERNELMOD}/lib/zlib_inflate/zlib_inflate.ko \
)

export SPL_MODULES=(                                  \
        ${SPLBUILD}/module/spl/spl.ko                 \
        ${SPLBUILD}/module/splat/splat.ko             \
)

export ZFS_MODULES=(                                  \
        ${MODDIR}/avl/zavl.ko                         \
        ${MODDIR}/nvpair/znvpair.ko                   \
        ${MODDIR}/unicode/zunicode.ko                 \
        ${MODDIR}/zcommon/zcommon.ko                  \
        ${MODDIR}/icp/icp.ko                          \
        ${MODDIR}/zfs/zfs.ko                          \
)

export ZPIOS_MODULES=(                                \
        ${MODDIR}/zpios/zpios.ko                      \
)

export MODULES=(                                      \
        ${SPL_MODULES[*]}                             \
        ${ZFS_MODULES[*]}                             \
)
