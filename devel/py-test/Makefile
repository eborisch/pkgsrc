# $NetBSD: Makefile,v 1.86 2019/10/22 13:21:49 adam Exp $

DISTNAME=	pytest-4.6.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pytest/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pytest.org/
COMMENT=	Python testing tool
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-atomicwrites>=1.0:../../devel/py-atomicwrites
DEPENDS+=	${PYPKGPREFIX}-attrs>=17.4.0:../../devel/py-attrs
DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat
DEPENDS+=	${PYPKGPREFIX}-more-itertools>=4.0.0:../../devel/py-more-itertools
DEPENDS+=	${PYPKGPREFIX}-packaging-[0-9]*:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-pluggy>=0.12:../../devel/py-pluggy
DEPENDS+=	${PYPKGPREFIX}-py>=1.5.0:../../devel/py-py
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-wcwidth-[0-9]*:../../devel/py-wcwidth
BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm-[0-9]*:../../devel/py-setuptools_scm
TEST_DEPENDS+=	${PYPKGPREFIX}-argcomplete-[0-9]*:../../devel/py-argcomplete
TEST_DEPENDS+=	${PYPKGPREFIX}-hypothesis>=3.56:../../devel/py-hypothesis
TEST_DEPENDS+=	${PYPKGPREFIX}-nose-[0-9]*:../../devel/py-nose
TEST_DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} == 27
DEPENDS+=	${PYPKGPREFIX}-funcsigs>=1.0:../../devel/py-funcsigs
DEPENDS+=	${PYPKGPREFIX}-pathlib2>=2.2.0:../../devel/py-pathlib2
TEST_DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
.endif
.if ${_PYTHON_VERSION} < 38
DEPENDS+=	${PYPKGPREFIX}-importlib-metadata>=0.12:../../devel/py-importlib-metadata
.endif

USE_LANGUAGES=	# none
USE_TOOLS+=	bash:build

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} py.test py.test-${PYVERSSUFFIX} && \
	${MV} pytest pytest-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC}/testing && pytest-${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
