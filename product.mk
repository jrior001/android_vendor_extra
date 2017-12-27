PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGES += auditd

$(call prepend-product-if-exists, vendor/jrior001/product.mk)
