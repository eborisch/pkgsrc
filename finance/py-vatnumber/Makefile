# $NetBSD: Makefile,v 1.13 2019/11/02 16:08:48 rillig Exp $

DISTNAME=		vatnumber-1.2
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		finance python
MASTER_SITES=		${MASTER_SITE_PYPI:=v/vatnumber/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://pypi.python.org/pypi/vatnumber/
COMMENT=		Python module to validate VAT numbers
LICENSE=		gnu-gpl-v3

DEPENDS+=		${PYPKGPREFIX}-stdnum-[0-9]*:../../misc/py-stdnum

PYTHON_VERSIONS_ACCEPTED=	27 # py-simplesoap via py-stdnum

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
