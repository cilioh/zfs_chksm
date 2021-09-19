#!/bin/bash



#cd /home/kau/spl_chksm
#sh ./jw_make.sh


cd /home/kau/zfs_chksm


rm -rf *.rpm
make clean

echo y | yum remove 'zfs*'
echo y | yum remove 'kmod-zfs*'
echo y | yum remove 'libzfs2*'

sh ./autogen.sh
./configure --with-spec=redhat
#make CPPFLAGS="-I/usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64/include -I/usr/src/kernels/3.10.0-1062.1.1.el7_myms.x86_64/arch/x86/include" pkg-utils rpm-dkms rpm-kmod
#make CPPFLAGS="-I/usr/include" pkg-utils rpm-dkms rpm-kmod

make pkg-utils 
make pkg-kmod
#make rpm-dkms
#make rpm-kmod


echo y | yum localinstall *.x86_64.rpm

#cd ../lustre-release && ./configure --enable-server --with-o2ib=/usr/src/ofa_kernel/default --disable-ldiskfs

#cd /home/kau/lustre-release && make clean
#cd /home/kau/lustre-release && make -j32 rpms

cd /home/kau/lustre-release
#./configure --enable-server --with-o2ib=/usr/src/ofa_kernel/default
#make rpms
echo y | yum localinstall *.x86_64.rpm

#echo y | yum localinstall ../lustre-release/lustre-osd-zfs-mount*
#echo y | yum localinstall ../lustre-release/kmod-lustre-osd-zfs*

cd /home/kau/zfs_chksm
