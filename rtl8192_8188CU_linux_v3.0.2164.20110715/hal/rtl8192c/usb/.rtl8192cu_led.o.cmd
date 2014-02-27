cmd_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o := arm-angstrom-linux-gnueabi-gcc -Wp,-MD,/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/.rtl8192cu_led.o.d  -nostdinc -isystem /usr/local/angstrom/arm/lib/gcc/arm-angstrom-linux-gnueabi/4.3.3/include -Iinclude  -I/home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-at91/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Os -marm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fwrapv -O1 -Wno-unused-variable -Wno-unused-value -Wno-unused-label -Wno-unused-parameter -Wno-unused-function -Wno-unused -Wno-uninitialized -I/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include -DCONFIG_LITTLE_ENDIAN -msoft-float -Wall -Wstrict-prototypes -Wno-trigraphs -O2 -fno-strict-aliasing -fno-common -Uarm -pipe -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -fno-omit-frame-pointer -fno-optimize-sibling-calls  -DMODULE -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(rtl8192cu_led)"  -D"KBUILD_MODNAME=KBUILD_STR(8192cu)"  -c -o /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.c

deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o := \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.c \
    $(wildcard include/config/sw/antenna/diversity.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/drv_types.h \
    $(wildcard include/config/80211n/ht.h) \
    $(wildcard include/config/drvext.h) \
    $(wildcard include/config/mp/included.h) \
    $(wildcard include/config/1t1r.h) \
    $(wildcard include/config/2t2r.h) \
    $(wildcard include/config/bt/coexist.h) \
    $(wildcard include/config/adaptor/info/caching/file.h) \
    $(wildcard include/config/layer2/roaming.h) \
    $(wildcard include/config/sdio/hci.h) \
    $(wildcard include/config/usb/hci.h) \
    $(wildcard include/config/usb/vendor/req/prealloc.h) \
    $(wildcard include/config/pci/hci.h) \
    $(wildcard include/config/ap/mode.h) \
    $(wildcard include/config/p2p.h) \
    $(wildcard include/config/autosuspend.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/drv_conf.h \
    $(wildcard include/config/android.h) \
    $(wildcard include/config/platform/android.h) \
    $(wildcard include/config/has/earlysuspend.h) \
    $(wildcard include/config/resume/in/workqueue.h) \
    $(wildcard include/config/wakelock.h) \
    $(wildcard include/config/android/power.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/autoconf.h \
    $(wildcard include/config/rtl8192c.h) \
    $(wildcard include/config/pwrctrl.h) \
    $(wildcard include/config/h2clbk.h) \
    $(wildcard include/config/embedded/fwimg.h) \
    $(wildcard include/config/r871x/test.h) \
    $(wildcard include/config/recv/reordering/ctrl.h) \
    $(wildcard include/config/tcp/csum/offload/rx.h) \
    $(wildcard include/config/ips.h) \
    $(wildcard include/config/ips/level/2.h) \
    $(wildcard include/config/lps.h) \
    $(wildcard include/config/antenna/diversity.h) \
    $(wildcard include/config/hw/antenna/diversity.h) \
    $(wildcard include/config/mp/iwpriv/support.h) \
    $(wildcard include/config/nativeap/mlme.h) \
    $(wildcard include/config/tdls.h) \
    $(wildcard include/config/hostapd/mlme.h) \
    $(wildcard include/config/find/best/channel.h) \
    $(wildcard include/config/skb/copy.h) \
    $(wildcard include/config/led.h) \
    $(wildcard include/config/force/hw/led.h) \
    $(wildcard include/config/handle/joinbss/on/assoc/rsp.h) \
    $(wildcard include/config/global/ui/pid.h) \
    $(wildcard include/config/layer2/roaming/resume.h) \
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
    $(wildcard include/config/usb/support/async/vdn/req.h) \
    $(wildcard include/config/only/one/out/ep/to/low.h) \
    $(wildcard include/config/out/ep/wifi/mode.h) \
    $(wildcard include/config/platform/mn10300.h) \
    $(wildcard include/config/special/setting/for/funai.h) \
    $(wildcard include/config/debug/rtl871x.h) \
    $(wildcard include/config/debug/rtl819x.h) \
    $(wildcard include/config/proc/debug.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/osdep_service.h \
    $(wildcard include/config/tcp/csum/offload/tx.h) \
    $(wildcard include/config/usb/suspend.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/basic_types.h \
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
  include/linux/version.h \
  include/linux/spinlock.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/typecheck.h \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/bitops.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/system.h \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  include/linux/linkage.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/linkage.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/irqflags.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/hwcap.h \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/cmpxchg.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/lock.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/mmu.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
  include/linux/prefetch.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/processor.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/cache.h \
    $(wildcard include/config/aeabi.h) \
  include/linux/kernel.h \
    $(wildcard include/config/mach/aios/3/0.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /usr/local/angstrom/arm/lib/gcc/arm-angstrom-linux-gnueabi/4.3.3/include/stdarg.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/ratelimit.h \
  include/linux/param.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  include/linux/dynamic_debug.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/stringify.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
  include/linux/spinlock_up.h \
  include/linux/spinlock_api_up.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/atomic.h \
  include/asm-generic/atomic.h \
  include/linux/errno.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/section-names.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/unevictable/lru.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/current.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/seqlock.h \
  include/linux/nodemask.h \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/string.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/bounds.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/glue.h \
    $(wildcard include/config/cpu/arm610.h) \
    $(wildcard include/config/cpu/arm710.h) \
    $(wildcard include/config/cpu/abrt/lv4t.h) \
    $(wildcard include/config/cpu/abrt/ev4.h) \
    $(wildcard include/config/cpu/abrt/ev4t.h) \
    $(wildcard include/config/cpu/abrt/ev5tj.h) \
    $(wildcard include/config/cpu/abrt/ev5t.h) \
    $(wildcard include/config/cpu/abrt/ev6.h) \
    $(wildcard include/config/cpu/abrt/ev7.h) \
    $(wildcard include/config/cpu/pabrt/ifar.h) \
    $(wildcard include/config/cpu/pabrt/noifar.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/memory.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
  include/linux/const.h \
  arch/arm/mach-at91/include/mach/memory.h \
  arch/arm/mach-at91/include/mach/hardware.h \
    $(wildcard include/config/arch/at91rm9200.h) \
    $(wildcard include/config/arch/at91sam9260.h) \
    $(wildcard include/config/arch/at91sam9g20.h) \
    $(wildcard include/config/arch/at91sam9261.h) \
    $(wildcard include/config/arch/at91sam9g10.h) \
    $(wildcard include/config/arch/at91sam9263.h) \
    $(wildcard include/config/arch/at91sam9rl.h) \
    $(wildcard include/config/arch/at91sam9g45.h) \
    $(wildcard include/config/arch/at91sam9m10.h) \
    $(wildcard include/config/arch/at91cap9.h) \
    $(wildcard include/config/arch/at91x40.h) \
    $(wildcard include/config/arch/at572d940hf.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/sizes.h \
  arch/arm/mach-at91/include/mach/at91sam9g45.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/asm-generic/page.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/topology.h \
  include/asm-generic/topology.h \
  include/linux/slab_def.h \
    $(wildcard include/config/kmemtrace.h) \
  include/trace/kmemtrace.h \
  include/linux/tracepoint.h \
    $(wildcard include/config/tracepoints.h) \
  include/linux/rcupdate.h \
    $(wildcard include/config/classic/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/preempt/rcu.h) \
  include/linux/completion.h \
  include/linux/rcuclassic.h \
    $(wildcard include/config/rcu/cpu/stall/detector.h) \
  include/linux/kmalloc_sizes.h \
  include/linux/module.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/markers.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/stat.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/stat.h \
  include/linux/time.h \
  include/linux/math64.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/div64.h \
  include/linux/kmod.h \
  include/linux/elf.h \
  include/linux/elf-em.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/elf.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/user.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kref.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/marker.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/local.h \
  include/asm-generic/local.h \
  include/linux/percpu.h \
    $(wildcard include/config/have/dynamic/per/cpu/area.h) \
  include/linux/pfn.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/percpu-defs.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan/80211.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/compat/net/dev/ops.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
    $(wildcard include/config/proc/fs.h) \
  include/linux/if.h \
  include/linux/socket.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/socket.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/sockios.h \
  include/linux/sockios.h \
  include/linux/uio.h \
  include/linux/hdlc/ioctl.h \
  include/linux/if_ether.h \
    $(wildcard include/config/sysctl.h) \
  include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/mac80211.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/network/secmark.h) \
  include/linux/net.h \
  include/linux/random.h \
  include/linux/ioctl.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/linux/irqnr.h \
  include/linux/fcntl.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
  include/linux/sysctl.h \
  include/linux/textsearch.h \
  include/linux/err.h \
  include/net/checksum.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/uaccess.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/checksum.h \
  include/linux/in6.h \
  include/linux/dmaengine.h \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
  include/linux/ioport.h \
  include/linux/klist.h \
  include/linux/pm.h \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/semaphore.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
  include/linux/pm_wakeup.h \
    $(wildcard include/config/pm.h) \
  include/linux/dma-mapping.h \
    $(wildcard include/config/have/dma/attrs.h) \
  include/linux/dma-attrs.h \
  include/linux/bug.h \
  include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/scatterlist.h \
  include/linux/mm.h \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/rbtree.h \
  include/linux/prio_tree.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/pgtable.h \
  include/asm-generic/4level-fixup.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/cpu/32.h) \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/cpu-single.h \
  arch/arm/mach-at91/include/mach/vmalloc.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/pgtable-hwdef.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/have/mlocked/page/bit.h) \
    $(wildcard include/config/ia64/uncached/allocator.h) \
    $(wildcard include/config/s390.h) \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/io.h \
  arch/arm/mach-at91/include/mach/io.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/dma-mapping.h \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  include/linux/hrtimer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
    $(wildcard include/config/no/hz.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/timex.h \
  arch/arm/mach-at91/include/mach/timex.h \
    $(wildcard include/config/mach/usb/a9260.h) \
    $(wildcard include/config/mach/qil/a9260.h) \
    $(wildcard include/config/mach/usb/a9263.h) \
    $(wildcard include/config/mach/usb/a9g20.h) \
    $(wildcard include/config/mach/qil/a9g20.h) \
    $(wildcard include/config/mach/sbc35/a9g20.h) \
  include/linux/if_packet.h \
  include/linux/timer.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/delay.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/delay.h \
  include/linux/workqueue.h \
  include/net/net_namespace.h \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/net.h) \
  include/net/netns/core.h \
  include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  include/net/snmp.h \
  include/linux/snmp.h \
  include/net/netns/unix.h \
  include/net/netns/packet.h \
  include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/pimsm/v1.h) \
    $(wildcard include/config/ip/pimsm/v2.h) \
  include/net/inet_frag.h \
  include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/pimsm/v2.h) \
  include/net/netns/dccp.h \
  include/net/netns/x_tables.h \
  include/linux/netfilter.h \
    $(wildcard include/config/netfilter/debug.h) \
    $(wildcard include/config/nf/nat/needed.h) \
  include/linux/in.h \
  include/net/netns/xfrm.h \
  include/linux/xfrm.h \
  include/linux/seq_file_net.h \
  include/linux/seq_file.h \
  include/net/dsa.h \
  include/linux/interrupt.h \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/debug/shirq.h) \
  include/linux/irqreturn.h \
  include/linux/hardirq.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/smp_lock.h \
    $(wildcard include/config/lock/kernel.h) \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/detect/softlockup.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/user/sched.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/x86/ptrace/bts.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/preempt/bkl.h) \
    $(wildcard include/config/group/sched.h) \
  include/linux/capability.h \
    $(wildcard include/config/security/file/capabilities.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/sem.h \
  include/linux/ipc.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/ipcbuf.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/sembuf.h \
  include/linux/signal.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/signal.h \
  include/asm-generic/signal.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/sigcontext.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/path.h \
  include/linux/pid.h \
  include/linux/proportions.h \
  include/linux/percpu_counter.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/resource.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
  include/linux/key.h \
  include/linux/aio.h \
    $(wildcard include/config/aio.h) \
  include/linux/aio_abi.h \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/hardirq.h \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/irq.h \
  arch/arm/mach-at91/include/mach/irqs.h \
  include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  arch/arm/mach-at91/include/mach/at91_aic.h \
  include/linux/irq_cpustat.h \
  include/linux/circ_buf.h \
  include/linux/etherdevice.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  /home/ndao/svn/dev/dev/build/kernel-aios30/arch/arm/include/asm/unaligned.h \
  include/linux/unaligned/le_byteshift.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  include/linux/wireless.h \
  include/net/iw_handler.h \
  include/linux/if_arp.h \
  include/linux/rtnetlink.h \
  include/linux/netlink.h \
  include/linux/if_link.h \
  include/linux/if_addr.h \
  include/linux/neighbour.h \
  include/linux/proc_fs.h \
    $(wildcard include/config/proc/devicetree.h) \
    $(wildcard include/config/proc/kcore.h) \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/radix-tree.h \
  include/linux/fiemap.h \
  include/linux/quota.h \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/magic.h \
  include/linux/usb.h \
    $(wildcard include/config/usb/devicefs.h) \
    $(wildcard include/config/usb/mon.h) \
    $(wildcard include/config/usb/device/class.h) \
  include/linux/mod_devicetable.h \
  include/linux/usb/ch9.h \
    $(wildcard include/config/size.h) \
    $(wildcard include/config/att/one.h) \
    $(wildcard include/config/att/selfpower.h) \
    $(wildcard include/config/att/wakeup.h) \
    $(wildcard include/config/att/battery.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_byteorder.h \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/platform/mstar389.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/byteorder/little_endian.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/wlan_bssdef.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/drv_types_linux.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_ht.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/wifi.h \
    $(wildcard include/config/rtl8712fw.h) \
    $(wildcard include/config/method/flash.h) \
    $(wildcard include/config/method/ethernet.h) \
    $(wildcard include/config/method/label.h) \
    $(wildcard include/config/method/display.h) \
    $(wildcard include/config/method/e/nfc.h) \
    $(wildcard include/config/method/i/nfc.h) \
    $(wildcard include/config/method/nfc.h) \
    $(wildcard include/config/method/pbc.h) \
    $(wildcard include/config/method/keypad.h) \
    $(wildcard include/config/method/vpbc.h) \
    $(wildcard include/config/method/ppbc.h) \
    $(wildcard include/config/method/vdisplay.h) \
    $(wildcard include/config/method/pdisplay.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_cmd.h \
    $(wildcard include/config/rtl8711fw.h) \
    $(wildcard include/config/event/thread/mode.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_rf.h \
    $(wildcard include/config/.h) \
    $(wildcard include/config/1t.h) \
    $(wildcard include/config/2t.h) \
    $(wildcard include/config/1r.h) \
    $(wildcard include/config/2r.h) \
    $(wildcard include/config/1t2r.h) \
    $(wildcard include/config/turbo.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/ieee80211.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_xmit.h \
    $(wildcard include/config/rtl8192d.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/xmit_osdep.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_recv.h \
    $(wildcard include/config/recv/thread/mode.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/hal_init.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_qos.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_security.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_pwrctrl.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_io.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/osdep_intf.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_eeprom.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/sta_info.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/wifi.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_mlme.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_debug.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_event.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_led.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_mlme_ext.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtw_p2p.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_hal.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_spec.h \
    $(wildcard include/config/usedk.h) \
    $(wildcard include/config/no/usedk.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/basic_types.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/Hal8192CPhyReg.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/Hal8192CPhyCfg.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_rf.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_dm.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_recv.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_xmit.h \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/rtl8192c_cmd.h \
    $(wildcard include/config/eid.h) \
  /home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/include/Hal8192CUHWImg.h \
    $(wildcard include/config/bt/coexistence.h) \

/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o: $(deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o)

$(deps_/home/ndao/svn/dev/dev/build/linux-drivers/rtl8192_8188CU_linux_v3.0.2164.20110715/hal/rtl8192c/usb/rtl8192cu_led.o):
