$NetBSD: patch-setup.py,v 1.2 2019/01/08 08:37:59 adam Exp $

Find libsqlite3.

--- setup.py.orig	2018-08-16 18:40:47.000000000 +0000
+++ setup.py
@@ -73,8 +73,9 @@ def _have_sqlite_extension_support():
     success = False
     try:
         compiler.link_executable(
-            compiler.compile([src_file], output_dir=tmp_dir),
+            compiler.compile([src_file], output_dir=tmp_dir, include_dirs=['@BUILDLINK_PREFIX.sqlite3@/include']),
             bin_file,
+            library_dirs=['@BUILDLINK_PREFIX.sqlite3@/lib'],
             libraries=['sqlite3'])
     except CCompilerError:
         print('unable to compile sqlite3 C extensions - missing headers?')
