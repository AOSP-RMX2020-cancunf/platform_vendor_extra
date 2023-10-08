#
# Copyright (C) 2022 Vaisakh Murali
# Copyright (C) 2023 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# GMS
ifeq ($(WITH_GMS), true)
    $(call inherit-product-if-exists, vendor/gms/products/gms.mk)
endif

# App
ifneq ($(WITH_GMS), true)
    PRODUCT_PACKAGES += \
	ThemePicker \
	messaging
endif

# Bootanimation
include vendor/extra/bootanimation/bootanimation.mk

# Overlays
PRODUCT_PACKAGES += \
	FrameworkExtensions \
	SystemUIExtensions

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI

# Enable whole-program R8 Java optimizations for SystemUI and system_server,
# but also allow explicit overriding for testing and development.
SYSTEM_OPTIMIZE_JAVA ?= true
SYSTEMUI_OPTIMIZE_JAVA ?= true
