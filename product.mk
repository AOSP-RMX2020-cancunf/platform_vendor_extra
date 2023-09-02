#
# Copyright (C) 2022 Vaisakh Murali
# Copyright (C) 2023 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# App
PRODUCT_PACKAGES += \
	ThemePicker \
	messaging

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
	SystemUI

# Enable whole-program R8 Java optimizations for SystemUI and system_server,
# but also allow explicit overriding for testing and development.
SYSTEM_OPTIMIZE_JAVA ?= true
SYSTEMUI_OPTIMIZE_JAVA ?= true
