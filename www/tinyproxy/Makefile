# $NetBSD: Makefile,v 1.40 2019/05/23 19:23:21 rillig Exp $

DISTNAME=	tinyproxy-1.10.0
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GITHUB:=tinyproxy/}
GITHUB_RELEASE=	${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tinyproxy.github.io/
COMMENT=	Lightweight HTTP/SSL proxy
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=		asciidoc-[0-9]*:../../textproc/asciidoc
BUILD_DEFS+=		VARBASE

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-config=${PKG_SYSCONFDIR}/tinyproxy.conf
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--enable-transparent-proxy

RCD_SCRIPTS=		tinyproxy

.include "../../mk/bsd.prefs.mk"

TINYPROXY_USER?=	tinyproxy
TINYPROXY_GROUP?=	tinyproxy
PKG_GROUPS=		${TINYPROXY_GROUP}
PKG_USERS=		${TINYPROXY_USER}:${TINYPROXY_GROUP}
PKG_GROUPS_VARS+=	TINYPROXY_GROUP
PKG_USERS_VARS=		TINYPROXY_USER
FILES_SUBST+=		TINYPROXY_USER=${TINYPROXY_USER:Q}
FILES_SUBST+=		TINYPROXY_GROUP=${TINYPROXY_GROUP:Q}

EGDIR=		${PREFIX}/share/examples/tinyproxy
CONF_FILES=	${EGDIR}/tinyproxy.conf.default ${PKG_SYSCONFDIR}/tinyproxy.conf

SUBST_CLASSES+=		docs
SUBST_STAGE.docs=	pre-configure
SUBST_FILES.docs=	docs/man5/tinyproxy.conf.txt.in docs/man8/tinyproxy.txt.in etc/tinyproxy.conf.in
SUBST_VARS.docs=	TINYPROXY_USER
SUBST_VARS.docs+=	TINYPROXY_GROUP
SUBST_VARS.docs+=	PKG_SYSCONFDIR
SUBST_VARS.docs+=	VARBASE

INSTALLATION_DIRS=	${EGDIR} share/doc/tinyproxy

PLIST_SUBST+=		VARBASE=${VARBASE}
PLIST_SUBST+=		TINYPROXY_USER=${TINYPROXY_USER:Q}
PLIST_SUBST+=		TINYPROXY_GROUP=${TINYPROXY_GROUP:Q}
PLIST_SUBST+=		MKDIR=${MKDIR:Q} RMDIR=${RMDIR:Q} TRUE=${TRUE:Q}
PLIST_SUBST+=		CHMOD=${CHMOD:Q} CHOWN=${CHOWN:Q}

post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/tinyproxy.conf \
		${DESTDIR}${EGDIR}/tinyproxy.conf.default
	${INSTALL_DATA} ${WRKSRC}/docs/filter-howto.txt \
		${DESTDIR}${PREFIX}/share/doc/tinyproxy/

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
