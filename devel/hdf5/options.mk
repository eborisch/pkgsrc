# $NetBSD: options.mk,v 1.7 2011/10/07 10:38:50 alnsn Exp $

PKG_OPTIONS_VAR=PKG_OPTIONS.hdf5
PKG_SUPPORTED_OPTIONS=	szip threads unsupported eab
# szip is non-Free, so leave out by default
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mszip)
CONFIGURE_ARGS+=	--with-szlib
.include "../../archivers/szip/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mthreads)
CONFIGURE_ARGS+=	--enable-threadsafe
# XXX libraries should not be linked against -lpthread
.include "../../mk/pthread.buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Munsupported)
CONFIGURE_ARGS+=	--enable-unsupported
.endif

PLIST_VARS+=		eab

.if !empty(PKG_OPTIONS:Meab)
CONFIGURE_ARGS+=	--with-default-plugin-dir=${PREFIX}/lib/hdf5
INSTALLATION_DIRS+=     lib/hdf5
PLIST.eab=		yes
.endif
