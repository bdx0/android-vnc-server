LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	../fbvncserver.c \
	libvncserver/main.c \
	libvncserver/rfbserver.c \
	libvncserver/rfbregion.c \
	libvncserver/auth.c \
	libvncserver/sockets.c \
	libvncserver/stats.c \
	libvncserver/corre.c \
	libvncserver/hextile.c \
	libvncserver/rre.c \
	libvncserver/translate.c \
	libvncserver/cutpaste.c \
	libvncserver/httpd.c \
	libvncserver/cursor.c \
	libvncserver/font.c \
	libvncserver/draw.c \
	libvncserver/selbox.c \
	libvncserver/d3des.c \
	libvncserver/vncauth.c \
	libvncserver/cargs.c \
	libvncserver/minilzo.c \
	libvncserver/ultra.c \
	libvncserver/scale.c \
	libvncserver/zlib.c \
	libvncserver/zrle.c \
	libvncserver/zrleoutstream.c \
	libvncserver/zrlepalettehelper.c \
	libvncserver/zywrletemplate.c \
	libvncserver/tight.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/libvncserver \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../external/zlib \
	$(LOCAL_PATH)/../external/jpeg

LOCAL_CFLAGS += -lz -ljpeg 

#LOCAL_SHARED_LIBRARIES := libz
LOCAL_STATIC_LIBRARIES := libjpeg libz
#LOCAL_SHARED_LIBRARIES := libjpeg libz

LOCAL_MODULE:= androidvncserver

include $(BUILD_EXECUTABLE)

