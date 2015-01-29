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

# Inherit from those products. Most specific first.
#$(call inherit-product, device/samsung/v1awifi/device.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/vivalto3gvndx/init.scx15_ss.rc:root/init.scx15_ss.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn.rc:root/init.vivalto3gvn.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn_base.rc:root/init.vivalto3gvn_base.rc \
	device/samsung/vivalto3gvndx/init.wifi.rc:root/init.wifi.rc \
	device/samsung/vivalto3gvndx/ueventd.scx15.rc:root/ueventd.scx15.rc \
        device/samsung/vivalto3gvndx/init.recovery.scx15.rc:root/init.recovery.scx15.rc \
	#device/samsung/vivalto3gvndx/fstab.rhea_ss_corsica:root/fstab.rhea_ss_corsica 

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_vivalto3gvndx
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ

