#
# Copyright 2016 The CyanogenMod Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit from h830 device
$(call inherit-product, device/lge/h830/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h830
PRODUCT_NAME := pixys_h830
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H830
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="h1" \
    PRODUCT_DEVICE="h1" \
    PRODUCT_NAME="h1_tmo_us" \
    PRIVATE_BUILD_DESC="h1_tmo_us-user 8.0.0 OPR1.170623.032 182251913485f release-keys"

BUILD_FINGERPRINT := "lge/h1_tmo_us/h1:8.0.0/OPR1.170623.032/182251913485f:user/release-keys"

TARGET_BOOT_ANIMATION_RES := 1080

