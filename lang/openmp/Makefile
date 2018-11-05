# $NetBSD: Makefile,v 1.14 2018/08/09 13:51:42 jperkin Exp $

DISTNAME=	openmp-6.0.1.src
PKGNAME=	${DISTNAME:S/.src//}
CATEGORIES=	lang devel
MASTER_SITES=	http://llvm.org/releases/${PKGVERSION_NOREV}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://openmp.llvm.org/
COMMENT=	LLVM openmp
LICENSE=	modified-bsd OR mit

CONFIGURE_DIRS=		${WRKDIR}/build

USE_CMAKE=		yes
USE_LANGUAGES=		c c++11
USE_TOOLS+=		perl
SSP_SUPPORTED=		no

CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
CMAKE_ARGS+=	-DCMAKE_C_COMPILER=${CC:Q}
CMAKE_ARGS+=	-DCMAKE_CXX_COMPILER=${CXX:Q}
#CMAKE_ARGS+=	-DCMAKE_INSTALL_RPATH=${PREFIX}/lib/libomp
#CMAKE_ARGS+=	-DCMAKE_INSTALL_NAME_DIR=${PREFIX}/lib/libomp


CMAKE_ARG_PATH=	${WRKSRC}

INSTALLATION_DIRS=	include

INCDIR=			${PREFIX}/include/libomp
INSTALLATION_DIRS+=	${INCDIR}
LIBDIR=			${PREFIX}/lib/libomp
INSTALLATION_DIRS+=	${LIBDIR}

post-install:
	cd ${DESTDIR} && ${MV} .${PREFIX}/include/omp* .${INCDIR}
	cd ${DESTDIR} && ${MV} .${PREFIX}/lib/*.so .${LIBDIR}

post-extract:
	${RUN} mkdir -p ${WRKDIR}/build


BUILDLINK_DEPMETHOD.llvm=	build
#.include "../../devel/libelf/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
