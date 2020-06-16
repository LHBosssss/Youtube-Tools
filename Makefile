INSTALL_TARGET_PROCESSES = Youtube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YoutubeTools

YoutubeTools_FILES = Tweak.x
YoutubeTools_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
