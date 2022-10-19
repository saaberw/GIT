<p align="center">
  <a href="https://git-scm.com/">
    <img src="https://git-scm.com/images/logo@2x.png" alt="logo" width="128" height="64">
  </a>

  <h3 align="center">Git Bash SSL Error Resolving</h3>
  
   
</p>
<br>


## Problem:

I am trying to clone a repository using git bash or cmd on Windows 10. 
But when i do git clone it says:

```
"fatal: unable to access 'https://********.com/****/******.git/': 
 SSL certificate problem: unable to get local issuer certificate".
 ```

OpenSSL SSL_connect: Connection was reset in connection to github.com:443

## Quick start

#How to Fix `SSL certificate error` when want to push to GitHub using `git bash`?


You can fix the error by giving your SSL certificate. You can do this by either:

-Editing your Git config file (in Linux `~/.gitconfig`) and add:
```
[http]
	sslBackend = schannel
      
	sslCAInfo = C:\\Program Files\\Git\\mingw64\\ssl\\cert.pem
	sslVerify = false
```	

or:

-Executing the following command:
```
git config --global http.sslBackend schannel
```



#Once you have configured this, Git will use the Windows certificate store
      and should not require (and, in fact, should ignore) the http.sslCAInfo configuration setting.

#Beginning with Git for Windows 2.14, you can now configure Git to use SChannel, the built-in Windows networking layer.
This means that it will use the Windows certificate storage mechanism and you do not need to explicitly configure the curl CA storage mechanism.

#It is now possible to switch between Secure Channel and OpenSSL for Git's HTTPS transport by setting the http.sslBackend config variable to "openssl" or "schannel"; This is now also the method used by the installer (rather than copying libcurl-4.dll files around).


## More info

##You can choose the new SChannel mechanism during the installation of Git for Windows 2.14. You can also update an existing installation to use SChannel by running:

git config --global http.sslBackend schannel

#Once you have configured this, Git will use the Windows certificate store and should not require (and, in fact, should ignore) the http.sslCAInfo configuration setting.

