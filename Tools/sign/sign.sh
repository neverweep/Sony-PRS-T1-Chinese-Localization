#!/bin/bash
cat <<EOF
----------------------------------------------------------------------
#Name : sign.sh
#Author : James.Lyunx
#Create Date : 2010-12-20
#Version : 0.1.0 Release
#Description : to sign android roms and applications.
----------------------------------------------------------------------
EOF
SUCCESS=0
E_NOFILE=64
E_NOARGS=65
E_WRONGFILE=66
filename=""

signrom()
{
    echo
    echo "Starting to Sign Your Rom,Please Waitting...."
    echo "Signing $1$EXT_NAME ......"
    java -jar signapk.jar testkey.x509.pem testkey.pk8 "$1$EXT_NAME" "$1"_signed"$EXT_NAME"
    echo
    echo
    echo "Congratulations,Signature Completed!"
    echo
    echo
}

echo

#do some validation and Sign action....
if [ -z "$1" ];then
    echo "Usage: `basename $0` filename"
    exit $E_NOARGS
elif [ -e "$1" ];then
    filename=$1
else
    echo "File $1 Not Exists!"
    exit $E_NOFILE
fi

EXT_NAME=${filename:(-4)}
ext_name=`echo $EXT_NAME|tr 'A-Z' 'a-z'`
ROM_SIZE=${#filename}
filename=${filename:0:(($ROM_SIZE-4))}

if [[ "$ROM_SIZE" -lt "4" ]] || [[ "$ext_name" != ".zip" && "$ext_name" != ".apk" ]]
then
    echo "Wrong File Type!(Only Support ZIP or APK Files.)"
    exit $E_WRONGFILE
else
    signrom $filename $EXT_NAME
    exit 0
fi

