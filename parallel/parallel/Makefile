# $NetBSD: Makefile,v 1.15 2019/10/31 22:57:37 mef Exp $
#

DISTNAME=	parallel-20190922
CATEGORIES=	parallel
MASTER_SITES=	${MASTER_SITE_GNU:=parallel/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	cheusov@NetBSD.org
HOMEPAGE=	http://savannah.gnu.org/projects/parallel/
COMMENT=	Build and execute shell commands in parallel
LICENSE=	gnu-gpl-v3

USE_TOOLS+=	perl:run pod2man pod2html

REPLACE_PERL+=	src/parallel src/niceload src/sem src/sem.pod src/sql src/parcat
REPLACE_SH+=	src/env_parallel src/parset

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none

DOCDIR=		${PREFIX}/share/doc/parallel
DOCFILES=	NEWS README COPYING

CHECK_INTERPRETER_SKIP+=	bin/env_parallel.*

post-install:
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DESTDIR}${DOCDIR}/
.endfor

.include "../../mk/bsd.pkg.mk"
