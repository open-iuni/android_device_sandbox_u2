# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sandbox/u2/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_u2
PRODUCT_DEVICE := u2
PRODUCT_BRAND := IUNI
PRODUCT_MODEL := U2
PRODUCT_MANUFACTURER := IUNI

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=U2 \
    TARGET_DEVICE=U2

# Inline kernel
TARGET_KERNEL_SOURCE := kernel/sandbox/u2
TARGET_KERNEL_CONFIG := u810_defconfig
