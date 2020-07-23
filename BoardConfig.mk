# Copyright (C) 2020 crazo7924
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
# limitations under the License

DEVICE_PATH := device/lenovo/k5fpr

# OTA assert
TARGET_OTA_ASSERT_DEVICE := k5fpr,A7010a48

# Board
TARGET_BOARD_PLATFORM := mt6753
TARGET_BOARD_SUFFIX := _64
TARGET_SOC := mt6753
TARGET_BOARD_PLATFORM_GPU := mali-t720

# Bootloader
# build/make/core/Makefile
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6753

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_CONFIG := k5fpr_defconfig
TARGET_KERNEL_SOURCE = kernel/lenovo/k5fpr/
BOARD_KERNEL_BASE            := 0x40078000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_IMAGE_NAME      := Image.gz-dtb

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := --base 0x40078000
BOARD_MKBOOTIMG_ARGS += --pagesize 2048
BOARD_MKBOOTIMG_ARGS += --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x03f88000
BOARD_MKBOOTIMG_ARGS += --second_offset 0x00e88000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x0df88000
BOARD_MKBOOTIMG_ARGS += --board A7010

# 64 bit binder
# build/make/core/config.mk
TARGET_USES_64_BIT_BINDER := true

# System FS
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# system/core and build/make
AB_OTA_UPDATER := false
BLOCK_BASED_OTA := true

# Vendor FS
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Cache FS
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 409600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_VENDORIMAGE_PARTITION_SIZE := 526848000
BOARD_FLASH_BLOCK_SIZE := 131072

# Userimage types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 5
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1

# SEPolicy
# BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Properties split
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# MTK Hardware flags
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Allow vendor duplicate overrides
BUILD_BROKEN_DUP_RULES := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# Ramdisk compression
LZMA_RAMDISK_TARGETS := recovery

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
# Do not set up legacy properties
TW_NO_LEGACY_PROPS := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 127
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_USE_NEW_MINADBD := true
