#
# Copyright (C) 2024 The Android Open Source Project
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

# Inherit from m33x device
$(call inherit-product, device/samsung/m33x/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_m33x
PRODUCT_DEVICE := m33x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M336B
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m33xxx-user 14 UP1A.231005.007 M336BXXU5DWK6 release-keys" \
    PRODUCT_DEVICE=m33x \
    PRODUCT_NAME=m33xxx \
    TARGET_BOOTLOADER_BOARD_NAME=s5e8825 \

BUILD_FINGERPRINT := "samsung/m33xeea/m33x:14/UP1A.231005.007/M336BXXU5DWK6:user/release-keys"
