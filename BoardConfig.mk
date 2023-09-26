#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/huawei/figo

## Include common BoardConfig
include device/huawei/hi6250-9-common/BoardConfigCommon.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 25165824 # mmcblk0p31 (24576*1024)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 134217728 # mmcblk0p43 (131072*1024)
BOARD_ODMIMAGE_PARTITION_SIZE      := 134217728 # mmcblk0p44 (131072*1024)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 # mmcblk0p33 (32768*1024) recovery_ramdisk -> /dev/block/mmcblk0p33
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4831838208 # mmcblk0p52 (4718592*1024) system -> /dev/block/mmcblk0p52
BOARD_PRODUCTIMAGE_PARTITION_SIZE  := 562036736  # mmcblk0p58 (548864*1024) product -> /dev/block/mmcblk0p58
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22821208064 # mmcblk0p59 (22286336*1024) userdata -> /dev/block/mmcblk0p59
BOARD_VENDORIMAGE_PARTITION_SIZE   := 612368384 # mmcblk0p57 (598016*1024) vendor -> /dev/block/mmcblk0p57



