# $NetBSD: Makefile,v 1.3 2018/03/18 14:21:20 taca Exp $

DISTNAME=	activejob-${RAILS_VERSION}
PKGNAME=	${RUBY_PKGPREFIX}-activejob${RUBY_RAILS}-${RAILS_VERSION}
CATEGORIES=	devel

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Job classes that can be run by a variety of queueing backends
LICENSE=	mit

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-globalid>=0.3.0:../../devel/ruby-globalid

RUBY_RAILS_ACCEPTED=	42
RUBY_RAILS_STRICT_DEP=	yes

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
