# $NetBSD: Makefile,v 1.21 2019/11/09 12:02:29 nia Exp $

DISTNAME=		fish-3.0.2
CATEGORIES=		shells
MASTER_SITES=		${MASTER_SITE_GITHUB:=fish-shell/}
GITHUB_PROJECT=		fish-shell

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.fishshell.com/
COMMENT=		User friendly command line shell for UNIX-like operating systems
LICENSE=		gnu-gpl-v2

EXTRACT_USING=		gtar

WRKSRC=			${WRKDIR}/fish-shell-${PKGVERSION_NOREV}

USE_LANGUAGES+=		c c++03
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
USE_TOOLS+=		gmake autoreconf autoconf automake
USE_TOOLS+=		msgfmt

EGDIR=			${PREFIX}/share/examples
INSTALL_ENV+=		EGDIR=${EGDIR}

PKG_SHELL=		bin/fish

REPLACE_PYTHON+=	share/tools/*.py
REPLACE_PYTHON+=	share/tools/web_config/webconfig.py

LDFLAGS.SunOS+=		-lintl

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" && exists(/usr/include/execinfo.h)
CPPFLAGS+=		-DHAVE_BACKTRACE
CPPFLAGS+=		-DHAVE_BACKTRACE_SYMBOLS
CXXFLAGS.NetBSD+=	-fpermissive
LDFLAGS+=		-lexecinfo
.endif

# Upstream intentionally omits open.1 on Darwin
PLIST_VARS+=	open
.if ${OPSYS} != "Darwin"
PLIST.open=	yes
.endif

pre-configure:
	${RUN} cd ${WRKSRC} && autoreconf -fiv

.include "options.mk"

.include "../../devel/pcre2/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gettext-tools/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
