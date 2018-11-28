$NetBSD: patch-src_mpid_ch3_channels_nemesis_src_ch3__init.c,v 1.1 2017/04/29 18:18:52 adam Exp $

Use pthread_mutexattr_setpshared() only when available.

--- src/mpid/ch3/channels/nemesis/src/ch3_init.c.orig    2018-11-21 11:22:29.000000000 -0600
+++ src/mpid/ch3/channels/nemesis/src/ch3_init.c 2018-11-27 14:20:00.567584748 -0600
@@ -68,6 +68,7 @@

 int MPIDI_CH3I_Shm_supported(void)
 {
+#ifdef _POSIX_THREAD_PROCESS_SHARED
     int mutex_err;
     pthread_mutexattr_t attr;

@@ -79,6 +80,9 @@
     pthread_mutexattr_destroy(&attr);

     return !mutex_err;
+#else
+    return 0;
+#endif
 }

 static MPIR_Commops comm_fns = {
