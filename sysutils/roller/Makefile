# $NetBSD: Makefile,v 1.42 2019/08/11 13:23:16 wiz Exp $
#

DISTNAME=		roller-1.20
PKGREVISION=		8
CATEGORIES=		sysutils
MASTER_SITES=		http://oss.gw.com/people/kim/

MAINTAINER=		kim@tac.nyc.ny.us
COMMENT=		Roll log files

DEPENDS+=		cpogm-[0-9]*:../../sysutils/cpogm
DEPENDS+=		logtime-[0-9]*:../../time/logtime
DEPENDS+=		pflogsumm-[0-9]*:../../sysutils/pflogsumm

.include "../../mk/bsd.prefs.mk"

NO_CONFIGURE=		yes
USE_TOOLS+=		perl:run

BUILD_MAKE_FLAGS+=	PREFIX=${PREFIX}
INSTALL_MAKE_FLAGS+=	PREFIX=${DESTDIR}${PREFIX}

MAKE_FLAGS+=		GAWK=${AWK}
MAKE_FLAGS+=		PERL=${PERL5}
MAKE_FLAGS+=		SH=${SH}

.include "../../mk/bsd.pkg.mk"
