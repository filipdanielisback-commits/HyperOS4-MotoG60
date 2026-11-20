# Product registration for the experimental HyperOS 4 hanoip port.
# This registers the product name only; it does not make the device buildable.

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/hyper_hanoip.mk

COMMON_LUNCH_CHOICES := \
    hyper_hanoip-user \
    hyper_hanoip-userdebug
