# $NetBSD: Makefile,v 1.20 2019/08/22 12:23:45 ryoon Exp $

MODNAME=		oauth
PECL_VERSION=		2.0.1
CATEGORIES+=		security

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		PHP oauth consumer extension
PKGREVISION=		11
LICENSE=		modified-bsd

PHP_VERSIONS_ACCEPTED=	71 72

USE_LANGUAGES=		c c++

CONFIGURE_ARGS+=	--with-curl=${BUILDLINK_PREFIX.curl}

.include "../../lang/php/ext.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
