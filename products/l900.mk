# Inherit AOSP device configuration for l900.
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/aicp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# t0ltecdma Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/t0ltecdma

# Setup device specific product configuration.
PRODUCT_NAME := aicp_l900
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := l900
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltespr BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.3/JSS15J/L900VPUBMK4:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.3 JSS15J L900VPUBMK4 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/aicp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip