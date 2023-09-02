#
# Copyright (C) 2022 Vaisakh Murali
# Copyright (C) 2023 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# Build support for extras
PRODUCT_PACKAGES += \
	ThemePicker \
	AOSPDialerExtensions \
	AOSPKeyboardExtensions \
	FrameworkExtensions \
	SystemUIExtensions

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI
