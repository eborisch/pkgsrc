# $NetBSD$

GITHUB_PROJECT=	pydicom
DISTNAME=	v1.2.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=pydicom/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=     eborisch@gmail.com
HOMEPAGE=       https://github.com/pydicom/pydicom/
COMMENT=        Pure python package for working with DICOM files
LICENSE=        modified-bsd AND mit

WRKSRC=		${WRKDIR}/pydicom-1.2.0
USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
