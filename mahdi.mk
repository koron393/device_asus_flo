# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit AOSP device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/mahdi/configs/common_full_tablet_wifionly.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := flo
PRODUCT_NAME := mahdi_flo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.3/JLS36C/779366:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JLS36C 779366 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
