LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on
include $(CLEAR_VARS)
LOCAL_MODULE := libopencv_core
LOCAL_SRC_FILES := libopencv_core.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libopencv_objdetect
LOCAL_SRC_FILES := libopencv_objdetect.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := face_detection
LOCAL_SRC_FILES := haar_detect.cpp \
DetectionBasedTracker_jni.cpp

LOCAL_SHARED_LIBRARIES := \
    libopencv_core   \
    libopencv_objdetect

LOCAL_LDLIBS += -llog -ldl
include $(BUILD_SHARED_LIBRARY)