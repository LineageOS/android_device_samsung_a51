#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/samsung/a51

# Inherit common device configuration
$(call inherit-product, device/samsung/universal9611-common/common.mk)
# Inherit A51 blobs
$(call inherit-product, vendor/samsung/a51/a51-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Screen H/W
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Init.rc
PRODUCT_PACKAGES += \
    init.gps.rc \
    fingerprint_common.rc
