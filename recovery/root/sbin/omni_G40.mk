$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace G40 with your Device Name's Value.
# Replace InFocus with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/InFocus/G40/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := G40
PRODUCT_NAME := omni_G40
PRODUCT_BRAND := InFocus
PRODUCT_MODEL := G40
PRODUCT_MANUFACTURER := InFocus

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="InFocus/M535_00WW/G40:5.1/LMY47D/00WW_0_26P:user/release-keys" \
    PRIVATE_BUILD_DESC="M535_00WW-user 5.1 LMY47D 00WW_0_26P release-keys"