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
TARGET_OTA_ASSERT_DEVICE := a51,a51dd

# Kernel config
TARGET_KERNEL_CONFIG := a51_defconfig
