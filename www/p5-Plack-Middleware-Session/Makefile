# $NetBSD: Makefile,v 1.20 2019/11/04 22:10:08 rillig Exp $

DISTNAME=	Plack-Middleware-Session-0.30
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Plack/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Plack-Middleware-Session
COMMENT=	Plack middleware for session management
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Plack/Middleware/Session/.packlist

PERL5_MODULE_TYPE=	Module::Build::Tiny

DEPENDS+=	p5-Digest-SHA1-[0-9]*:../../security/p5-Digest-SHA1
DEPENDS+=	p5-Plack>=0.9910:../../www/p5-Plack
DEPENDS+=	p5-Cookie-Baker>=0:../../www/p5-Cookie-Baker

BUILD_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal
BUILD_DEPENDS+=	p5-Test-Exception-[0-9]*:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	p5-Test-Requires-[0-9]*:../../devel/p5-Test-Requires

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
