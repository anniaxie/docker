# docker说明
用于存放自己写的多种镜像

<!-- TOC -->
- [docker说明](#docker说明)
  - [ubuntu1204_gcc48](#ubuntu1204_gcc48)
  - [ubuntu1604_gcc48](#ubuntu1604_gcc48)

## ubuntu1204_gcc48

* 基础镜像: ubunt:12.04 自带python2.7   

* 安装内容： 
  * apt源：163
  * pip源：清华和阿里云
  * gcc 4.8.4
  * g++ 4.8.4
  * cmake 3.5.1
  * python3.5
  * pip2 20.2.2
  * pip3 20.2.2
  * 解决locale 不支持中文问题（即python中print打印不了中文）
  * wget
  * python-software-properties 
  * apt-file


## ubuntu1604_gcc48

* 基础镜像: ubunt:16.04 

* 安装内容： 
  * apt源：清华
  * pip源：清华和阿里云
  * gcc 5.4.0
  * g++ 5.4.0
  * cmake 3.5.1
  * python2.7.12
  * python3.5.2
  * pip2 20.2.2
  * pip3 20.2.2
  * locales
  * 解决locale 不支持中文问题（即python中print打印不了中文）
