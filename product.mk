#
# Copyright (C) 2022 Vaisakh Murali
# Copyright (C) 2023 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# GMS
ifeq ($(WITH_GMS), true)
    $(call inherit-product-if-exists, vendor/partner_gms/products/gms.mk)
endif

# APN
PRODUCT_COPY_FILES += \
    vendor/extra/apn/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# App
PRODUCT_PACKAGES += \
    ThemePicker

ifneq ($(WITH_GMS), true)
    PRODUCT_PACKAGES += \
	messaging
endif

# Bootanimation
include vendor/extra/bootanimation/bootanimation.mk

# Overlays
PRODUCT_PACKAGES += \
	FrameworkExtensions \
	GoogleSettingsOverlay \
	SystemUIExtensions

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI

# SystemUI Clocks
$(call inherit-product-if-exists, vendor/SystemUIClocks/product.mk)

# Enable whole-program R8 Java optimizations for SystemUI and system_server,
# but also allow explicit overriding for testing and development.
SYSTEM_OPTIMIZE_JAVA ?= true
SYSTEMUI_OPTIMIZE_JAVA ?= true
