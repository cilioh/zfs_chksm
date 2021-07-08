ifneq ($(KBUILD_EXTMOD),)
src = /home/kau/zfs/module/spl
obj = /home/kau/zfs/module/spl
mfdir = $(obj)
else
mfdir = $(srctree)/$(src)
endif

MODULE := spl

obj-$(CONFIG_ZFS) := $(MODULE).o

include $(mfdir)/../os/linux/spl/Makefile
