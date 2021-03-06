# $NetBSD: buildlink3.mk,v 1.13 2019/08/22 12:23:03 ryoon Exp $

BUILDLINK_TREE+=	netcdf-cxx

.if !defined(NETCDF_CXX_BUILDLINK3_MK)
NETCDF_CXX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.netcdf-cxx+=	netcdf-cxx>=4.2
BUILDLINK_ABI_DEPENDS.netcdf-cxx?=	netcdf-cxx>=4.2nb12
BUILDLINK_PKGSRCDIR.netcdf-cxx?=	../../devel/netcdf-cxx

.include "../../devel/netcdf/buildlink3.mk"
.endif	# NETCDF_CXX_BUILDLINK3_MK

BUILDLINK_TREE+=	-netcdf-cxx
