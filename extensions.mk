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

# Font
include vendor/extensions/fonts/fonts.mk
