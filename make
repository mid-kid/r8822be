#!/bin/sh
set -e
if [ "$1" = "install" ]; then
    set -x
    install -Dm644 r8822be.ko /lib/modules/${KERNELVERSION:-$(uname -r)}/kernel/drivers/staging/rtlwifi/r8822be.ko
    depmod ${KERNELVERSION:-$(uname -r)}
cat > /etc/modprobe.d/rtw88-blacklist.conf << 'EOF'
blacklist rtw88
blacklist rtwpci
blacklist rtw88_8822be
blacklist rtw88_8822b
blacklist rtw88_pci
blacklist rtw88_core
EOF
else
    exec make -C /lib/modules/${KERNELVERSION:-$(uname -r)}/build M=$PWD CONFIG_R8822BE=m "$@"
fi
