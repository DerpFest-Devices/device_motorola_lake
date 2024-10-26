#
# Copyright (C) 2017 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Must set these before including common config
BOARD_USES_KEYMASTER_4 := true
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOOTLOADER_BOARD_NAME := SDM660

# Inherit from motorola msm8998-common
include device/motorola/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/lake

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/board-info.txt
TARGET_OTA_ASSERT_DEVICE := lake,lake_n

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/lake_manifest.xml

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/c0c4000.sdhci
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_CONFIG := lineageos_lake_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # 64 MB
BOARD_DTBOIMG_PARTITION_SIZE := 16777216 # 16 MB
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2969567232 # 2832 MB
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 939524096 # 896 MB
BOARD_SUPER_PARTITION_OEM_DEVICE_SIZE := 285212672 # 272 MB
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system oem vendor
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_SIZE := 4194304000 # 4000 MB
BOARD_SUPER_PARTITION_GROUPS := lake_dynpart
BOARD_LAKE_DYNPART_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304 ) # 4 MB
BOARD_LAKE_DYNPART_PARTITION_LIST := product system vendor

# Power
TARGET_HAS_NO_WLAN_STATS := true

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/props/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/props/vendor.prop

# Recovery
TARGET_RECOVERY_UI_BLANK_UNBLANK_ON_INIT := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# inherit from the proprietary version
include vendor/motorola/lake/BoardConfigVendor.mk
