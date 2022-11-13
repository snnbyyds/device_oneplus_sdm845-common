#
# Copyright (C) 2022 The SN power Technology
#
# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
LOCAL_PATH := $(call my-dir)

ifneq ($(filter fajita enchilada, $(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := GCam
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../../vendor/gapps/product/packages/privileged_apps/GoogleCamera/GoogleCamera.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Camera2 Aperture
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

endif
