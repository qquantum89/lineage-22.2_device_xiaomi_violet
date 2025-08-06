#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common infinityFest AOSP stuff.
# $(call inherit-product, vendor/infinity/config/common_full_phone.mk)
# Vendor for lineageOs based Repo
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Infinity-X Flags
# INFINITY_BUILD_TYPE := UnOfficial
# INFINITY_MAINTAINER := Anirban
# TARGET_SUPPORTS_BLUR := false
# TARGET_HAS_UDFPS := false

# RisingOs Specific 
# Add the following variables:

# Lunch banner maintainer variable
RISING_MAINTAINER="Anirban"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 675" \
    RisingMaintainer="Anirban"

RISING_MAINTAINER := Anirban

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := false

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := false

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true/false 
# Build Variante 
WITH_GAPPS := true
WITH_GMS := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
USE_LEGACY_BOOTANIMATION := true

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Disable UDFPS animations ( unsupported )
EXTRA_UDFPS_ICONS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "violet-user 10 QKQ1.190915.002 V12.5.1.0 release-keys")

    BUILD_FINGERPRINT := xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
   ro.build.fingerprint=$(BUILD_FINGERPRINT)
