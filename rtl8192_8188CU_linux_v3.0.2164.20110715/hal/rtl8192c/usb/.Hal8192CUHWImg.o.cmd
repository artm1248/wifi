cmd_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o := arm-angstrom-linux-gnueabi-gcc -Wp,-MD,/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/.Hal8192CUHWImg.o.d  -nostdinc -isystem /usr/local/angstrom/arm/lib/gcc/arm-angstrom-linux-gnueabi/4.3.3/include -Iinclude  -I/home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Os -marm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fwrapv -O1 -Wno-unused-variable -Wno-unused-value -Wno-unused-label -Wno-unused-parameter -Wno-unused-function -Wno-unused -Wno-uninitialized -I/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include -DCONFIG_LITTLE_ENDIAN -msoft-float -Wall -Wstrict-prototypes -Wno-trigraphs -O2 -fno-strict-aliasing -fno-common -Uarm -pipe -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -fno-omit-frame-pointer -fno-optimize-sibling-calls  -DMODULE -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(Hal8192CUHWImg)"  -D"KBUILD_MODNAME=KBUILD_STR(8192cu)"  -c -o /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.c

deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o := \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.c \
    $(wildcard include/config/bt/coexistence.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/basic_types.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/drv_conf.h \
    $(wildcard include/config/android.h) \
    $(wildcard include/config/platform/android.h) \
    $(wildcard include/config/has/earlysuspend.h) \
    $(wildcard include/config/resume/in/workqueue.h) \
    $(wildcard include/config/wakelock.h) \
    $(wildcard include/config/android/power.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/autoconf.h \
    $(wildcard include/config/usb/hci.h) \
    $(wildcard include/config/rtl8192c.h) \
    $(wildcard include/config/pwrctrl.h) \
    $(wildcard include/config/h2clbk.h) \
    $(wildcard include/config/embedded/fwimg.h) \
    $(wildcard include/config/r871x/test.h) \
    $(wildcard include/config/80211n/ht.h) \
    $(wildcard include/config/recv/reordering/ctrl.h) \
    $(wildcard include/config/tcp/csum/offload/rx.h) \
    $(wildcard include/config/drvext.h) \
    $(wildcard include/config/mp/included.h) \
    $(wildcard include/config/ips.h) \
    $(wildcard include/config/ips/level/2.h) \
    $(wildcard include/config/lps.h) \
    $(wildcard include/config/bt/coexist.h) \
    $(wildcard include/config/antenna/diversity.h) \
    $(wildcard include/config/sw/antenna/diversity.h) \
    $(wildcard include/config/hw/antenna/diversity.h) \
    $(wildcard include/config/mp/iwpriv/support.h) \
    $(wildcard include/config/ap/mode.h) \
    $(wildcard include/config/nativeap/mlme.h) \
    $(wildcard include/config/p2p.h) \
    $(wildcard include/config/tdls.h) \
    $(wildcard include/config/hostapd/mlme.h) \
    $(wildcard include/config/find/best/channel.h) \
    $(wildcard include/config/skb/copy.h) \
    $(wildcard include/config/led.h) \
    $(wildcard include/config/force/hw/led.h) \
    $(wildcard include/config/handle/joinbss/on/assoc/rsp.h) \
    $(wildcard include/config/global/ui/pid.h) \
    $(wildcard include/config/layer2/roaming.h) \
    $(wildcard include/config/layer2/roaming/resume.h) \
    $(wildcard include/config/adaptor/info/caching/file.h) \
    $(wildcard include/config/set/scan/deny/timer.h) \
    $(wildcard include/config/long/delay/issue.h) \
    $(wildcard include/config/new/signal/stat/process.h) \
    $(wildcard include/config/usb/interrupt/in/pipe.h) \
    $(wildcard include/config/minimal/memory/usage.h) \
    $(wildcard include/config/usb/tx/aggregation.h) \
    $(wildcard include/config/usb/rx/aggregation.h) \
    $(wildcard include/config/prealloc/recv/skb.h) \
    $(wildcard include/config/reduce/usb/tx/int.h) \
    $(wildcard include/config/easy/replacement.h) \
    $(wildcard include/config/wistron/platform.h) \
    $(wildcard include/config/dynamic/allociate/vendor/cmd.h) \
    $(wildcard include/config/platform/ti/dm365.h) \
    $(wildcard include/config/specific/urb/num.h) \
    $(wildcard include/config/use/usb/buffer/alloc.h) \
    $(wildcard include/config/usb/vendor/req/prealloc.h) \
    $(wildcard include/config/usb/support/async/vdn/req.h) \
    $(wildcard include/config/only/one/out/ep/to/low.h) \
    $(wildcard include/config/out/ep/wifi/mode.h) \
    $(wildcard include/config/platform/mn10300.h) \
    $(wildcard include/config/special/setting/for/funai.h) \
    $(wildcard include/config/debug/rtl871x.h) \
    $(wildcard include/config/debug/rtl819x.h) \
    $(wildcard include/config/proc/debug.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/posix_types.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/Hal8192CUHWImg.h \

/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o: $(deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o)

$(deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/Hal8192CUHWImg.o):
