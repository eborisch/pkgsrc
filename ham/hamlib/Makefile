# $NetBSD: Makefile,v 1.45 2019/11/03 19:32:07 rillig Exp $
#

DISTNAME=	hamlib-${VERSION}
# V.rcN, VrcN, V~rcN
VERSION=	3.3
VERSIOND=	${VERSION}
VERSIONF=	${VERSION}
PKGREVISION=	2
CATEGORIES=	ham
MASTER_SITES=	https://github.com/Hamlib/Hamlib/releases/download/${VERSIOND}/
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hamlib/}
WRKSRC=		${WRKDIR}/hamlib-${VERSIONF}

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://hamlib.sourceforge.net/
COMMENT=	API for digital communications equipment
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake
GNU_CONFIGURE=	yes
INFO_FILES=	yes
USE_LIBTOOL=	yes

# \todo Consider language bindings.
CONFIGURE_ARGS+=	--without-tcl-binding \
			--without-perl-binding \
			--without-python-binding

.include "../../mk/bsd.prefs.mk"

TEST_TARGET=	check

.include "../../devel/libusb1/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
