#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/rhode/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "JustGL"
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := false
TARGET_SHIPS_GOOGLE_DIALER := false
USE_MOTO_CALCULATOR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_rhode
PRODUCT_DEVICE := rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhode_g-user 13 T2SR33.72-22-4-13 6b3c4b-075d74 release-keys" \
    BuildFingerprint=motorola/rhode_g/rhode:13/T2SR33.72-22-4-13/6b3c4b-075d74:user/release-keys \
    DeviceProduct=rhode_g
