#
# Copyright (C) 2022 Vaisakh Murali
# SPDX-License-Identifer: Apache-2.0
#

# Build support for extras
PRODUCT_PACKAGES += \
	Camera \
	Chromium \
	ThemePicker \
	AOSPKeyboardExtensions \
	FrameworkExtensions \
	SystemUIExtensions

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI

# Flags
ifeq ($(TARGET_BUILD_VARIANT), user)
	PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
	PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
	WITH_DEXPREOPT_DEBUG_INFO := false
endif

# Font
include vendor/extensions/fonts/fonts.mk
