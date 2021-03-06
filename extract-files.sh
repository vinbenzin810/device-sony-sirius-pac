#!/bin/sh

set -e

export VENDOR=sony
export PLATFORM=shinano
export DEVICE=sirius

CONTROL=`adb shell getprop ro.cm.device | tr -d '\n\r'`

if [ "$CONTROL" != "$DEVICE" ]; then
    echo ""
    echo "ERROR: You must extract blobs when running CyanogenMod!"
    echo "Go to http://www.get.cm and install the latest build."
    echo ""
    exit -1
fi


./../../$VENDOR/$PLATFORM/extract-files.sh $@
