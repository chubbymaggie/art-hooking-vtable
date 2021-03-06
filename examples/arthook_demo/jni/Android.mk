# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libhook
LOCAL_SRC_FILES := arthook_demo.c log.c
LOCAL_C_INCLUDES := ../../../adbi/instruments/base/ ../../../arthook/core/jni/
LOCAL_LDLIBS    := -L../../../arthook/core/jni/libs -ldl -llog
LOCAL_LDLIBS    += -Wl,--start-group ../../../adbi/instruments/base/obj/local/armeabi/libbase.a ../../../arthook/core/obj/local/armeabi/libartdroid.a -Wl,--end-group
#LOCAL_CFLAGS    := -g -std=gnu99
LOCAL_CFLAGS := -std=gnu++11 -fpermissive -DDEBUG -O0
LOCAL_ARM_MODE := thumb
#LOCAL_STATIC_LIBRARIES := -Wl,--start-group ../../../adbi/instruments/base/obj/local/armeabi/libbase.a ../../../arthook/core/obj/local/armeabi/libarthook.a -Wl,--end-group

include $(BUILD_SHARED_LIBRARY)
