#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common EvoX stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#MIUI Camera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

#Some Flags
PRODUCT_NO_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

#GAPPS
WITH_GMS := true
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#RisingFlags
PRODUCT_BUILD_PROP_OVERRIDES += \
     RisingMaintainer="CHRONIX魚" \
     RisingChipset="Snapdragon 675"

