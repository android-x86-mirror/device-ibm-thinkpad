PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_PACKAGES += lights.default
PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)
PRODUCT_PACKAGES += wacom-input
PRODUCT_PACKAGES += tablet-mode
PRODUCT_PACKAGES += su Superuser FileManager alsa_amixer radiooptions rild libreference-ril libjni_pinyinime PinyinIME libskiagpu

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := thinkpad
PRODUCT_DEVICE := thinkpad
PRODUCT_MANUFACTURER := ibm

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ueventd.$(TARGET_PRODUCT).rc:root/ueventd.$(TARGET_PRODUCT).rc \
    $(LOCAL_PATH)/wacom-input.idc:system/usr/idc/wacom-input.idc \
    $(LOCAL_PATH)/AT_Translated_Set_2_keyboard.idc:system/usr/idc/AT_Translated_Set_2_keyboard.idc \

-include $(LOCAL_PATH)/system/Makefile.copy-files

include $(call all-subdir-makefiles)
