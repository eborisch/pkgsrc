# $NetBSD: Makefile,v 1.10 2019/10/07 20:17:10 adam Exp $

DISTNAME=	tqdm-4.36.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	misc python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/tqdm/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/tqdm/tqdm
COMMENT=	Fast, extensible progress bar for Python
LICENSE=	mit

TEST_DEPENDS+=	${PYPKGPREFIX}-coverage-[0-9]*:../../devel/py-coverage
TEST_DEPENDS+=	${PYPKGPREFIX}-flake8-[0-9]*:../../devel/py-flake8
TEST_DEPENDS+=	${PYPKGPREFIX}-nose-[0-9]*:../../devel/py-nose

USE_LANGUAGES=	# none

INSTALLATION_DIRS+=	${PKGMANDIR}/man1

post-install:
	cd ${DESTDIR}${PREFIX} && \
	${MV} bin/tqdm bin/tqdm-${PYVERSSUFFIX} && \
	${MV} ${PYSITELIB}/tqdm/tqdm.1 ${PKGMANDIR}/man1/tqdm-${PYVERSSUFFIX}.1 || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
