#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/lenovo/mt6765-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/X306FC

# Display
TARGET_SCREEN_DENSITY := 160

# Kernel
TARGET_FORECE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilt/lkm-4.9/*.ko)

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab

# SPL
SYSTEM_SECURITY_PATCH := 2024-12-21
VENDOR_SECURITY_PATCH := 2024-12-21

# OTA assert
TARGET_OTA_ASSERT_DEVICE := X306FC

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include the proprietary files BoardConfig.
include vendor/lenovo/mt6765-common/BoardConfigVendor.mk
