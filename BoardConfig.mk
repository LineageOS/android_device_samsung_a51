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

# Inherit from the common tree
include device/samsung/universal9611-common/BoardConfigCommon.mk
# Inherit optional vendor BoardConfig
-include vendor/samsung/a51/BoardConfigVendor.mk

# OTA Asserts
TARGET_OTA_ASSERT_DEVICE := a51,a51dd,a51nsxx
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

## Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_a51
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

## Partitions Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 61865984
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71106560
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

## Camera
SOONG_CONFIG_NAMESPACES += samsungCameraVars
SOONG_CONFIG_samsungCameraVars += extra_ids
SOONG_CONFIG_samsungCameraVars_extra_ids := 4,20,23,50,52,54

## Vintf
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/configs/vintf/device_framework_matrix.xml

## Filesystem config
include device/samsung/universal9611-common/fsconfig_dynamic.mk

# FOD
TARGET_SURFACEFLINGER_UDFPS_LIB := //$(DEVICE_PATH):libudfps_extension.a51
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x400000000LL

## SELinux
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

## Prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
