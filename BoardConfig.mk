#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/audi

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a-branchprot
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := pineapple
TARGET_NO_BOOTLOADER := true

# Hardware
BOARD_USES_QCOM_HARDWARE := true

# Kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_RAMDISK_USE_LZ4 := true
TARGET_NEEDS_DTBOIMAGE := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image

TARGET_KERNEL_SOURCE := kernel/oneplus/audi
TARGET_KERNEL_CONFIG := \
    gki_defconfig

BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_INIT_ARGS += --header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

BOARD_KERNEL_CMDLINE := \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    swinfo.fingerprint=$(LINEAGE_VERSION) \
    mtdoops.fingerprint=$(LINEAGE_VERSION)

BOARD_BOOTCONFIG := \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    androidboot.load_modules_parallel=true \
    androidboot.vendor.qspa=true \
    androidboot.hypervisor.protected_vm.supported=false \
    androidboot.selinux=permissive

# Platform
TARGET_BOARD_PLATFORM := pineapple

# Recovery
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true