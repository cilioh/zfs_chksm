subdir-m += avl
subdir-m += nvpair
subdir-m += unicode
subdir-m += zcommon
subdir-m += zfs
subdir-m += zpios
subdir-m += icp

INSTALL_MOD_DIR ?= extra

ZFS_MODULE_CFLAGS += -include /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/spl_config.h
ZFS_MODULE_CFLAGS += -include /home/kau/zfs_chksm/zfs_config.h
ZFS_MODULE_CFLAGS += -I/home/kau/zfs_chksm/include -I/usr/src/spl-0.7.13/include -I/usr/src/spl-0.7.13
#ZFS_MODULE_CFLAGS += -I/include
#KBUILD_EXTRA_SYMBOLS += 
export ZFS_MODULE_CFLAGS

SUBDIR_TARGETS = icp

modules:
	@# Make the exported SPL symbols available to these modules.
	@# They may be in the root of SPL_OBJ when building against
	@# installed devel headers, or they may be in the module
	@# subdirectory when building against the spl source tree.
	@if [ -f /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/Module.symvers ]; then \
		cp /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/Module.symvers .; \
	elif [ -f /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/module/Module.symvers ]; then \
		cp /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/module/Module.symvers .; \
	else \
		echo -e "\n" \
		"*** Missing spl symbols ensure you have built the spl:\n" \
		"*** - /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/Module.symvers, or\n" \
		"*** - /usr/src/spl-0.7.13/3.10.0-1062.1.1.el7_myms.x86_64/module/Module.symvers\n"; \
		exit 1; \
	fi
	list='$(SUBDIR_TARGETS)'; for targetdir in $$list; do \
		$(MAKE) -C $$targetdir; \
	done
	$(MAKE) -C /usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64 M=`pwd`  CONFIG_ZFS=m $@

clean:
	@# Only cleanup the kernel build directories when CONFIG_KERNEL
	@# is defined.  This indicates that kernel modules should be built.
	$(MAKE) -C /usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64 M=`pwd`  $@

	if [ -f Module.symvers ]; then $(RM) Module.symvers; fi
	if [ -f Module.symvers ]; then $(RM) Module.symvers; fi
	if [ -f Module.markers ]; then $(RM) Module.markers; fi

modules_install:
	@# Install the kernel modules
	$(MAKE) -C /usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64 M=`pwd` $@ \
		INSTALL_MOD_PATH=$(DESTDIR)$(INSTALL_MOD_PATH) \
		INSTALL_MOD_DIR=$(INSTALL_MOD_DIR) \
		KERNELRELEASE=3.10.0-1062.1.1.el7_myms.x86_64
	@# Remove extraneous build products when packaging
	kmoddir=$(DESTDIR)$(INSTALL_MOD_PATH)/lib/modules/3.10.0-1062.1.1.el7_myms.x86_64; \
	if [ -n "$(DESTDIR)" ]; then \
		find $$kmoddir -name 'modules.*' | xargs $(RM); \
	fi
	sysmap=$(DESTDIR)$(INSTALL_MOD_PATH)/boot/System.map-3.10.0-1062.1.1.el7_myms.x86_64; \
	if [ -f $$sysmap ]; then \
		depmod -ae -F $$sysmap 3.10.0-1062.1.1.el7_myms.x86_64; \
	fi

modules_uninstall:
	@# Uninstall the kernel modules
	kmoddir=$(DESTDIR)$(INSTALL_MOD_PATH)/lib/modules/3.10.0-1062.1.1.el7_myms.x86_64
	list='$(subdir-m)'; for subdir in $$list; do \
		$(RM) -R $$kmoddir/$(INSTALL_MOD_DIR)/$$subdir; \
	done

distdir:
	list='$(subdir-m)'; for subdir in $$list; do \
		(cd ../module && find $$subdir -name '*.c' -o -name '*.h' -o -name '*.S' |\
		xargs cp --parents -t $$distdir); \
	done

distclean maintainer-clean: clean
install: modules_install
uninstall: modules_uninstall
all: modules
check:
