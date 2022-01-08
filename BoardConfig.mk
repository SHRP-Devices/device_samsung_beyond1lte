# Platform
DEVICE_CODENAME := beyond1lte
DEVICE_PATH := device/samsung/$(DEVICE_CODENAME)
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g76
TARGET_SOC := exynos9820
TARGET_BOOTLOADER_BOARD_NAME := universal9820
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
ALLOW_MISSING_DEPENDENCIES=true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_Y_OFFSET := 142
TW_H_OFFSET := -142
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 25500
TW_DEFAULT_BRIGHTNESS := 12800
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_EXCLUDE_TWRPAPP := true

# Release related flags
PLATFORM_VERSION := 11
PLATFORM_SECURITY_PATCH := 2021-12-01

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1

# SHRP flags
SHRP_PATH := $(DEVICE_PATH)
SHRP_MAINTAINER := corsicanu
SHRP_DEVICE_CODE := $(DEVICE_CODENAME)
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_flash
SHRP_FONP_2 := 
SHRP_FONP_3 := 
SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_REC := /dev/block/platform/13d60000.ufs/by-name/recovery
SHRP_AB := false
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A_Only
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
SHRP_EXPRESS := true
SHRP_OFFICIAL := true
SHRP_DARK := true
SHRP_ALT_REBOOT := true
LZMA_RAMDISK_TARGETS := recovery
LZMA_COMPRESSION := -9

# SHRP addons
SHRP_EXCLUDE_MAGISK_FLASH := true
SHRP_EXTERNAL_ADDON_PATH := $(DEVICE_PATH)/addons/
SHRP_SKIP_DEFAULT_ADDON_1 := true
SHRP_SKIP_DEFAULT_ADDON_2 := true
INC_IN_REC_ADDON_3 := true
SHRP_SKIP_DEFAULT_ADDON_4 := true

SHRP_EXTERNAL_ADDON_1_NAME := "Security patch fixer"
SHRP_EXTERNAL_ADDON_1_INFO := "Patch boot/recovery with security patch of the current system"
SHRP_EXTERNAL_ADDON_1_FILENAME := "Security_patch_fixer_v0.4.zip"
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Patch now"
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Successfuly patched"
SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true

SHRP_EXTERNAL_ADDON_2_NAME := "Bootlogo patcher"
SHRP_EXTERNAL_ADDON_2_INFO := "Disable bootlogo warnings - exynos only"
SHRP_EXTERNAL_ADDON_2_FILENAME := "TWRP_Bootlogo_patcher_v1.3.zip"
SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Patch now"
SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Successfuly patched"
SHRP_INC_IN_REC_EXTERNAL_ADDON_2 := true

SHRP_EXTERNAL_ADDON_3_NAME := "Samsung Multidisabler - v3.1"
SHRP_EXTERNAL_ADDON_3_INFO := "Simple Samsung security services disabler"
SHRP_EXTERNAL_ADDON_3_FILENAME := "multidisabler-samsung-3.1.zip"
SHRP_EXTERNAL_ADDON_3_BTN_TEXT := "Patch now"
SHRP_EXTERNAL_ADDON_3_SUCCESSFUL_TEXT := "Successfuly patched"
SHRP_INC_IN_REC_EXTERNAL_ADDON_3 := true

SHRP_EXTERNAL_ADDON_4_NAME := "F2FS enabled fstab - only for Android 11 and 12"
SHRP_EXTERNAL_ADDON_4_INFO := "Patched fstab to allow booting with f2fs formatted partitions"
SHRP_EXTERNAL_ADDON_4_FILENAME := "f2fs_fstab_flashable.zip"
SHRP_EXTERNAL_ADDON_4_BTN_TEXT := "Flash now"
SHRP_EXTERNAL_ADDON_4_SUCCESSFUL_TEXT := "Successfuly flashed"
SHRP_INC_IN_REC_EXTERNAL_ADDON_4 := true

# Include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

