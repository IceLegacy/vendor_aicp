# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit AICP common_tablet bits
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/asus/grouper

# AICP common stuff
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation-alt.zip

#MMS and Phone
PRODUCT_PACKAGES += \
    Mms

# Setup device specific product configuration.
PRODUCT_NAME := aicp_tilapia
PRODUCT_BRAND := Google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.4.2 KOT49H 937116 release-keys"

