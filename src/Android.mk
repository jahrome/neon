LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS:=eng debug

LOCAL_SRC_FILES:= \
	ne_207.c	\
	ne_acl3744.c	\
	ne_alloc.c	\
	ne_auth.c	\
	ne_basic.c	\
	ne_compress.c	\
	ne_dates.c	\
	ne_locks.c	\
	ne_md5.c	\
	ne_ntlm.c	\
	ne_oldacl.c	\
	ne_pkcs11.c	\
	ne_props.c	\
	ne_redirect.c	\
	ne_request.c	\
	ne_session.c	\
	ne_socket.c	\
	ne_socks.c	\
	ne_sspi.c	\
	ne_string.c	\
	ne_stubssl.c	\
	ne_uri.c	\
	ne_utils.c	\
	ne_xml.c	\
	ne_xmlreq.c

LOCAL_SHARED_LIBRARIES := libm	\
	libexpat		\
	libz

LOCAL_MODULE:= libneon

LOCAL_C_INCLUDES := 			\
	$(LIBNEON_TOP)/android			\
	external/glib   		\
	external/zlib   		\
	external/expat/lib		\
	external/glib/glib   		\
	external/glib/gmodule   	\
	external/glib/gobject  		\
	external/glib/gthread		\
	$(LOCAL_PATH)

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H		    \
    -D_BSD_SOURCE           \
    -D_GNU_SOURCE	        \
    -DORC_ENABLE_UNSTABLE_API

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
