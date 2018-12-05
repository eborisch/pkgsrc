# $NetBSD$

PKG_OPTIONS_VAR=PKG_OPTIONS.dcmtk
PKG_SUPPORTED_OPTIONS= cxx11 private tiff png openssl xml
PKG_SUGGESTED_OPTIONS= tiff png openssl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mcxx11)
CMAKE_ARGS+=	-DDCMTK_ENABLE_CXX11=ON
.else
CMAKE_ARGS+=	-DDCMTK_ENABLE_CXX11=OFF
.endif

.if !empty(PKG_OPTIONS:Mprivate)
CMAKE_ARGS+=	-DDCMTK_ENABLE_PRIVATE_TAGS=ON
.else
CMAKE_ARGS+=	-DDCMTK_ENABLE_PRIVATE_TAGS=OFF
.endif

.if !empty(PKG_OPTIONS:Mtiff)
CMAKE_ARGS+=	-DDCMTK_WITH_TIFF=ON
.include "../../graphics/tiff/buildlink3.mk"
.else
CMAKE_ARGS+=	-DDCMTK_WITH_TIFF=OFF
.endif

.if !empty(PKG_OPTIONS:Mpng)
CMAKE_ARGS+=	-DDCMTK_WITH_PNG=ON
.include "../../graphics/png/buildlink3.mk"
.else
CMAKE_ARGS+=	-DDCMTK_WITH_PNG=OFF
.endif

.if !empty(PKG_OPTIONS:Mopenssl)
CMAKE_ARGS+=	-DDCMTK_WITH_OPENSSL=ON
.include "../../security/openssl/buildlink3.mk"
.else
CMAKE_ARGS+=	-DDCMTK_WITH_OPENSSL=OFF
.endif

.if !empty(PKG_OPTIONS:Mxml)
CMAKE_ARGS+=	-DDCMTK_WITH_XML=ON
.include "../../textproc/libxml2/buildlink3.mk"
.else
CMAKE_ARGS+=	-DDCMTK_WITH_XML=OFF
.endif
