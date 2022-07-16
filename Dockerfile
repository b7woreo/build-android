FROM ubuntu:20.04

WORKDIR /root/android
VOLUME /root/android

RUN apt-get update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev

COPY ./rootfs /

ENV REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'

ENV USE_CCACHE=1
ENV CCACHE_EXEC=/usr/bin/ccache
RUN echo 'ccache -M 50G\nccache -o compression=true\n' >> /root/.bashrc