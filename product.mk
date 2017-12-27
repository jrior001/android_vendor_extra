PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGES += auditd

PRODUCT_PROPERTY_OVERRIDES += \
    cm.updater.uri=http://updater.theflamingskull.com/api

$(call prepend-product-if-exists, vendor/jrior001/product.mk)
