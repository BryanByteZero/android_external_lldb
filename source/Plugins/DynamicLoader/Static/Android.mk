LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := \
  DiagnosticCommonKinds.inc \
  DeclNodes.inc \
  StmtNodes.inc

lldb_PluginDynamicLoaderStatic_SRC_FILES := \
  DynamicLoaderStatic.cpp

LOCAL_SRC_FILES := $(lldb_PluginDynamicLoaderStatic_SRC_FILES)

LOCAL_MODULE:= liblldbPluginDynamicLoaderStatic
LOCAL_MODULE_TAGS := optional

include $(LLDB_BUILD_MK)
include $(CLANG_VERSION_INC_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
