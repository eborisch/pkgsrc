# $NetBSD: Makefile,v 1.9 2019/10/01 21:30:04 rillig Exp $

DISTNAME=	cbindgen-0.9.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=eqrion/}
GITHUB_PROJECT=	cbindgen
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/eqrion/cbindgen/releases
COMMENT=	Generating C bindings from Rust code
LICENSE=	mpl-2.0

CARGO_CRATE_DEPENDS+=	\
	ansi_term-0.11.0 \
	atty-0.2.11 \
	autocfg-0.1.4 \
	bitflags-1.1.0 \
	cfg-if-0.1.9 \
	clap-2.33.0 \
	cloudabi-0.0.3 \
	fuchsia-cprng-0.1.1 \
	fuchsia-zircon-0.3.3 \
	fuchsia-zircon-sys-0.3.3 \
	itoa-0.4.4 \
	libc-0.2.58 \
	log-0.4.6 \
	numtoa-0.1.0 \
	proc-macro2-1.0.0 \
	quote-1.0.0 \
	rand-0.6.5 \
	rand_chacha-0.1.1 \
	rand_core-0.3.1 \
	rand_core-0.4.0 \
	rand_hc-0.1.0 \
	rand_isaac-0.1.1 \
	rand_jitter-0.1.4 \
	rand_os-0.1.3 \
	rand_pcg-0.1.2 \
	rand_xorshift-0.1.1 \
	rdrand-0.4.0 \
	redox_syscall-0.1.54 \
	redox_termios-0.1.1 \
	remove_dir_all-0.5.2 \
	rustc_version-0.2.3 \
	ryu-0.2.8 \
	semver-0.9.0 \
	semver-parser-0.7.0 \
	serde-1.0.93 \
	serde_derive-1.0.99 \
	serde_json-1.0.39 \
	strsim-0.8.0 \
	syn-1.0.1 \
	tempfile-3.0.8 \
	termion-1.5.3 \
	textwrap-0.11.0 \
	toml-0.5.1 \
	unicode-width-0.1.5 \
	unicode-xid-0.2.0 \
	vec_map-0.8.1 \
	winapi-0.3.7 \
	winapi-i686-pc-windows-gnu-0.4.0 \
	winapi-x86_64-pc-windows-gnu-0.4.0

INSTALLATION_DIRS=	bin

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PREFIX}/bin/cargo build --locked --frozen --release

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/cbindgen ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../lang/rust/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
