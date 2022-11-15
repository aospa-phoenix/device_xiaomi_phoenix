#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Debug options for phoenix target
PHOENIX_DEBUG := false

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/aosp/config/common.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
