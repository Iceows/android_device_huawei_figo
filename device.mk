#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/huawei/figo

## Inherit common device
$(call inherit-product, device/huawei/hi6250-9-common/common.mk)

## Inherit vendor blobs
$(call inherit-product, vendor/huawei/figo/figo-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/volume/default_volume_tables.xml

# Display
TARGET_SCREEN_DENSITY := 428
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080


# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/figo.rc:$(TARGET_COPY_OUT_ODM)/etc/init/figo.rc

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

