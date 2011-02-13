#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=galaxys
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.conf
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gpsd
adb pull /system/bin/pvrsrvinit ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvinit
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvinit

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
adb pull /system/cameradata/datapattern_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata/datapattern_420sp.yuv
adb pull /system/cameradata/datapattern_front_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata/datapattern_front_420sp.yuv

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/firmware/CE147F00.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/CE147F00.bin
adb pull /system/firmware/CE147F01.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/CE147F01.bin
adb pull /system/firmware/CE147F02.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/CE147F02.bin
adb pull /system/firmware/CE147F03.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/CE147F03.bin

# hw sensors
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw
adb pull /system/lib/hw/lights.s5pc110.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw/lights.s5pc110.so
adb pull /system/lib/hw/copybit.s5pc110.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw/copybit.s5pc110.so
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw/sensors.default.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw/gralloc.default.so
adb pull /system/lib/hw/gralloc.s5pc110.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw/gralloc.s5pc110.so

adb pull /system/lib/egl/libEGL_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_POWERVR_SGX540_120.so
adb pull /system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so
adb pull /system/lib/egl/libGLESv2_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_POWERVR_SGX540_120.so
adb pull /system/lib/libglslcompiler.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libglslcompiler.so
adb pull /system/lib/libIMGegl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libIMGegl.so
adb pull /system/lib/libpvr2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvr2d.so
adb pull /system/lib/libpvrANDROID_WSEGL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvrANDROID_WSEGL.so
adb pull /system/lib/libPVRScopeServices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libPVRScopeServices.so
adb pull /system/lib/libsrv_init.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_init.so
adb pull /system/lib/libsrv_um.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_um.so

adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rild
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rild
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsec-ril.so
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsecril-client.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libril.so
adb pull /system/lib/libreference-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libreference-ril.so

# Camera
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libarccamera.so
adb pull /system/lib/libcamerafirmwarejni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcamerafirmwarejni.so
adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libseccameraadaptor.so
adb pull /system/lib/libseccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libseccamera.so
adb pull /system/lib/libs3cjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libs3cjpeg.so

# TV out
adb pull /system/lib/libtvoutservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libtvoutservice.so
adb pull /system/lib/libtvout.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libtvout.so
adb pull /system/lib/lib_tvoutengine.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib_tvoutengine.so
adb pull /system/lib/libtvoutfimc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libtvoutfimc.so
adb pull /system/lib/libtvouthdmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libtvouthdmi.so
adb pull /system/lib/libtvout_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libtvout_jni.so
adb pull /system/bin/tvoutserver ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/tvoutserver
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/tvoutserver


# Battery charging
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/playlpm
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/playlpm
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/charging_mode
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/charging_mode
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/immvibed
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/immvibed
adb pull /system/media/battery_charging_5.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_5.qmg
adb pull /system/media/battery_charging_10.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_10.qmg
adb pull /system/media/battery_charging_15.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_15.qmg
adb pull /system/media/battery_charging_20.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_20.qmg
adb pull /system/media/battery_charging_25.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_25.qmg
adb pull /system/media/battery_charging_30.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_30.qmg
adb pull /system/media/battery_charging_35.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_35.qmg
adb pull /system/media/battery_charging_40.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_40.qmg
adb pull /system/media/battery_charging_45.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_45.qmg
adb pull /system/media/battery_charging_50.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_50.qmg
adb pull /system/media/battery_charging_55.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_55.qmg
adb pull /system/media/battery_charging_60.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_60.qmg
adb pull /system/media/battery_charging_65.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_65.qmg
adb pull /system/media/battery_charging_70.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_70.qmg
adb pull /system/media/battery_charging_75.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_75.qmg
adb pull /system/media/battery_charging_80.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_80.qmg
adb pull /system/media/battery_charging_85.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_85.qmg
adb pull /system/media/battery_charging_90.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_90.qmg
adb pull /system/media/battery_charging_95.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_95.qmg
adb pull /system/media/battery_charging_100.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/battery_charging_100.qmg
adb pull /system/media/chargingwarning.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/chargingwarning.qmg
adb pull /system/media/Disconnected.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Disconnected.qmg

adb pull /system/lib/libgps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libgps.so
adb pull /system/lib/libsecgps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsecgps.so

# kernel prebuilt modules
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules
adb pull /modules/pvrsrvkm.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/pvrsrvkm.ko
adb pull /modules/s3c_bc.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/s3c_bc.ko
adb pull /modules/s3c_lcd.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/s3c_lcd.ko

# wifi
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
adb pull /etc/wifi/bcm4329_aps.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bcm4329_aps.bin
adb pull /etc/wifi/bcm4329_mfg.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bcm4329_mfg.bin
adb pull /etc/wifi/bcm4329_sta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bcm4329_sta.bin
adb pull /etc/wifi/nvram_mfg.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/nvram_mfg.txt
adb pull /etc/wifi/nvram_net.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/nvram_net.txt
adb pull /etc/wifi/wifi.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/wifi.conf
adb pull /etc/wifi/wpa_supplicant.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/wpa_supplicant.conf

adb pull /lib/modules/fsr.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/fsr.ko
adb pull /lib/modules/rfs_glue.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/rfs_glue.ko
adb pull /lib/modules/modemctl.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/modemctl.ko
adb pull /lib/modules/Si4709_driver.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/Si4709_driver.ko
adb pull /lib/modules/fsr_stl.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/fsr_stl.ko
adb pull /lib/modules/dhd.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/dhd.ko
adb pull /lib/modules/storage.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/storage.ko
adb pull /lib/modules/svnet.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/svnet.ko
adb pull /lib/modules/bthid.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/bthid.ko
adb pull /lib/modules/j4fs.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/j4fs.ko
adb pull /lib/modules/rfs_fat.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/rfs_fat.ko
adb pull /lib/modules/scsi_wait_scan.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/scsi_wait_scan.ko
adb pull /lib/modules/onedram.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/onedram.ko
adb pull /lib/modules/vibrator.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/vibrator.ko
adb pull /lib/modules/param.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modules/param.ko

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libs3cjpeg.so:obj/lib/libs3cjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvout.so:obj/lib/libtvout.so

# All the blobs necessary for galaxys
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.conf:system/etc/gps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pvrsrvinit:system/bin/pvrsrvinit \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libIMGegl.so:system/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvr2d.so:system/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libreference-ril.so:system/lib/libreference-ril.so \\
	vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_init.so:system/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_um.so:system/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libarccamera.so:system/lib/libarccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libseccamera.so:system/lib/libseccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libs3cjpeg.so:system/lib/libs3cjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecgps.so:system/lib/libsecgps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F00.bin:system/firmware/CE147F00.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F01.bin:system/firmware/CE147F01.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F02.bin:system/firmware/CE147F02.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F03.bin:system/firmware/CE147F03.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvoutservice.so:system/lib/libtvoutservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvout.so:system/lib/libtvout.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib_tvoutengine.so:system/lib/lib_tvoutengine.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvoutfimc.so:system/lib/libtvoutfimc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvouthdmi.so:system/lib/libtvouthdmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvout_jni.so:system/lib/libtvout_jni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tvoutserver:system/bin/tvoutserver \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/wifi.conf:system/etc/wifi/wifi.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Files for battery charging screen
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/playlpm:system/bin/playlpm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/charging_mode:system/bin/charging_mode \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/immvibed:system/bin/immvibed \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_100.qmg:system/media/battery_charging_100.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/Disconnected.qmg:system/media/Disconnected.qmg

# All kernel blobs necessary for galaxys
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/pvrsrvkm.ko:root/modules/pvrsrvkm.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/s3c_bc.ko:root/modules/s3c_bc.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/s3c_lcd.ko:root/modules/s3c_lcd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/fsr.ko:root/lib/modules/fsr.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/rfs_glue.ko:root/lib/modules/rfs_glue.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/modemctl.ko:root/lib/modules/modemctl.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/Si4709_driver.ko:root/lib/modules/Si4709_driver.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/dhd.ko:root/lib/modules/dhd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/storage.ko:root/lib/modules/storage.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/svnet.ko:root/lib/modules/svnet.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/bthid.ko:root/lib/modules/bthid.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/j4fs.ko:root/lib/modules/j4fs.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/rfs_fat.ko:root/lib/modules/rfs_fat.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/scsi_wait_scan.ko:root/lib/modules/scsi_wait_scan.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/onedram.ko:root/lib/modules/onedram.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/vibrator.ko:root/lib/modules/vibrator.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modules/param.ko:root/lib/modules/param.ko

EOF

./setup-makefiles.sh
