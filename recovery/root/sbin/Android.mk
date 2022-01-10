ifneq ($(filter G40,$(TARGET_DEVICE)),)

LOCAL_PATH := device/InFocus/G40

include $(call all-makefiles-under,$(LOCAL_PATH))

endif