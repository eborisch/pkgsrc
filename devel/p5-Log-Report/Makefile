# $NetBSD: Makefile,v 1.34 2019/10/22 06:32:21 mef Exp $

DISTNAME=	Log-Report-1.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Log/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Log-Report
COMMENT=	Report a problem, pluggable handlers, and language support
LICENSE=	${PERL5_LICENSE}

TEST_DEPENDS+=	p5-Test-Pod>=1.00:../../devel/p5-Test-Pod
TEST_DEPENDS+=	p5-Devel-GlobalDestruction>=0.09:../../devel/p5-Devel-GlobalDestruction

# Followng two to be source expanded at test time
BUILD_DEPENDS+=	p5-Log-Report-Optional>=1.03:../../devel/p5-Log-Report-Optional
BUILD_DEPENDS+=	p5-Mojolicious-[0-9]*:../../www/p5-Mojolicious

PERL5_PACKLIST=		auto/Log/Report/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
