#Problem:
#OpenSSL SSL_CONNECT: Connection Was Reset in Connection To Github.com:443

#How to Fix SSL certificate error when want to push to GitHub using git bash?



#Resolve:

#1. Launch Git Bash console 
  #  Git CMD [by clicking on the Start button, type git, and click on Git CMD. ]  
  #or    CMD [clicking on the Start button and] type CMD 
  
#2. Run following Git Config Command:  
git config --global http.sslBackend schannel


 
