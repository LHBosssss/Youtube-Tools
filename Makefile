INSTALL_TARGET_PROCESSES = YouTube
THEOS_DEVICE_IP = 192.168.1.7
ARCHS = arm64e
DEBUG = 0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YoutubeTools

YoutubeTools_FILES = Tweak.x
YoutubeTools_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
