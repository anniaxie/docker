# 原始镜像
FROM ubuntu:16.04

# # DEBIAN_FRONTEND环境变量，告知操作系统应该从哪儿获得用户输入。
# # 如果设置为"noninteractive"，你就可以直接运行命令，而无需向用户请求输入（所有操作都是非交互式的）
# ENV DEBIAN_FRONTEND noninteractive

# 更新清华源

COPY ./doc /root/

# 安装:
# gcc5.4.0
# g++5.4.0
# cmake3.5.1 
# python2.7.12
# pip2 20.2.2
# python3.5.2 
# pip3 20.2.2
# 解决python和echo均不能打印中文问题
# 解决本机和docker内时间差相差8h问题
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bk \
 && cp /root/sources.list.xenial /etc/apt/sources.list \
 && mkdir ~/.pip/ \
 && cp /root/pip.conf.xenial ~/.pip/pip.conf \
 && apt-get update \
 && apt-get install -f -y \
    python \
    python3 \
    cmake \
    g++ \
    locales \
    tzdata \
 && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && python3.5 /root/get-pip.py \
 && python2.7 /root/get-pip.py \
 && locale-gen en_US.UTF-8 \
 && locale-gen zh_CN.UTF-8 \
 && echo 'export LANG="zh_CN.UTF-8"'>>~/.bashrc \    
 && rm -rf /var/lib/apt/lists/* \
    /root/sources.list.xenial \
    /root/pip.conf.xenial \
    /root/get-pip.py \
 && cd / 

CMD ["/bin/bash"]

