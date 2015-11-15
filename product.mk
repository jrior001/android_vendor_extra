RECOVERY_VARIANT := twrp
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

$(call prepend-product-if-exists, vendor/invisiblek/product.mk)
