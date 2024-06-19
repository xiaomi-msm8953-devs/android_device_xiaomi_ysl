#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from ysl device
$(call inherit-product, device/xiaomi/ysl/device.mk)

# Inherit some common cherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
CHERISH_MAINTAINER := Harsh-Tagra
CHERISH_CHIPSET := MSM8953
CHERISH_BATTERY := 3080mAh
CHERISH_DISPLAY := 1440x720


TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
CHERISH_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_64_BIT_APPS:= true
USE_PIXEL_CHARGING := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := cherish_ysl
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ysl-user 9 PKQ1.181203.001 V12.0.2.0.PEFMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/ysl/ysl:9/PKQ1.181203.001/V12.0.2.0.PEFMIXM:user/release-keys"
