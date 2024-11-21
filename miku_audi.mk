#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Miku stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Inherit from audi device
$(call inherit-product, device/oneplus/audi/device.mk)

PRODUCT_NAME := miku_audi
PRODUCT_DEVICE := audi
PRODUCT_MANUFACTURER := oneplus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJF110

PRODUCT_SYSTEM_NAME := ossi
PRODUCT_SYSTEM_DEVICE := audi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 14 UKQ1.231108.001 1728796001418 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := oplus/ossi/ossi:14/UP1A.231005.007/1727692657372:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-oneplus