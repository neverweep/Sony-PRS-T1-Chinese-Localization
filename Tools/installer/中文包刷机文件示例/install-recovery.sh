#!/system/bin/sh

### mount sdcard
mkdir /data/altsd
mount -o noatime,utf8 -t vfat /dev/block/mmcblk2p4 /data/altsd

### bind txt font
mount -o bind /data/altsd/fonts/_TXT.ttf /ebook/fonts/ReallyNo2LTW1G-Regular.otf

### bind system ui font
mount -o bind /data/altsd/fonts/_SYSTEM.ttf /ebook/fonts/DroidSansFallback.ttf
mount -o bind /data/altsd/fonts/_SYSTEM.ttf /ebook/fonts/DroidSans.ttf
#mount -o bind /data/altsd/fonts/_SYSTEM.ttf /ebook/fonts/DroidSans-Bold.ttf