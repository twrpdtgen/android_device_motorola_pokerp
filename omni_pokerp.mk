#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pokerp device
$(call inherit-product, device/motorola/pokerp/device.mk)

PRODUCT_DEVICE := pokerp
PRODUCT_NAME := omni_pokerp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e(6s)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_p161bn-user 9 PTBS29.401-58-7 58-7 release-keys"

BUILD_FINGERPRINT := motorola/pokerp_retin_64/pokerp:9/PTBS29.401-58-7/58-7:user/release-keys
