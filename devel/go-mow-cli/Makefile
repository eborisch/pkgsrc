# $NetBSD: Makefile,v 1.20 2019/10/18 14:58:44 bsiegert Exp $

DISTNAME=	go-mow-cli-0.0.20160221
PKGREVISION=	18
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=jawher/}
GITHUB_PROJECT=	mow.cli
GITHUB_TAG=	772320464101e904cd51198160eb4d489be9cc49

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/jawher/mow.cli
COMMENT=	Versatile library for building CLI applications in Go
LICENSE=	mit

WRKSRC=		${WRKDIR}
GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/jawher/mow.cli

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
