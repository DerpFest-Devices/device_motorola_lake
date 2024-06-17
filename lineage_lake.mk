#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/motorola/lake/device.mk)

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

# Device identifiers
PRODUCT_DEVICE := lake
PRODUCT_NAME := lineage_lake
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lake_retail \
    PRIVATE_BUILD_DESC="lake-user 10 QPWS30.61-21-18-7-12 b1002 release-keys"

BUILD_FINGERPRINT := motorola/lake_retail/lake:10/QPWS30.61-21-18-7-12/b1002:user/release-keys
