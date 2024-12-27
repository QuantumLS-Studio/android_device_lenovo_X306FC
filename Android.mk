#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call mydir)

ifeq ($(TARGET_DEVICE),X306FC)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif