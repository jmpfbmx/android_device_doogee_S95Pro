#
# Copyright 2020 The LineageOS Project.
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from DOOGEE S95 Pro device
$(call inherit-product, device/doogee/S95Pro/device.mk)

# Inherit some common MTKOSP stuff.
$(call inherit-product, vendor/mtkosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_RELEASE_NAME := DOOGEE S95 Pro
PRODUCT_BRAND := DOOGEE
PRODUCT_DEVICE := S95Pro
PRODUCT_MANUFACTURER := DOOGEE
PRODUCT_MODEL := S95Pro
PRODUCT_NAME := mtkosp_S95Pro

PRODUCT_GMS_CLIENTID_BASE := android-DOOGEE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="S95Pro" \
    PRODUCT_NAME="S95Pro"
