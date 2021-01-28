PRS T1 相关说明
===========

最后修改：2013/06/29

关于中文化
-----

如果有的 epub 调整字体中文也不能显示，解压这个 CSS 后替换内存 /css/ 下的同名文件：[https://github.com/neverweep](https://github.com/neverweep)

不完全取消 FONT mount 映射：如果中文化后有奇怪的问题，比如频繁死机等，试试取消 FONT mount 映射，这将取消对 txt、system 字体替换的支持，但不影响 epub 和界面：[https://github.com/neverweep](https://github.com/neverweep)

完全取消 FONT mount 映射（建议）：如果中文化后有奇怪的问题，比如频繁死机等，试试取消 FONT mount 映射，这将取消对 utf-8 txt 的支持，但不影响 epub 和界面：[https://github.com/neverweep](https://github.com/neverweep)

中文包刷机过程删除程序列表
-------------

  
Phone  
AccountAndSyncSettings  
Bluetooth  
Contacts  
ContactsProvider  
QuickSearchBox  
LiveWallpapers  
LiveWallpapersPicker  
MagicSmokeWallpapers  
VisualizationWallpapers  
EbookDemo  
EbookDemoService  
Protips  
TelephonyProvider  
Calendar  
CalendarProvider  
  
以上程序 apk 及 odex，删除对 T1 的正常功能无任何影响，而且理论上来说会更加省电。

* * *

系统升级
----

系统初始版本为 1.0.00.09XXX

1.0.04 系统升级固件地址（下载后请再次确认文件是否为1.0.04升级包）：[http://bookpa.com/book/update/Sony/PRS-T1/T1.exe](http://bookpa.com/book/update/Sony/PRS-T1/T1.exe)

1.0.05 系统升级固件地址（汉化包可能不支持此版本）：[ftp://ftp.vaio-link.com/pub/PRS/FW/PRS-T1/PCV1005\_11130/PRS-T1\_UPDATER\_1.0.05.11130.EXE](ftp://ftp.vaio-link.com/pub/PRS/FW/PRS-T1/PCV1005_11130/PRS-T1_UPDATER_1.0.05.11130.EXE)

升级后 root 消失，但是安装过的软件不受影响

* * *

ROOT
----

中文化后仍然可以 root，不影响中文化。

可使用此 root 包：[http://projects.mobileread.com/reader/users/porkupan/PRST1/flash\_packages/minimal-root.zip](http://projects.mobileread.com/reader/users/porkupan/PRST1/flash_packages/minimal-root.zip)

可使用此 root 包（1.0.05）：[http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/20121220/rupor-minimal.7z](http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/20121220/rupor-minimal.7z)

* * *

Home Mod
--------

HomeMod (by morkl) 是一个增强原生界面的程序，主要增加了第三屏和最近阅读功能。建议先安装原版后再使用文件管理器覆盖（默认安装在 data）。自定义查看相关资源。

原版下载：[http://sourceforge.net/projects/sonyfmngr/files/PRS-T1%20%28Morkl%29/2012-01-22/EbookHome.zip/download](http://sourceforge.net/projects/sonyfmngr/files/PRS-T1%20%28Morkl%29/2012-01-22/EbookHome.zip/download)

中文版，用 RE 覆盖：[https://github.com/neverweep](https://github.com/neverweep)

如果你未 root，并且想替换原生 home，请下载上面的文件后解压其中的 sony.prs.T1.Homemod.installer.rar ，运行里面的 flash\_reader 刷机。

* * *

ADB
---

adb 是 android sdk 里的一个工具,用这个工具可以直接操作管理 andriod 设备。此工具仅建议熟悉命令行和 linux 命令的朋友操作。

安装方法（by boroda @ the-ebook.com & pengwenjia @ hi-pda）：

*   首先下载 adb 刷机包：[http://projects.mobileread.com/reader/users/porkupan/PRST1/flash\_packages/enable-adb.zip](http://projects.mobileread.com/reader/users/porkupan/PRST1/flash_packages/enable-adb.zip)，刷机
*   ROOT 你的 T1，这样才能做许多好玩的事。
*   在 [http://115.com/file/cl7kvuwn](http://115.com/file/cl7kvuwn)下载 Nook-color 的 ADB 懒人包,然后装到你电脑上（注意这玩意只能装在 c:\\）
*   修改 c:\\android-sdk-windows\\usb\_driver\\android\_winusb.inf，把下面内容加到文件的 \[Google.NTx86\] 或 \[Google.NTamd64\] 里:
    
    ;Sony Reader  
    %CompositeAdbInterface% = USB\_Install, USB\\VID\_054C&PID\_05C2&MI\_01
    
*   拔下 T1，运行 c:\\android-sdk-windows\\usb\_driver\\install.exe 安装 adb 驱动。
*   修改 <%user profile%>\\.android\\adb\_usb.ini，把下面内容加到文件里：
    
    0x054C
    
*   连接 T1 到电脑，但不要连接数据传输。当电脑识别出后，进入设备管理器，在通用串行总线控制器下找到硬件ID为 USB \\ VID\_054C & PID\_05C2 的设备，卸载它。
*   在你的 T1 上 关闭 debug，再打开 debug，应该就能认出来了。

卸载 adb：[http://projects.mobileread.com/reader/users/porkupan/PRST1/flash\_packages/disable-adb.zip](http://projects.mobileread.com/reader/users/porkupan/PRST1/flash_packages/disable-adb.zip)

* * *

Link2SD
-------

以下操作只针对外置 Micro-SD ，此功能请慎重使用。

1.  电脑上
    1.  使用 EASEUS Partition Master 创造第二个 PRIMARY 分区，分区格式为 ext3
2.  阅读器上
    1.  安装 Link2SD，重启 T1
    2.  运行 Link2SD，选择 ext3，重启 T1
    3.  运行 Link2SD，选择需要移动的软件，使用左下角的“Create link”，下一画面选择所有选项之后按“OK”

注意：

1.  第一分区为普通分区，格式可为FAT/FAT32，可于“我的电脑”见到
2.  第二分区格式为 ext3，没有盘符，不可见于“我的电脑”
3.  第二分区大小大概 200MB 左右便足够
4.  移动 App 之前需先在系统设置内启动“USB debug mode”
5.  “Move to SD card”不会作用

提到的软件请自行搜索下载

* * *

原生APP2SD
--------

此刷机包能够使用 android 2.2 原生的移动到 SD 卡功能，也就是不再需要外置 microSD 卡。此功能请慎重使用。

刷机方式：

1.  刷机包不会删除各种非官方 link2sd app2sd 功能，使用之前请删除/卸载这些第三方功能。
2.  刷机包是独立于固件版本的，刷 adb 固件也不会有影响。
3.  唯一要注意的是需要 system 分区大概 200KB 的空间

介绍请看这里：[http://www.the-ebook.org/forum/viewtopic.php?t=22502](http://www.the-ebook.org/forum/viewtopic.php?t=22502)

开启：[http://sonyfmngr.sourceforge.net/Releases/asec/20120313/rupor-enable-asec.7z](http://sonyfmngr.sourceforge.net/Releases/asec/20120313/rupor-enable-asec.7z)

关闭：[http://sonyfmngr.sourceforge.net/Releases/asec/20120313/rupor-disable-asec.7z](http://sonyfmngr.sourceforge.net/Releases/asec/20120313/rupor-disable-asec.7z)

开启（1.0.05）：[http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/asec/20121206/rupor-enable-asec.7z](http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/asec/20121206/rupor-enable-asec.7z)

关闭（1.0.05）：[http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/adb/20121206/rupor-disable-all.7z](http://projects.mobileread.com/reader/users/porkupan/rupor/Releases/adb/20121206/rupor-disable-all.7z)

* * *

双清
--

清空用户数据和应用

*   彻底关机
*   开机，当屏幕显示“opening book”的时候，同时按住下翻页键和返回键
*   等待主屏幕完全加载（即Loading字样不在屏幕左上角出现），保持住返回键和下翻页键不松手，进行下面的操作：松开返回键，按下返回键，再松开返回键，然后松开下翻页键
*   在“Would you like to execute Factory initialize”处选择 Yes
*   开机

* * *

Restore 和 SD rescue
-------------------

restore：较快速的恢复系统为初始状态

sd rescue：比较彻底的恢复系统，适用于进不去系统的情况（此外还有 amutin 制作的恢复包）

以上两种方式只能恢复 data 和 system 分区，不会更改 root 和 adb 状态。

这还有一种使用 putty 进行完整备份和恢复的方法（更彻底，和分区方法差不多）：[https://github.com/neverweep)（原文俄语，已使用谷歌翻译为英文）

* * *

分区和全盘备份恢复
---------

具体看这里：[http://www.hi-pda.com/forum/viewthread.php?tid=1093256](http://www.hi-pda.com/forum/viewthread.php?tid=1093256)

* * *

关机问题
----

如果你的 T1 不能正常关机，请尝试使用这个刷机包，使用方法请参考[变砖恢复](#recovery)

[https://github.com/neverweep](https://github.com/neverweep)

* * *

变砖回复
----

如果你的 T1 变砖，停留在开机画面不动。那么请按以下步骤操作：

1.  下载 SD rescue 包：[http://projects.mobileread.com/reader/users/porkupan/PRST1/flash\_packages/sdcard-rescue.zip](http://projects.mobileread.com/reader/users/porkupan/PRST1/flash_packages/sdcard-rescue.zip)
2.  确定关机：按住 RESET 两秒，强制关机，画面静止不动。
3.  将上面下载的文件解压缩到 TF 卡根目录（OS Firmware）。插入到 T1 中
4.  按住“主页键（小房子，中间的）”和“设置键（四横线，最右边）”不放，按 POWER 键一秒开机
5.  开机滚动条到达最右边时等一两秒，松开“主页键（小房子，中间的）”和“设置键（四横线，最右边）”
6.  如果 T1 没有反应，只有黄灯闪烁，请静待 10-15 分钟
7.  滚动条变成白色后，按 reset 键两秒关机，拔卡，再开机
8.  如果你之前升级过系统，那一定要刷对应版本的 restore 包，1.0.04 restore 下载（注意，mobileread 的老版本 1.0.04 restore 包已经失效，我已经上传了一份代替，如果你想试试新版的恢复包，可以到下方的各种资源去找，我个人建议 1.0.04 使用老版本 restore。）：[https://github.com/neverweep](https://github.com/neverweep)  
    如果你没有升级过，跳过此步骤。

如果你在 restore（不是 SD resuce）过程中死机，可以试试先恢复到 1.0.03 版本再恢复到 1.0.04，下载请到[相关资源](#about)的各种包内寻找

* * *

耗电过快
----

正常待机一晚上掉一两格电，则需要进行电池重新校正，并非电池或系统出现问题。

*   连接充电器
*   删除 /data/system/batterystats.bin
*   充电 10 个小时以上
*   经过两到三个充电循环就正常了

未 ROOT 用户也可以使用我制作的刷机程序来删除该文件：[https://github.com/neverweep](https://github.com/neverweep)

* * *

字体说明
----

### EPUB 完整中文支持(by oxen 老牛)

可参照此表对不满意的字体进行替换：

*   正文-zw.ttf：方正书宋（英文为 malabar）。
*   仿宋-fs.ttf：汉仪仿宋简 Amasis30（英文为 Amasis30）。
*   楷体-kt.ttf：华文楷体（英文为 Caecilia）。
*   黑体-ht.ttf：冬青黑体 W3（HelveticaNeue）。
*   标题1-h1.ttf：方正兰亭特黑长简体。
*   标题2-h2.ttf：方正大标宋简体。
*   标题3-h3.ttf：方正行黑简体。
*   楷体拼音-ktpy.ttf：方正楷体拼音字库 01（标点暂未压缩）。
*   Malabar 系：默认衬线字体
*   HelveticaNeue 系：默认无衬线字体

### EPUB 最小中文支持

替换 \\fonts\\\_EPUB.ttf 为您喜欢的字体。

### TXT 中文支持

替换 \\fonts\\\_TXT.ttf 为您喜欢的字体。

### 系统 UI 字体更换

替换 \\fonts\\\_SYSTEM.ttf 为您喜欢的字体。默认没有替换。

默认不替换 DroidSans-Bold.ttf，原因请参考：[http://www.hi-pda.com/forum/viewthread.php?tid=931459](http://www.hi-pda.com/forum/viewthread.php?tid=931459)

* * *

相关资源
----

**各种包（包括 1.05），仔细确认后再使用！**[http://projects.mobileread.com/reader/users/porkupan/PRST1/flash\_packages/](http://projects.mobileread.com/reader/users/porkupan/PRST1/flash_packages/)

**Hi-pda 发布帖**：[http://www.hi-pda.com/forum/viewthread.php?tid=931459](http://www.hi-pda.com/forum/viewthread.php?tid=931459)

Mydoo 发布帖：[http://bbs.mydoo.cn/thread-59194-1-1.html](http://bbs.mydoo.cn/thread-59194-1-1.html)

内置完整中文字体说明（by uvhchina）：[http://www.hi-pda.com/forum/viewthread.php?tid=926509](http://www.hi-pda.com/forum/viewthread.php?tid=926509)

**SONY PRS-T1 1.0.04 汇总总结（by icai2004）**:[http://www.hi-pda.com/forum/viewthread.php?tid=1164577](http://www.hi-pda.com/forum/viewthread.php?tid=1164577)

T1 ROOT 相关（by 死凌）（删除软件和刷入 readermod 不用再做）:[http://bbs.mydoo.cn/thread-57776-1-2.html](http://bbs.mydoo.cn/thread-57776-1-2.html)

T1 ROOT、TXT 转换为 epub 和自定义 home\_mod（by GOLDENW）[http://www.hi-pda.com/forum/viewthread.php?tid=925056](http://www.hi-pda.com/forum/viewthread.php?tid=925056)

T1 adb、root、sd resuce（by pengwenjia）[http://www.hi-pda.com/forum/viewthread.php?tid=914646](http://www.hi-pda.com/forum/viewthread.php?tid=914646)

T1 tweak（英文）[http://wiki.mobileread.com/wiki/PRST1\_Rooting\_and\_Tweaks](http://wiki.mobileread.com/wiki/PRST1_Rooting_and_Tweaks)

T1 重分区教程（英文）[http://wiki.mobileread.com/wiki/PRST1\_Rooting\_and\_Tweaks#Repartition\_internal\_storage](http://wiki.mobileread.com/wiki/PRST1_Rooting_and_Tweaks#Repartition_internal_storage)

TXT 支持与系统字体更换功能（by xuyn2003）[http://www.hi-pda.com/forum/viewthread.php?tid=931459&extra=page%3D1&page=2](http://www.hi-pda.com/forum/viewthread.php?tid=931459&extra=page%3D1&page=2)

link2sd （by hugo9578）[http://www.hi-pda.com/forum/viewthread.php?tid=906413](http://www.hi-pda.com/forum/viewthread.php?tid=906413)

支持 T1 翻页键的 Kindle for Android（by lucida）[http://www.hi-pda.com/forum/viewthread.php?tid=947505](http://www.hi-pda.com/forum/viewthread.php?tid=947505)

---

本页面所有内容和资源均以欧美版 T1 为准，日版 T1 未必适用  
**目前需慎重升级 1.05，我的 T1 西去了，1.05 暂时没有中文汉化。如果你有兴趣做 1.0.05 的汉化，可以到我的[Google Code](https://github.com/neverweep)上找到所有相关汉化资源。  
[有人](http://xia.im/sony-prs-t1-localization/comment-page-1/#comment-1039)反映可以在 1.05 上使用 1.04 的汉化补丁，但是打补丁要慎重，如果可以请做好全盘备份**