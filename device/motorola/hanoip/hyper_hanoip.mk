# Experimental product definition for Motorola Moto G60 (hanoip).
# Android 16 / HyperOS 4 port target.
#
# Bring-up status: INCOMPLETE. Do not use this as a flashable ROM definition.
# Device, vendor, kernel, sepolicy, overlays and partition configuration
# must be added only after their sources and compatibility are verified.

$(call inherit-product, device/motorola/hanoip/device.mk)

PRODUCT_NAME := hyper_hanoip
PRODUCT_DEVICE := hanoip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(60)
PRODUCT_MANUFACTURER := motorola
PRODUCT_CHARACTERISTICS := phone
