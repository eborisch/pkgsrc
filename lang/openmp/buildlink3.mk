# $NetBSD: buildlink3.mk,v 1.4 2018/01/07 13:04:19 rillig Exp $

BUILDLINK_TREE+=	openmp

.if !defined(OPENMP_BUILDLINK3_MK)
OPENMP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openmp+=	openmp>=6.0.1
BUILDLINK_PKGSRCDIR.openmp?=		../../lang/openmp

.include "../../lang/llvm/buildlink3.mk"
.endif	# OPENMP_BUILDLINK3_MK

BUILDLINK_TREE+=	-openmp
