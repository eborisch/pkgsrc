# $NetBSD: Makefile,v 1.26 2019/09/02 13:19:37 adam Exp $

DISTNAME=		InlineEgg-1.08
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		devel
MASTER_SITES=		http://oss.corest.com/repo/

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		http://oss.corest.com/projects/inlineegg.html
COMMENT=		Python module for writing inline assembler programs
LICENSE=		inlineegg-license

REPLACE_PYTHON=		examples/example1.py examples/example2.py \
				examples/example3.py examples/example4.py \
				examples/example5.py examples/example6.py \
				xored_shell_client.py

PYTHON_SELF_CONFLICT=		yes
PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 1.08

INSTALLATION_DIRS=	share/doc/InlineEgg share/examples/InlineEgg

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/InlineEgg
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
		${DESTDIR}${PREFIX}/share/examples/InlineEgg

.include "../../lang/python/application.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
