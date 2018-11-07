# $NetBSD$

GITHUB_PROJECT=	HDF5-External-Filter-Plugins
DISTNAME=	v0.1.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=nexusformat/}
EXTRACT_SUFX=	.zip
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	eborisch@gmail.com
HOMEPAGE=	https://github.com/nexusformat/HDF5-External-Filter-Plugins/
COMMENT=	TODO: Short description of the package
LICENSE=	original-bsd

WRKSRC=		${WRKDIR}/HDF5-External-Filter-Plugins-0.1.0
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS+=	-DENABLE_BZIP2_PLUGIN=ON
CMAKE_ARGS+=	-DENABLE_LZ4_PLUGIN=ON
CMAKE_ARGS+=	-DENABLE_BITSHUFFLE_PLUGIN=ON

SUBST_CLASSES+=         fix-paths
SUBST_STAGE.fix-paths=  pre-configure
SUBST_FILES.fix-paths=  ${WRKSRC}/CMakeLists.txt
SUBST_SED.fix-paths=    -r -e 's,(set.*CMAKE_INSTALL_PLUGINDIR.*)plugins,\1hdf5,'

DOCDIR=                 share/doc/${PKGBASE}
PLIST_SUBST+=           DOCDIR=${DOCDIR:Q}
INSTALLATION_DIRS+=     ${DOCDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/resources/LICENSE.txt ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../archivers/lz4/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
