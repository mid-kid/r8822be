r8822be driver from linux-5.1.21
================================

Since linux version 5.2, this staging driver for the RTL8822BE chipset has been deprecated in favor of rtw88. This new driver works fine, when used merely to connect to wireless networks.

However, I tend to create a wireless hotspot from my laptop, since I usually connect over Ethernet ("Ethernet on a laptop? In the year of our lord 2^10-29?", I can hear you scream in astonishment), and the new driver completely broke for this purpose.

The new driver doesn't support creating access points over 5GHz anymore, but what is worse, is how it keeps kernel panicing whenever I create the access point.

So, as a stop-gap solution, I'll keep a (right now completely unmodified) copy of this driver for the time being, until these issues are resolved.


Installation
------------

```
./make
./make install
```

You're welcome.
