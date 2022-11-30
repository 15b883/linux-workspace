由于工作原因，笔记本内网无法按照一些软件

有时候本地环境安装负责，需要一个干净的Linux环境来测试



本地测试


```
docker build -t cnetos:7.9 .
```

连接到Linux环境（容器）


```
ssh root@localhost -p 22
```



Dockerflie

```dockerfile
# Docker for CentOS
#Base image
FROM centos:7.9.2009

#Who
MAINTAINER 15b883 

#EPEL
RUN  curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo && yum makecache

#Base pkg
RUN yum install -y openssh-clients openssl-devel openssh-server nmap tree dos2unix nc telnet wget git htop net-tools gcc gcc-c++ vim iproute2 zip unzip iotop lsof bind-utils && yum clean all

#

# For SSHD
RUN ssh-keygen -t rsa -b 4096 -P '' -f ~/.ssh/id_rsa > /dev/null 2>&1
RUN 
RUN echo "root:123456" | chpasswd

```

