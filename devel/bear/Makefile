# $NetBSD: $

DISTNAME=	Bear-2.3.13
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=rizsotto/}
GITHUB_PROJECT=	Bear

MAINTAINER=	eborisch@gmail.com
HOMEPAGE=	https://github.com/rizsotto/Bear
COMMENT=	Tool for generating a compilation database for clang tooling
LICENSE=	gnu-gpl-v3

USE_LANGUAGES+=	c99
USE_TOOLS+=	cmake
USE_CMAKE=	yes

DEPENDS+=      python37-[0-9]*:../../lang/python37

SUBST_CLASSES+=		fix-paths
SUBST_STAGE.fix-paths=	pre-configure
SUBST_FILES.fix-paths=	bear/main.py.in
SUBST_SED.fix-paths=	-e 's,/usr/bin/env python,${PREFIX}/bin/python2.7,'

.include "../../mk/bsd.pkg.mk"
