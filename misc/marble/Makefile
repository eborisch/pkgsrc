# $NetBSD: Makefile,v 1.45 2019/11/03 17:04:24 rillig Exp $

DISTNAME=	marble-${_KDE_VERSION}
PKGREVISION=	14
CATEGORIES=	misc
COMMENT=	KDE desktop globe

# .../src/apps/marble-kde/marble_part.cpp:106:10: fatal error: 'settings.h' file not found
MAKE_JOBS_SAFE=	no

.include "../../meta-pkgs/kde4/Makefile.kde4"

CMAKE_ARGS+=	-DWITH_libgps:BOOL=OFF

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
