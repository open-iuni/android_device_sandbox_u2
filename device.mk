# Everything in this directory will become public

# Include common makefile
$(call inherit-product, device/sandbox/u2/common.mk)

#$(call inherit-product, frameworks/native-caf/build/phone-xxxhdpi-3072-dalvik-heap.mk)
#$(call inherit-product, frameworks/native-caf/build/phone-xxhdpi-2048-hwui-memory.mk)

LOCAL_PATH := device/sandbox/u2

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fstab.u2:root/fstab.qcom \
    $(LOCAL_PATH)/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# device specific packages
PRODUCT_PACKAGES += \
    SnapdragonCamera

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    persist.camera.4k2k.enable=1 \
    ro.qti.sensors.ir_proximity=true