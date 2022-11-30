# Docker for CentOS

#Base image
FROM centos:7.9.2009

#Who
MAINTAINER 15b883 

#EPEL
RUN  curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo && yum makecache

#Base pkg
RUN yum install -y openssh-clients openssl-devel openssh-server nmap tree dos2unix nc telnet wget git htop net-tools gcc gcc-c++ vim iproute2 zip unzip iotop lsof bind-utils && yum clean all

# For SSHD
RUN ssh-keygen -t rsa -b 4096 -P '' -f ~/.ssh/id_rsa > /dev/null 2>&1
RUN 
RUN echo "root:123456" | chpasswd
