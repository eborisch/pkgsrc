# $NetBSD: Makefile,v 1.3 2017/09/16 19:27:02 wiz Exp $
TRYTON_MODULE_NAME=	trytond_project_revenue
.include "../../devel/py-trytond/Makefile.common"
CATEGORIES=	misc python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.tryton.org/
COMMENT=	Project revenue module of the Tryton application platform
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-python-sql>=0.4:../../databases/py-python-sql
DEPENDS+=	${PYPKGPREFIX}-trytond-project>=${TRYTON_BASEVER}:../../misc/py-trytond-project
#projrev
DEPENDS+=	${PYPKGPREFIX}-trytond-timesheet>=${TRYTON_BASEVER}:../../time/py-trytond-timesheet
DEPENDS+=	${PYPKGPREFIX}-trytond-timesheet-cost>=${TRYTON_BASEVER}:../../time/py-trytond-timesheet-cost
DEPENDS+=	${PYPKGPREFIX}-trytond-company>=${TRYTON_BASEVER}:../../misc/py-trytond-company
DEPENDS+=	${PYPKGPREFIX}-trytond-product>=${TRYTON_BASEVER}:../../misc/py-trytond-product
DEPENDS+=	${PYPKGPREFIX}-trytond>=${TRYTON_BASEVER}:../../devel/py-trytond

USE_LANGUAGES=	# none

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
