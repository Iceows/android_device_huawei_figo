#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Device
$(call inherit-product, device/huawei/figo/device.mk)

## LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_figo
PRODUCT_DEVICE := figo
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := P Smart 2018
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ANE \
    PRIVATE_BUILD_DESC="ANE-L21-user 9.1.0 HUAWEIANE-L21 401-LGRP2-OVS release-keys"

BUILD_FINGERPRINT := HUAWEI/ANE-LX1/HWANE:9/HUAWEIANE-L21/9.1.0.368C432:user/release-keys
