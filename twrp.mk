RECOVERY_VARIANT := twrp
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRP_APP := true
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_CRYPTFS_HW_PATH += vendor/qcom/opensource/cryptfs_hw
