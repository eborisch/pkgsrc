# $NetBSD: Makefile,v 1.2 2019/11/04 19:58:09 rillig Exp $

DISTNAME=	vntex
PKGNAME=	tex-${DISTNAME}-3.2
TEXLIVE_REV=	30579

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Support for Vietnamese
# LICENSE=	other-free

TEX_MAP_FILES+=		arevvn.map
TEX_MAP_FILES+=		chartervn.map
TEX_MAP_FILES+=		cmbrightvn.map
TEX_MAP_FILES+=		concretevn.map
TEX_MAP_FILES+=		grotesqvn.map
TEX_MAP_FILES+=		txttvn.map
TEX_MAP_FILES+=		urwvn.map
TEX_MIXEDMAP_FILES+=	vnrother.map
TEX_MIXEDMAP_FILES+=	vnrtext.map
TEX_MAP_FILES+=		vntopia.map

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
