#!/bin/sh
set -e
if [ "$1" = "install" ]; then
    set -x
    install -Dm644 r8822be.ko /lib/modules/${KERNELVERSION:-$(uname -r)}/kernel/drivers/staging/rtlwifi/r8822be.ko
    depmod ${KERNELVERSION:-$(uname -r)}
    printf "blacklist rtw88\nblacklist rtwpci\n" > /etc/modprobe.d/rtw88-blacklist.conf
else
    exec make -C /lib/modules/${KERNELVERSION:-$(uname -r)}/build M=$PWD CONFIG_R8822BE=m "$@"
fi
