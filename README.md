r8822be driver from linux-5.1.21
================================

**NOTICE:** I've seen this repo gain some traction from google searches and reddit posts so I'll have to say this: If you want to include this driver in a (user) repository of any distribution, please don't. This was mostly meant as a copy for personal use and sometimes even kernel panics on recent kernels, as I hardly know how most of this code works or how to fix it, beyond copying stuff from the upstream git every once in a bit. I don't plan to support this very long. Instead, consider reporting the issues you're experiencing with the equivalent upstream driver to the kernel mailing list. Most of the issues I had with it have been resolved by now, with only 5GHz AP support being lacking.

Since linux version 5.2, this staging driver for the RTL8822BE chipset has been deprecated in favor of rtw88. This new driver works fine, when used merely to connect to wireless networks.

However, I tend to create a wireless hotspot from my laptop, since I usually connect over Ethernet ("Ethernet on a laptop? In the year of our lord 2^11-28?", I can hear you scream in astonishment), and the new driver completely broke for this purpose.

The new driver doesn't support creating access points over 5GHz anymore, but what is worse, is how it keeps kernel panicing whenever I create the access point.

So, as a stop-gap solution, I'll keep a copy of this driver for the time being, until these issues are resolved.


Installation
------------

```
./make
./make install
```

You're welcome.
