#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# It's a tablet
PRODUCT_CHARACTERISTICS := tablet

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH)

# Prebuilt kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/Image.gz:kernel

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/mt6765-common/common.mk)

# Inherit for tablet
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Call the proprietary device makefile
$(call inherit-product, vendor/lenovo/mt6765-common/mt6765-common-vendor.mk)

# AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

