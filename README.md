**This repository has been discontinued.**

I held a copy of the linux-5.1 r8822be driver from the drivers/staging/ tree here for a while, as the new rtw88 driver, introduced with linux-5.2, had multiple issues. It crashed a lot, especially in AP mode, and seemingly didn't support creating 5GHz access points.

Now, it having been a year and a half since this driver was discontinued, arriving at kernel version 5.9, all of the issues I initially had with the driver have been resolved (probably quite a few versions ago), I still know nothing about wireless drivers and I see no reason to keep using it. Please use the upstream rtw88 driver and report any issues with it to [the upstream kernel](https://bugzilla.kernel.org/).

I'm not sure if the current kernel LTS (5.4) that distributions such as Ubuntu are using works as fine with this device as the latest kernel version, but thankfully the next LTS (5.10) is right around the corner, hopefully being integrated by the next Ubuntu release.

If you're somehow still having issues with the rtw88 driver included in your distribution, try one of the following first:
- Test the [latest kernel](https://askubuntu.com/questions/119080/how-to-update-kernel-to-the-latest-mainline-version-without-any-distro-upgrade), if available for your distribution (or build it manually).
- Install a newer version of the rtw88 driver manually [from git](https://github.com/lwfinger/rtw88).
- If you're having issues creating a 5GHz access point, maybe [this helps](https://github.com/lwfinger/rtw88/issues/29).

If neither of these options works for you, please report your issue to either the kernel bugzilla or your distribution's bug tracker.

If you're absolutely sure you know what you're doing, and you still need the driver that used to be hosted in this repository, check the [`master` branch](https://github.com/mid-kid/r8822be/tree/master).
