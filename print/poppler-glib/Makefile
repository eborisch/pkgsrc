# $NetBSD: Makefile,v 1.78 2019/10/19 12:37:05 nia Exp $

.include "../../print/poppler/Makefile.common"

PKGNAME=	poppler-glib-${POPPLER_VERS}

COMMENT=	PDF rendering library (GLib wrapper)

CONFLICTS+=	poppler<0.4.5nb1

PKGCONFIG_OVERRIDE+=	${WRKSRC}/poppler-glib.pc.cmake

USE_TOOLS+=	python

# Don't build the splash graphics backend.
CMAKE_ARGS+=	-DENABLE_SPLASH=OFF
# Don't compile GTK+ test program.
CMAKE_ARGS+=	-DBUILD_GTK_TESTS=OFF
# Compile GLib wrapper which also needs gtk2
CMAKE_ARGS+=	-DENABLE_GLIB=ON
# Do not generate glib API documentation.
CMAKE_ARGS+=	-DENABLE_GTK_DOC=OFF
# Don't build and install the tools
CMAKE_ARGS+=	-DENABLE_UTILS=OFF
# Don't compile poppler cpp wrapper.
CMAKE_ARGS+=	-DENABLE_CPP=OFF
# Don't compile poppler qt5 wrapper.
CMAKE_ARGS+=	-DENABLE_QT5=OFF
# Don't build libcurl based HTTP support. ## might want to include
CMAKE_ARGS+=	-DENABLE_LIBCURL=OFF

CFLAGS.FreeBSD+=	-DLLONG_MAX=__LLONG_MAX

# The result binary of g-ir-scanner cannot find libpoppler-glib.so.
MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/glib

BUILDLINK_API_DEPENDS.poppler+=     poppler-${POPPLER_VERS}{,nb*}
.include "../../print/poppler/buildlink3.mk"

INSTALL_DIRS=		glib

INSTALLATION_DIRS+=	lib/pkgconfig

post-install:
	${INSTALL_DATA} ${WRKSRC}/poppler-glib.pc ${DESTDIR}${PREFIX}/lib/pkgconfig

.include "../../lang/python/tool.mk"
BUILDLINK_ABI_DEPENDS.glib2+=	glib2>=2.41.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
#.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
