# $NetBSD: buildlink3.mk,v 1.8 2019/08/11 13:17:49 wiz Exp $

BUILDLINK_TREE+=	superlu

.if !defined(SUPERLU_BUILDLINK3_MK)
SUPERLU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.superlu+=	superlu>=2.0nb2
BUILDLINK_ABI_DEPENDS.superlu?=	superlu>=3.0.1nb7
BUILDLINK_PKGSRCDIR.superlu?=	../../math/superlu
BUILDLINK_DEPMETHOD.superlu?=	build
.endif # SUPERLU_BUILDLINK3_MK

BUILDLINK_TREE+=	-superlu
