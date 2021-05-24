ifdef SIMULATOR
TARGET = simulator:clang:latest:8.0
else
TARGET = iphone:clang:latest:7.0
ARCHS = arm64 arm64e
endif

INSTALL_TARGET_PROCESSES = druid

TWEAK_NAME = NoPastedFrom

NoPastedFrom_FILES = Tweak.x
NoPastedFrom_CFLAGS = -fobjc-arc

ADDITIONAL_CFLAGS += -Wno-error=unused-variable -Wno-error=unused-function -Wno-error=unused-value -include Prefix.pch

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
