PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGES += auditd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

$(call prepend-product-if-exists, vendor/invisiblek/product.mk)
