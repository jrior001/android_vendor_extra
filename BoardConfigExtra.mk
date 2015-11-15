-include vendor/invisiblek/BoardConfigExtra.mk

# TWRP Support - Optional
ifeq ($(WITH_TWRP),true)
-include vendor/extra/twrp.mk
endif
