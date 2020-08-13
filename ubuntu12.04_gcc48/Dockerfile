# 原始镜像 自带python2.7
FROM ubuntu:12.04

# # DEBIAN_FRONTEND环境变量，告知操作系统应该从哪儿获得用户输入。
# # 如果设置为"noninteractive"，你就可以直接运行命令，而无需向用户请求输入（所有操作都是非交互式的）
# ENV DEBIAN_FRONTEND noninteractive

# 更新国内163源

COPY ./doc /root/

# 安装:
# gcc4.8.4 
# g++4.8.4 
# cmake3.5.1
# pip2 20.2.2
# python3.5 
# pip3 20.2.2
# 解决python和echo均不能打印中文问题
RUN cd / \
 && cp /etc/apt/sources.list /etc/apt/sources.list.bk \
 && cp /root/sources.list.precise /etc/apt/sources.list \
 && mkdir ~/.pip/ \
 && cp /root/pip.conf.precise ~/.pip/pip.conf \
 && apt-get update \
 && apt-get install -f -y \
    wget \
    python-software-properties \
    apt-file \
 && apt-file update \
 && apt-file search add-apt-repository \
 && apt-get install -f -y software-properties-common \
 && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
 && apt-get update \
 && apt-get install -f -y \
    gcc-4.8 \
    g++-4.8 \
 && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50 \
 && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50 \
 && cd /root \
 && tar -xzvf cmake-3.5.1.tar.gz \
 && cd cmake-3.5.1/ \
 && ./bootstrap \
 && make -j4 \
 && make install \
 && add-apt-repository -y ppa:fkrull/deadsnakes \
 && apt-get update \
 && apt-get install -f -y \
    python3.5 \
 && ln -s /usr/bin/python3.5 /usr/bin/python3 \
 && python3.5 /root/get-pip.py \
 && python2.7 /root/get-pip.py \
 && cd /usr/share/locales/ \
 && ./install-language-pack en_US \
 && ./install-language-pack zh_CN \
 && echo 'export LANG="zh_CN.UTF-8"'>>~/.bashrc \
 && add-apt-repository -r -y ppa:ubuntu-toolchain-r/test \
 && add-apt-repository -r -y ppa:fkrull/deadsnakes \
 && rm \
    /root/sources.list.precise \
    /root/pip.conf.precise \
    /root/get-pip.py \
    /root/cmake-3.5.1.tar.gz \
 && rm -rf \ 
    /root/cmake-3.5.1/ \
    /var/lib/apt/lists/* \
 && cd / 

CMD ["/bin/bash"]

