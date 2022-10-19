# GIT
GIT info
#Once you have configured this, Git will use the Windows certificate store
      and should not require (and, in fact, should ignore) the http.sslCAInfo configuration setting.

#Beginning with Git for Windows 2.14, you can now configure Git to use SChannel, the built-in Windows networking layer.
This means that it will use the Windows certificate storage mechanism and you do not need to explicitly configure the curl CA storage mechanism.

#It is now possible to switch between Secure Channel and OpenSSL for Git's HTTPS transport by setting the http.sslBackend config variable to "openssl" or "schannel"; This is now also the method used by the installer (rather than copying libcurl-4.dll files around).




