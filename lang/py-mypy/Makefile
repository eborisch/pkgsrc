# $NetBSD: Makefile,v 1.12 2019/10/18 12:28:37 adam Exp $

DISTNAME=	mypy-0.740
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	lang python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/mypy/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.mypy-lang.org/
COMMENT=	Optional static typing for Python
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-mypy_extensions>=0.4.0:../../lang/py-mypy_extensions
DEPENDS+=	${PYPKGPREFIX}-typed-ast>=1.4.0:../../devel/py-typed-ast
DEPENDS+=	${PYPKGPREFIX}-typing-extensions>=3.7.4:../../devel/py-typing-extensions

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

REPLACE_PYTHON=	mypy/typeshed/tests/*.py

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} dmypy dmypy-${PYVERSSUFFIX} && \
	${MV} mypy mypy-${PYVERSSUFFIX} && \
	${MV} stubgen stubgen-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
