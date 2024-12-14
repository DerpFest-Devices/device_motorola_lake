# Inherit some common derpfest stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lake device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifiers
#BUILD_FINGERPRINT := motorola/lake_retail/lake:10/QPWS30.61-21-18-7-12/b1002:user/release-keys
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := lake
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Moto G7 Plus
PRODUCT_NAME := derp_lake

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lake \
    PRIVATE_BUILD_DESC="lake-user 10 QPWS30.61-21-18-7-12 b1002 release-keys"
