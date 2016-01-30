#
# Copyright 2014 The Android Open-Source Project
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
$(call inherit-product, device/HUAWEI/hi6210sft/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs libsflinger
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES := \
                       vendor/mali/64bit/libGLES_mali.so:system/lib64/egl/libGLES_mali.so\
                       vendor/mali/64bit/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so\
                       vendor/mali/32bit/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
                       vendor/bin/surfaceflinger:system/bin/surfaceflinger\
                       vendor/lib/hw/hwcomposer.default.so:system/lib/hw/hwcomposer.default.so\
                       vendor/lib/hw/hwcomposer.hi6210sft.so:system/lib/hw/hwcomposer.hi6210sft.so\
                       vendor/lib64/hw/hwcomposer.hi6210sft.so:system/lib64/hw/hwcomposer.hi6210sft.so\
                       vendor/lib64/hw/hwcomposer.default.so:system/lib64/hw/hwcomposer.default.so\
                       vendor/mali/32bit/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so\
                       vendor/lib64/hw/memtrack.hi6210sft.so:system/lib64/hw/memtrack.hi6210sft.so\
                       vendor/lib/hw/memtrack.hi6210sft.so:system/lib/hw/memtrack.hi6210sft.so\
                       vendor/lib64/libGLES_android.so:system/lib64/egl/libGLES_android.so\
                       vendor/lib64/libEGL.so:system/lib64/libEGL.so\
                       vendor/lib64/libGLES_trace.so:system/lib64/libGLES_trace.so\
                       vendor/lib64/libGLESv1_CM.so:system/lib64/libGLESv1_CM.so\
                       vendor/lib64/libGLESv2.so:system/lib64/libGLESv2.so\
                       vendor/lib64/libGLESv3.so:system/lib64/libGLESv3.so\
                       vendor/lib64/libc.so:system/lib64/libc.so

                       

#PRODUCT_COPY_FILES := vendor/mali/64bit/libGLES_mali.so:system/lib64/egl/libGLES_mali.so\
#                      vendor/mali/64bit/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so\
#                       vendor/mali/32bit/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
#                       vendor/mali/32bit/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_hi6210sft
PRODUCT_DEVICE := hi6210sft
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on P8 Lite K
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

#$(call inherit-product, device/HUAWEI/hi6210sft/device.mk)
#$(call inherit-product-if-exists, vendor/HUAWEI/hi6210sft/device-vendor.mk)

PRODUCT_NAME := aosp_hi6210sft

PRODUCT_PACKAGES += \
    Launcher3




