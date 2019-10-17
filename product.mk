PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGES += auditd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.config.media_vol_steps=25

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    lineage.updater.uri=https://updater.theflamingskull.com/api/v1/{device}/{type}/{incr}
$(call prepend-product-if-exists, vendor/jrior001/product.mk)

ifneq ($(filter lineage_marlin lineage_mata lineage_nash lineage_sailfish lineage_polaris,$(TARGET_PRODUCT)),)
# TARGET_ARCH doesn't get set in time, so let's make sure its done before we inherit gapps
TARGET_ARCH := arm64
-include vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk
endif

#ifneq ($(filter lineage_bacon lineage_n3 ,$(TARGET_PRODUCT)),)
# TARGET_ARCH doesn't get set in time, so let's make sure its done before we inherit gapps
#TARGET_ARCH := arm
#-include vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk
#endif

TARGET_EXTRA_KERNEL_MODULES := wireguard

PRODUCT_COPY_FILES += \
    vendor/extra/rootdir/etc/init/ttl.rc:system/etc/init/ttl.rc
