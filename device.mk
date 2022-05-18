#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths.xml

# Boot Animation
TARGET_SCREEN_HEIGHT := 3168
TARGET_SCREEN_WIDTH := 1440

# Device init scripts
PRODUCT_PACKAGES += \
    init.recovery.target.rc

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResDevice \
    SettingsProviderResDevice \
    SystemUIResDevice

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/lemonadep/lemonadep-vendor.mk)
