#
# Copyright (C) 2022 Vaisakh Murali
# Copyright (C) 2023 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# App
PRODUCT_PACKAGES += \
	ThemePicker \
	messaging

# Overlays
PRODUCT_PACKAGES += \
	AOSPDialerExtensions \
	AOSPKeyboardExtensions \
	FrameworkExtensions \
	SystemUIExtensions

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI
