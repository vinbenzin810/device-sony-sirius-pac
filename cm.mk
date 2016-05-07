# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from device config
$(call inherit-product, device/sony/sirius/aosp_d6503.mk)

# Inherit CM specific telephony.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="D6503"
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="Sony/D6503/D6503:5.1.1/23.4.A.1.264/2418263178:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6503-user 5.1.1 23.4.A.1.264 2418263178 release-keys"

PRODUCT_NAME := cm_sirius
PRODUCT_DEVICE := sirius
PRODUCT_MODEL := Xperia Z2
