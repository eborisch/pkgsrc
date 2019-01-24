# $NetBSD$

GITHUB_PROJECT=	dcmtk
DISTNAME=	DCMTK-3.6.4
PKGNAME=	dcmtk-3.6.4
CATEGORIES=	biology graphics
MASTER_SITES=	-https://github.com/DCMTK/dcmtk/archive/${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	eborisch@gmail.com
HOMEPAGE=	https://dicom.offis.de/dcmtk.php.en
COMMENT=	Libraries and tools for working with DICOM files
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${DISTNAME}
USE_CMAKE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++0x

USE_BUILTIN.iconv= no

.include "options.mk"

CMAKE_ARGS+=	-DDCMTK_WITH_DOXYGEN=OFF
CMAKE_ARGS+=	-DDCMTK_WITH_SNDFILE=OFF
CMAKE_ARGS+=	-DDCMTK_WITH_WRAP=OFF
CMAKE_ARGS+=	-DDCMTK_ENABLE_BUILTIN_DICTIONARY=ON

PLIST_VARS+=	shared static

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
