#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin
DATA=/tmp/data
SYSTEM=/tmp/system

echo Starting $0 `date`

mkdir -p ${DATA}
mkdir -p ${SYSTEM}

mount /dev/mmcblk2p9 ${DATA}
mount /dev/mmcblk2p10 ${SYSTEM}

# cleaning up to free some space


if [ -f ${SYSTEM}/app/Phone.apk ]
then
   echo "Free space. Removing Phone"
   rm -f ${SYSTEM}/app/Phone.*
fi

if [ -f ${SYSTEM}/app/AccountAndSyncSettings.apk ]
then
   echo "Free space. Removing AccountAndSyncSettings"
   rm -f ${SYSTEM}/app/AccountAndSyncSettings.*
fi

if [ -f ${SYSTEM}/app/Bluetooth.apk ]
then
   echo "Free space. Removing Bluetooth"
   rm -f ${SYSTEM}/app/Bluetooth.*
fi

if [ -f ${SYSTEM}/app/Contacts.apk ]
then
   echo "Free space. Removing Contacts"
   rm -f ${SYSTEM}/app/Contacts.*
fi

if [ -f ${SYSTEM}/app/ContactsProvider.apk ]
then
   echo "Free space. Removing ContactsProvider"
   rm -f ${SYSTEM}/app/ContactsProvider.*
fi

if [ -f ${SYSTEM}/app/QuickSearchBox.apk ]
then
   echo "Free space. Removing QuickSearchBox"
   rm -f ${SYSTEM}/app/QuickSearchBox.*
fi

if [ -f ${SYSTEM}/app/LiveWallpapers.apk ]
then
   echo "Free space. Removing LiveWallpapers"
   rm -f ${SYSTEM}/app/LiveWallpapers.*
fi

if [ -f ${SYSTEM}/app/LiveWallpapersPicker.apk ]
then
   echo "Free space. Removing LiveWallpapersPicker"
   rm -f ${SYSTEM}/app/LiveWallpapersPicker.*
fi

if [ -f ${SYSTEM}/app/MagicSmokeWallpapers.apk ]
then
   echo "Free space. Removing MagicSmokeWallpapers"
   rm -f ${SYSTEM}/app/MagicSmokeWallpapers.*
fi

if [ -f ${SYSTEM}/app/VisualizationWallpapers.apk ]
then
   echo "Free space. Removing VisualizationWallpapers"
   rm -f ${SYSTEM}/app/VisualizationWallpapers.*
fi

if [ -f ${SYSTEM}/app/EbookDemo.apk ]
then
   echo "Free space. Removing EbookDemo"
   rm -f ${SYSTEM}/app/EbookDemo.*
fi

if [ -f ${SYSTEM}/app/EbookDemoService.apk ]
then
   echo "Free space. Removing EbookDemoService"
   rm -f ${SYSTEM}/app/EbookDemoService.*
fi

if [ -f ${SYSTEM}/app/Protips.apk ]
then
   echo "Free space. Removing Protips"
   rm -f ${SYSTEM}/app/Protips.*
fi

if [ -f ${SYSTEM}/app/TelephonyProvider.apk.apk ]
then
   echo "Free space. Removing TelephonyProvider"
   rm -f ${SYSTEM}/app/TelephonyProvider.apk.*
fi




# clean after old installations - potentially unnecessary
if [ -f ${DATA}/app/EbookLatinIME4Ebook.apk ]
then
   echo "Restore Sony keyboard"
   rm -f ${DATA}/app/EbookLatinIME4Ebook.*

   echo "Reinstall EbookLatinIME4Ebook.apk with custom signature"
   sed -i '/EbookLatinIME4Ebook/,/<\/package>/ { d }' ${DATA}/system/packages.xml
fi

if [ -f ${SYSTEM}/app/EbookNetworkApplications.apk ]
then
   echo "Regenerating sysconf_db"
   rm -f ${DATA}/data/com.sony.drbd.ebook.netapp/databases/sysconf_db
fi

# proceeding with installation
if [ -d ${UPDATE_MP}/updates/data ]
then
   echo "Updating /data"
   cp -rfp ${UPDATE_MP}/updates/data/* ${DATA}

   cd ${UPDATE_MP}/updates/data
   find data -exec chmod a+rw ${DATA}/{} \;
   cd -
fi

if [ -d ${UPDATE_MP}/updates/system ]
then
   echo "Removing old system packages"
   cd ${UPDATE_MP}/updates/system
   find app -type f -name *.apk | sed -e 's/\(.*\.\)apk/\1odex/' -e 's:.*:'"${SYSTEM}"'\/&:' | xargs -t -r rm -f
   find app -type f -name *.jar | sed -e 's/\(.*\.\)jar/\1odex/' -e 's:.*:'"${SYSTEM}"'\/&:' | xargs -t -r rm -f
   cd -

   echo "Updating /system"
   cp -rfp ${UPDATE_MP}/updates/system/* ${SYSTEM}

   echo "Changing system files modes"
   cd ${UPDATE_MP}/updates/system
   find app -type f -exec chmod a-x ${SYSTEM}/{} \;
   find app -type f -exec chmod go-w ${SYSTEM}/{} \;
   find lib -type f -exec chmod a-x ${SYSTEM}/{} \;
   find lib -type f -exec chmod go-w ${SYSTEM}/{} \;
   find bin -type f -exec chmod go-w ${SYSTEM}/{} \;
   find framework -type f -exec chmod a-x ${SYSTEM}/{} \;
   find framework -type f -exec chmod go-w ${SYSTEM}/{} \;
   cd -
fi

if [ -f ${DATA}/system/packages.xml ]
then
   echo "Getting rid of preferred activities in packages.xml"
   sed -i '/<preferred-activities>/,/<\/preferred-activities>/ { /preferred-activities/b; d }' ${DATA}/system/packages.xml

   echo "Cleaning system signatures"
   sed -i '/uid.system/,/perms/{/uid.system/b;/perms/b;d}' ${DATA}/system/packages.xml

   echo "Cleaning VM cache"
   rm -f ${DATA}/dalvik-cache/*
fi

if [ -f ${SYSTEM}/etc/install-recovery.sh ]
then
  chmod 777 ${SYSTEM}/etc/install-recovery.sh
fi

if [ -f ${SYSTEM}/bin/su ]
then
   echo "Setting SuperUser"
   chmod 06755 ${SYSTEM}/bin/su
   rm -f ${DATA}/data/com.noshufou.android.su/databases/permissions.*
   mkdir -p ${SYSTEM}/xbin
   ln -fs /system/bin/su ${SYSTEM}/xbin/su
fi

umount ${DATA}
umount ${SYSTEM}

echo Done $0 `date`
